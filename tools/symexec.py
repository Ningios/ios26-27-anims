#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Abstract interpretation over __text to recover MSHookMessageEx arguments.

Registers carry small abstract values (string literal, selector, class name from
NSClassFromString, code address, imported symbol).  Control flow is walked with a
worklist so that branches do not break the recovery.
"""
import sys, struct, collections
import capstone
from capstone import arm64 as A

sys.path.insert(0, __file__.rsplit('/', 1)[0])
from machoparse import load_slices, MachO, cstr, u64
from hooks import build_stub_map

CS = capstone.Cs(capstone.CS_ARCH_ARM64, capstone.CS_MODE_ARM)
CS.detail = True

X0, X1, X2, X3, X4 = A.ARM64_REG_X0, A.ARM64_REG_X1, A.ARM64_REG_X2, A.ARM64_REG_X3, A.ARM64_REG_X4
X8, X16, X17 = A.ARM64_REG_X8, A.ARM64_REG_X16, A.ARM64_REG_X17
SP = A.ARM64_REG_SP

CALLER_SAVED = [getattr(A, 'ARM64_REG_X%d' % i) for i in range(0, 19)]


def merge(a, b):
    """Join two register states; keep only identical values."""
    out = {}
    for r in a:
        if r in b and a[r] == b[r]:
            out[r] = a[r]
    return out


def is_code(m, v):
    if not isinstance(v, int):
        return False
    for s in m.sect('__text') + m.sect('__objc_stubs'):
        if s.addr <= v < s.addr + s.size:
            return True
    return False


def slot_value(m, addr):
    """Classify the contents of a pointer slot."""
    kind, val = m.pointed(addr)
    if kind == 'bind' and val:
        return ('bind', val)
    if kind == 'rebase' and val:
        if is_code(m, val):
            return ('imp', val)
        o = m.vm2off(val)
        if o is not None:
            s = cstr(m.data, o)
            if s is not None and 0 < len(s) < 300 and all(ch.isprintable() for ch in s):
                return ('str', s)
        return ('addr', val)
    return None


class Sim:
    def __init__(self, m):
        self.m = m
        self.stubs = build_stub_map(m)
        self.events = []
        text = m.sect('__text')[0]
        self.sec = text
        self.code = m.data[text.offset:text.offset + text.size]
        self.insns = list(CS.disasm(self.code, text.addr))
        self.by_addr = {i.address: n for n, i in enumerate(self.insns)}
        self.end = text.addr + text.size

    def run(self):
        # entry points: addresses never targeted by a branch + pacibsp markers
        targets = set()
        for ins in self.insns:
            if ins.mnemonic.startswith('b') or ins.mnemonic in ('cbz', 'cbnz', 'tbz', 'tbnz'):
                for o in ins.operands:
                    if o.type == A.ARM64_OP_IMM and self.sec.addr <= o.imm < self.end:
                        targets.add(o.imm)
        entries = [i.address for i in self.insns
                   if i.address not in targets and (i.mnemonic in ('pacibsp', 'paciasp')
                                                    or i.address == self.sec.addr)]
        entries = sorted(set(entries))
        visited = collections.Counter()
        for e in entries:
            self.walk(e, {}, visited, depth=0, budget=60000)

    def walk(self, addr, state, visited, depth, budget):
        steps = 0
        stack = [(addr, state)]
        while stack and steps < budget:
            cur, st = stack.pop()
            while cur < self.end and steps < budget:
                steps += 1
                n = self.by_addr.get(cur)
                if n is None:
                    break
                ins = self.insns[n]
                key = (cur, tuple(sorted((k, str(v)) for k, v in st.items() if k in (X0, X1, X2, X3))))
                visited[key] += 1
                if visited[key] > 2:
                    break
                nxt = cur + 4
                mnem = ins.mnemonic
                ops = ins.operands
                handled = False
                try:
                    if mnem == 'adrp':
                        st[ops[0].reg] = ('adrp', ops[1].imm)
                        handled = True
                    elif mnem == 'add' and len(ops) == 3 and ops[2].type == A.ARM64_OP_IMM:
                        base = st.get(ops[1].reg)
                        if base and base[0] in ('adrp', 'addr'):
                            st[ops[0].reg] = ('addr', base[1] + ops[2].imm)
                        else:
                            st.pop(ops[0].reg, None)
                        handled = True
                    elif mnem == 'adr':
                        st[ops[0].reg] = ('addr', ops[1].imm)
                        handled = True
                    elif mnem in ('ldr', 'ldur') and len(ops) == 2 and ops[1].type == A.ARM64_OP_MEM:
                        base = st.get(ops[1].mem.base)
                        if base and base[0] in ('adrp', 'addr'):
                            v = slot_value(self.m, base[1] + ops[1].mem.disp)
                            if v:
                                st[ops[0].reg] = v
                            else:
                                st.pop(ops[0].reg, None)
                        else:
                            st.pop(ops[0].reg, None)
                        handled = True
                    elif mnem in ('mov', 'movz', 'movk'):
                        if len(ops) == 2 and ops[1].type == A.ARM64_OP_IMM:
                            st[ops[0].reg] = ('imm', ops[1].imm)
                        elif len(ops) == 2 and ops[1].type == A.ARM64_OP_REG:
                            src = st.get(ops[1].reg)
                            if src:
                                st[ops[0].reg] = src
                            else:
                                st.pop(ops[0].reg, None)
                        handled = True
                    elif mnem in ('paciza', 'pacia', 'autiza'):
                        if ops and ops[0].type == A.ARM64_OP_IMM:
                            st[ops[0].reg] = ('imp', ops[0].imm)
                        handled = True
                    elif mnem in ('bl', 'b') and ops and ops[0].type == A.ARM64_OP_IMM:
                        tgt = ops[0].imm
                        if mnem == 'b':
                            cur = tgt
                            continue
                        self.handle_call(tgt, st)
                        for r in CALLER_SAVED:
                            st.pop(r, None)
                        handled = True
                    elif mnem in ('cbz', 'cbnz', 'tbz', 'tbnz', 'b.eq', 'b.ne', 'b.lt', 'b.gt',
                                  'b.le', 'b.ge', 'b.hi', 'b.ls', 'b.hs', 'b.lo', 'b.mi', 'b.pl'):
                        tgt = None
                        for o in ops:
                            if o.type == A.ARM64_OP_IMM:
                                tgt = o.imm
                        if tgt is not None and self.sec.addr <= tgt < self.end:
                            stack.append((tgt, dict(st)))
                        cur = nxt
                        continue
                    elif mnem in ('ret', 'br', 'brk'):
                        break
                    elif mnem.startswith('st') or mnem in ('str', 'stp', 'strb', 'strh'):
                        handled = True
                    else:
                        for o in ops:
                            if o.type == A.ARM64_OP_REG and o.access and (o.access & capstone.CS_AC_WRITE):
                                st.pop(o.reg, None)
                        handled = True
                except Exception:
                    pass
                cur = nxt

    def sym_of(self, tgt):
        return self.stubs.get(tgt)

    def handle_call(self, tgt, st):
        name = self.sym_of(tgt)
        if name == '_MSHookMessageEx':
            self.events.append({
                'site': self.current_site,
                'cls': st.get(X0),
                'sel': st.get(X1),
                'imp': st.get(X2),
                'orig': st.get(X3),
            })
        elif name in ('_NSClassFromString', '_objc_getClass', '_objc_lookUpClass'):
            v = st.get(X0)
            if v and v[0] == 'str':
                st[X0] = ('classname', v[1])
        elif name == '_NSSelectorFromString':
            v = st.get(X0)
            if v and v[0] == 'str':
                st[X0] = ('sel', v[1])
        elif name in ('_objc_retainAutoreleasedReturnValue', '_objc_retain', '_objc_retainAutorelease'):
            pass

    def run2(self):
        """Second pass: track current instruction for the call handler."""
        # wrap walk with per-instruction site bookkeeping
        orig_handle = self.handle_call

        def handle(tgt, st):
            self.current_site = self._cur
            orig_handle(tgt, st)
        self.handle_call = handle
        self.run()


def main(path):
    results = {}
    for cput, sub, sl in load_slices(path):
        m = MachO(sl, path)
        sim = Sim(m)
        # patch walk to expose current address
        orig_walk = sim.walk

        sim.current_site = 0
        # instrument by monkey-patching the loop variable through a wrapper
        insn_attr = '_cur'
        old_by = sim.by_addr
        sim.run2 = None
        # simple approach: re-run with a site recorder
        class Recorder(Sim):
            pass
        sim.events = []
        # inline instrumented walk
        text = m.sect('__text')[0]
        targets = set()
        for ins in sim.insns:
            if ins.mnemonic.startswith('b') or ins.mnemonic in ('cbz', 'cbnz', 'tbz', 'tbnz'):
                for o in ins.operands:
                    if o.type == A.ARM64_OP_IMM and text.addr <= o.imm < sim.end:
                        targets.add(o.imm)
        entries = sorted(set(entry_points(sim)))
        visited = collections.Counter()
        for e in entries:
            sim._walk(e, {}, visited)
        results[sub] = {'events': sim.events}
        print('sub %x: %d hook events' % (sub, len(sim.events)))
    return results


def entry_points(sim):
    targets = set()
    for ins in sim.insns:
        if ins.mnemonic.startswith('b') or ins.mnemonic in ('cbz', 'cbnz', 'tbz', 'tbnz'):
            for o in ins.operands:
                if o.type == A.ARM64_OP_IMM and sim.sec.addr <= o.imm < sim.end:
                    targets.add(o.imm)
    out = []
    prev = None
    for ins in sim.insns:
        if ins.address in targets:
            prev = ins
            continue
        if ins.mnemonic in ('pacibsp', 'paciasp'):
            out.append(ins.address)
        elif prev is None or prev.mnemonic in ('ret', 'brk', 'b', 'br', 'braa', 'bra'):
            out.append(ins.address)
        prev = ins
    return out


def _walk(self, addr, state, visited, budget=200000):
    stack = [(addr, state)]
    steps = 0
    while stack and steps < budget:
        cur, st = stack.pop()
        while cur < self.end and steps < budget:
            steps += 1
            n = self.by_addr.get(cur)
            if n is None:
                break
            ins = self.insns[n]
            key = (cur, tuple(sorted((k, str(v)) for k, v in st.items() if k in (X0, X1, X2, X3))))
            visited[key] += 1
            if visited[key] > 2:
                break
            self._cur = cur
            nxt = cur + 4
            mnem, ops = ins.mnemonic, ins.operands
            try:
                if mnem == 'adrp':
                    st[ops[0].reg] = ('adrp', ops[1].imm)
                elif mnem == 'add' and len(ops) == 3 and ops[2].type == A.ARM64_OP_IMM:
                    base = st.get(ops[1].reg)
                    if base and base[0] in ('adrp', 'addr'):
                        st[ops[0].reg] = ('addr', base[1] + ops[2].imm)
                    else:
                        st.pop(ops[0].reg, None)
                elif mnem == 'adr':
                    st[ops[0].reg] = ('addr', ops[1].imm)
                elif mnem in ('ldr', 'ldur') and len(ops) == 2 and ops[1].type == A.ARM64_OP_MEM:
                    base = st.get(ops[1].mem.base)
                    if base and base[0] in ('adrp', 'addr'):
                        v = slot_value(self.m, base[1] + ops[1].mem.disp)
                        if v:
                            st[ops[0].reg] = v
                        else:
                            st.pop(ops[0].reg, None)
                    else:
                        st.pop(ops[0].reg, None)
                elif mnem in ('mov', 'movz'):
                    if len(ops) == 2 and ops[1].type == A.ARM64_OP_IMM:
                        st[ops[0].reg] = ('imm', ops[1].imm)
                    elif len(ops) == 2 and ops[1].type == A.ARM64_OP_REG:
                        src = st.get(ops[1].reg)
                        if src:
                            st[ops[0].reg] = src
                        else:
                            st.pop(ops[0].reg, None)
                elif mnem in ('paciza', 'pacia', 'autiza'):
                    if ops and ops[0].type == A.ARM64_OP_IMM:
                        st[ops[0].reg] = ('imp', ops[0].imm)
                elif mnem == 'b' and ops and ops[0].type == A.ARM64_OP_IMM:
                    cur = ops[0].imm
                    continue
                elif mnem == 'bl' and ops and ops[0].type == A.ARM64_OP_IMM:
                    callee = ops[0].imm
                    name = self.stubs.get(callee)
                    if name == '_MSHookMessageEx':
                        self.events.append({'site': self._cur, 'cls': self._as_str(st.get(X0)),
                                            'sel': self._as_str(st.get(X1)),
                                            'imp': st.get(X2), 'orig': st.get(X3)})
                    saved = {r: st.get(r) for r in (X0, X1)}
                    for r in CALLER_SAVED:
                        st.pop(r, None)
                    self._ret(callee, st, saved)
                elif mnem in ('cbz', 'cbnz', 'tbz', 'tbnz') or mnem.startswith('b.'):
                    tgt = None
                    for o in ops:
                        if o.type == A.ARM64_OP_IMM:
                            tgt = o.imm
                    if tgt is not None and self.sec.addr <= tgt < self.end:
                        stack.append((tgt, dict(st)))
                    cur = nxt
                    continue
                elif mnem in ('ret', 'br', 'brk'):
                    break
                else:
                    for o in ops:
                        if o.type == A.ARM64_OP_REG and o.access and (o.access & capstone.CS_AC_WRITE):
                            st.pop(o.reg, None)
            except Exception:
                pass
            cur = nxt


def _as_str(self, v):
    if not v:
        return None
    if v[0] == 'str':
        return ('str', v[1])
    if v[0] == 'classname':
        return ('classname', v[1])
    if v[0] == 'sel':
        return ('sel', v[1])
    if v[0] == 'addr':
        o = self.m.vm2off(v[1])
        if o is not None:
            s = cstr(self.m.data, o)
            if s and 0 < len(s) < 300 and all(ch.isprintable() for ch in s):
                return ('str', s)
    return v


def _ret(self, tgt, st, saved):
    name = self.stubs.get(tgt)
    if name in ('_NSClassFromString', '_objc_getClass', '_objc_lookUpClass'):
        v = self._as_str(saved.get(X0))
        if v and v[0] in ('str', 'classname'):
            st[X0] = ('classname', v[1])
    elif name == '_NSSelectorFromString':
        v = self._as_str(saved.get(X0))
        if v and v[0] in ('str', 'sel'):
            st[X0] = ('sel', v[1])


Sim._walk = _walk
Sim._ret = _ret
Sim._as_str = _as_str


if __name__ == '__main__':
    import json
    path = sys.argv[1]
    out = {}
    for cput, sub, sl in load_slices(path):
        m = MachO(sl, path)
        sim = Sim(m)
        sim.events = []
        text = m.sect('__text')[0]
        targets = set()
        for ins in sim.insns:
            if ins.mnemonic.startswith('b') or ins.mnemonic in ('cbz', 'cbnz', 'tbz', 'tbnz'):
                for o in ins.operands:
                    if o.type == A.ARM64_OP_IMM and text.addr <= o.imm < sim.end:
                        targets.add(o.imm)
        entries = sorted(set(entry_points(sim)))
        visited = collections.Counter()
        for e in entries:
            sim._walk(e, {}, visited)
        print('sub %x entries %d hooks %d' % (sub, len(entries), len(sim.events)))
        out[hex(sub)] = sim.events
        for ev in sim.events[:12]:
            print('  %x cls=%s sel=%s imp=%s' % (ev['site'], ev['cls'], ev['sel'], ev['imp']))
    json.dump(out, open('work/json/hooks_sym.json', 'w'), indent=1)
