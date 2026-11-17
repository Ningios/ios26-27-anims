#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Map every __objc_stubs entry to the selector it forwards, so that calls into
those stubs can be rendered as ObjC message sends."""
import sys
sys.path.insert(0, __file__.rsplit('/', 1)[0])
from machoparse import load_slices, MachO, cstr
import capstone
from capstone import arm64 as A

CS = capstone.Cs(capstone.CS_ARCH_ARM64, capstone.CS_MODE_ARM)
CS.detail = True


def objc_stub_selectors(m):
    out = {}
    for sec in m.sect('__objc_stubs'):
        code = m.data[sec.offset:sec.offset + sec.size]
        cur = None
        sel = None
        start = None
        for ins in CS.disasm(code, sec.addr):
            ops = ins.operands
            if ins.mnemonic == 'adrp' and len(ops) == 2:
                cur = ops[1].imm
                if start is None:
                    start = ins.address
            elif ins.mnemonic == 'ldr' and len(ops) == 2 and ops[1].type == A.ARM64_OP_MEM:
                base = ops[1].mem.base
                if base == A.ARM64_REG_X1 and cur is not None:
                    slot = cur + ops[1].mem.disp
                    kind, val = m.pointed(slot)
                    name = None
                    if kind == 'rebase' and val:
                        name = cstr(m.data, m.vm2off(val) or 0)
                    if name:
                        sel = name
            elif ins.mnemonic in ('braa', 'br', 'b'):
                if start is not None:
                    out[start] = sel
                start, cur, sel = None, None, None
    return out


if __name__ == '__main__':
    for cput, sub, sl in load_slices(sys.argv[1]):
        m = MachO(sl, sys.argv[1])
        d = objc_stub_selectors(m)
        print(hex(sub), 'objc stubs', len(d), 'with selector', sum(1 for v in d.values() if v))
        for a, s in list(d.items())[:10]:
            print('  %x %s' % (a, s))
