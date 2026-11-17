#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Dump per-function disassembly plus a compact call/constant summary."""
import sys, os, json, collections
import capstone
from capstone import arm64 as A

sys.path.insert(0, __file__.rsplit('/', 1)[0])
from machoparse import load_slices, MachO, cstr
from hooks import build_stub_map
from objcstubs import objc_stub_selectors

CS = capstone.Cs(capstone.CS_ARCH_ARM64, capstone.CS_MODE_ARM)
CS.detail = True


def function_bounds(m, start):
    """Disassemble the block that starts at `start` (an IMP or function entry).

    Optimised binaries share tails between small accessors, so the walk stops at
    the first return/branch-out or when the next known entry point is reached.
    """
    text = m.sect('__text')[0]
    code = m.data[text.offset:text.offset + text.size]
    insns = []
    for ins in CS.disasm(code, text.addr):
        if ins.address < start:
            continue
        if ins.address > start and ins.mnemonic in ('pacibsp', 'paciasp'):
            break
        insns.append(ins)
        if ins.mnemonic in ('ret', 'retab', 'br', 'braa', 'brk'):
            break
        if len(insns) > 1200:
            break
    return insns


def summary(m, insns, stubs, osel=None):
    calls = []
    strings = []
    consts = []
    for ins in insns:
        if ins.mnemonic in ('bl', 'b') and ins.operands and ins.operands[0].type == A.ARM64_OP_IMM:
            t = ins.operands[0].imm
            nm = stubs.get(t)
            if not nm and osel and t in osel and osel[t]:
                nm = 'objc:' + osel[t]
            calls.append(nm or ('sub_%x' % t))
        for o in ins.operands:
            if o.type == A.ARM64_OP_IMM and abs(o.imm) > 0x1000:
                consts.append(o.imm)
    return calls, strings, consts


def main(path, outdir):
    os.makedirs(outdir, exist_ok=True)
    result = {}
    for cput, sub, sl in load_slices(path):
        if sub != 0x80000002:
            continue
        m = MachO(sl, path)
        stubs = build_stub_map(m)
        osel = objc_stub_selectors(m)
        o = m.parse_objc()
        targets = []
        for c in o['classes']:
            for mm in c['methods'] + c['class_methods']:
                if mm.get('imp'):
                    targets.append((c['name'], mm['name'] or '?', mm['imp'], mm['types']))
        # hook replacements
        hooks = json.load(open('work/json/hooks_sym.json')).get('0x80000002', [])
        for h in hooks:
            if h['imp'] and h['imp'][0] in ('addr', 'imp'):
                targets.append(('HOOK', (h['cls'][1] if h['cls'] else '?') + ' -' + (h['sel'][1] if h['sel'] else '?'), h['imp'][1], None))
        seen = set()
        for owner, name, addr, types in targets:
            if addr in seen:
                continue
            seen.add(addr)
            insns = function_bounds(m, addr)
            calls, _, consts = summary(m, insns, stubs, osel)
            lines = ['%s %s @0x%x  (%d insns)' % (owner, name, addr, len(insns))]
            if types:
                lines.append('types: %s' % types)
            for ins in insns:
                extra = ''
                if ins.mnemonic in ('bl', 'b') and ins.operands and ins.operands[0].type == A.ARM64_OP_IMM:
                    t = ins.operands[0].imm
                    nm = stubs.get(t)
                    if not nm and t in osel and osel[t]:
                        nm = 'objc:' + osel[t]
                    extra = '  ; ' + (nm or ('sub_%x' % t))
                    if not nm:
                        # resolve to nearest preceding symbol
                        best = None
                        for s in m.symbols():
                            if 0 < s['value'] <= t and (best is None or s['value'] > best[1]):
                                best = (s['name'], s['value'])
                        if best and t - best[1] < 0x10000:
                            extra = '  ; %s+0x%x' % (best[0], t - best[1])
                lines.append('  0x%05x  %-8s %-46s%s' % (ins.address, ins.mnemonic, ins.op_str, extra))
            safe = ''.join(ch if ch.isalnum() or ch in '-_.' else '_' for ch in owner + '_' + name)[:90]
            fn = os.path.join(outdir, '%s.asm' % safe)
            open(fn, 'w').write('\n'.join(lines) + '\n')
            result[name] = {'owner': owner, 'addr': addr, 'insns': len(insns),
                            'calls': calls, 'file': fn, 'types': types}
        json.dump(result, open('work/json/functions.json', 'w'), indent=1, ensure_ascii=False)
        print('dumped', len(result), 'functions')
        top = sorted(result.items(), key=lambda kv: -kv[1]['insns'])[:25]
        for k, v in top:
            print('  %5d  %s (%s)' % (v['insns'], k, v['owner']))


if __name__ == '__main__':
    main(sys.argv[1], sys.argv[2] if len(sys.argv) > 2 else 'work/asm')
