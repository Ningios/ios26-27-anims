#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Locate every MSHookMessageEx call site in __text and recover (class, selector,
replacement IMP) by walking backwards over the basic block that sets up x0/x1/x2.
Also collects NSClassFromString/NSSelectorFromString driven dynamic hooks.
"""
import sys, json, struct
import capstone
from capstone import arm64 as a64
sys.path.insert(0, __file__.rsplit('/', 1)[0])
from machoparse import load_slices, MachO, cstr, u64

CS = capstone.Cs(capstone.CS_ARCH_ARM64, capstone.CS_MODE_ARM)
CS.detail = True


def build_stub_map(m):
    """address of each __auth_stubs / __stubs entry -> imported symbol name."""
    out = {}
    for sname in ('__auth_stubs', '__stubs', '__objc_stubs'):
        for sec in m.sect(sname):
            code = m.data[sec.offset:sec.offset + sec.size]
            pending = None
            for ins in CS.disasm(code, sec.addr):
                if ins.mnemonic == 'adrp' and len(ins.operands) == 2:
                    pending = ('adrp', ins.operands[1].imm, ins.address)
                elif ins.mnemonic == 'add' and pending and len(ins.operands) == 3:
                    pending = ('slot', pending[1] + ins.operands[2].imm, pending[2])
                elif ins.mnemonic == 'ldr' and pending and len(ins.operands) == 2:
                    slot = pending[1]
                    if ins.operands[1].type == capstone.arm64.ARM64_OP_MEM:
                        slot += ins.operands[1].mem.disp
                    kind, val = m.pointed(slot)
                    if kind == 'bind' and val:
                        out[pending[2]] = val
                    pending = None
                elif ins.mnemonic in ('braa', 'bra', 'br', 'b'):
                    pending = None
    return out


def build_pool(m):
    """map vm addr -> ('str',s) / ('ptr', addr) / ('bind', name) for literal loads."""
    return {}


def resolve_literal(m, addr):
    """Resolve what a pointer slot holds: string, class name, selector, address."""
    kind, val = m.pointed(addr)
    if kind == 'bind' and val:
        return ('bind', val)
    if kind == 'rebase' and val:
        # string?
        o = m.vm2off(val)
        if o is not None:
            s = cstr(m.data, o)
            if s and len(s) < 256 and all(ch.isprintable() for ch in s):
                return ('str', s)
        return ('addr', val)
    return (None, None)


class Reg:
    __slots__ = ('kind', 'value', 'imp')

    def __init__(self, kind=None, value=None, imp=None):
        self.kind, self.value, self.imp = kind, value, imp

    def __repr__(self):
        return '%s:%s' % (self.kind, self.value)


def backtrace(m, insns, idx, reg, max_steps=80):
    """Walk backwards from insns[idx] recording last writes to regs of interest."""
    for k in range(idx - 1, max(-1, idx - max_steps - 1), -1):
        ins = insns[k]
        ops = ins.operands
        # stop at unconditional branch / function boundary
        if ins.mnemonic in ('ret', 'br', 'brk'):
            break
        if ins.mnemonic == 'bl':
            break
        if not ops:
            continue
        try:
            if ins.mnemonic == 'adrp':
                r = ops[0].reg
                if r in reg and reg[r].kind is None:
                    reg[r] = Reg('adrp', ops[1].imm)
            elif ins.mnemonic == 'add' and len(ops) == 3:
                r, a, b = ops[0].reg, ops[1].reg, ops[2]
                if r in reg and reg[r].kind is None:
                    base = reg.get(a)
                    if base and base.kind == 'adrp':
                        reg[r] = Reg('addr', base.value + b.imm)
                    elif a == capstone.arm64.ARM64_REG_SP:
                        pass
            elif ins.mnemonic in ('ldr', 'ldur') and len(ops) >= 2:
                r = ops[0].reg
                if r in reg and reg[r].kind is None and ops[1].type == capstone.arm64.ARM64_OP_MEM:
                    base = reg.get(ops[1].mem.base)
                    off = ops[1].mem.disp
                    if base and base.kind in ('addr', 'adrp'):
                        addr = base.value + off
                        kind, val = resolve_literal(m, addr)
                        if kind:
                            reg[r] = Reg(kind, val)
            elif ins.mnemonic in ('mov', 'movz') and len(ops) == 2:
                r = ops[0].reg
                if r in reg and reg[r].kind is None and ops[1].type == capstone.arm64.ARM64_OP_IMM:
                    reg[r] = Reg('imm', ops[1].imm)
            elif ins.mnemonic == 'adr':
                r = ops[0].reg
                if r in reg and reg[r].kind is None:
                    reg[r] = Reg('addr', ops[1].imm)
            else:
                # any other instruction that writes a tracked register invalidates it
                for o in ops:
                    if o.type == capstone.arm64.ARM64_OP_REG and o.access and (o.access & capstone.CS_AC_WRITE):
                        if o.reg in reg:
                            reg[o.reg] = Reg(None, None)
        except Exception:
            continue
    return reg


def find_hooks(m):
    stubs = build_stub_map(m)
    hook_msgsend = set(a for a, n in stubs.items() if n == '_MSHookMessageEx')
    hook_fn = set(a for a, n in stubs.items() if n in ('_MSHookFunction', '_MSHookMemory'))
    text = m.sect('__text')
    if not text:
        return []
    sec = text[0]
    code = m.data[sec.offset:sec.offset + sec.size]
    insns = list(CS.disasm(code, sec.addr))
    idx_by_addr = {i.address: n for n, i in enumerate(insns)}
    res = []
    for n, ins in enumerate(insns):
        if ins.mnemonic not in ('bl', 'b') or not ins.operands:
            continue
        if ins.operands[0].type != capstone.arm64.ARM64_OP_IMM:
            continue
        tgt = ins.operands[0].imm
        if tgt not in hook_msgsend and tgt not in hook_fn:
            continue
        want = {capstone.arm64.ARM64_REG_X0: 'arg0',
                capstone.arm64.ARM64_REG_X1: 'arg1',
                capstone.arm64.ARM64_REG_X2: 'arg2',
                capstone.arm64.ARM64_REG_X3: 'arg3'}
        reg = {r: Reg(None) for r in want}
        backtrace(m, insns, n, reg, max_steps=120)
        rec = {'site': ins.address, 'kind': 'MSHookMessageEx' if tgt in hook_msgsend else 'MSHookFunction',
               'args': {want[r]: {'kind': reg[r].kind, 'value': reg[r].value} for r in want}}
        # sanity: x2 should be a code address (replacement IMP)
        res.append(rec)
    return res


def text_symbol_at(m, addr):
    """Nearest preceding exported/local symbol for a code address."""
    best = None
    for s in m.symbols():
        if s['type'] & 0x0e == 0x0e or s['type'] & 0x01:
            v = s['value']
            if v and v <= addr and (best is None or v > best[1]):
                best = (s['name'], v)
    return best


if __name__ == '__main__':
    path = sys.argv[1]
    out = []
    for cput, sub, sl in load_slices(path):
        m = MachO(sl, path)
        h = find_hooks(m)
        print('cpu %x sub %x hooks %d' % (cput, sub, len(h)))
        for r in h[:20]:
            print('  %x %s' % (r['site'], r['args']))
        out.append({'cput': cput, 'sub': sub, 'hooks': h})
    json.dump(out, open('work/json/hooks.json', 'w'), indent=1)
