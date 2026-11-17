#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Compact view of a dumped function: stack traffic and PAC noise removed."""
import re, sys

SKIP_MN = {'pacibsp', 'paciasp', 'autibsp', 'autiasp', 'retab', 'brk', 'eor', 'tbz', 'cbnz',
           'nop', 'hint'}
KEEP_F = {'fmul', 'fadd', 'fsub', 'fdiv', 'fmadd', 'fmsub', 'fneg', 'fabs', 'fcmp', 'fabd',
          'fmov', 'scvtf', 'ucvtf', 'fcvt', 'frint', 'fsqrt', 'fmin', 'fmax', 'sdiv', 'udiv',
          'mul', 'madd', 'msub'}


def compact(path, limit=None):
    out = []
    for line in open(path):
        line = line.rstrip()
        m = re.match(r'\s+0x([0-9a-f]+)\s+(\S+)\s*(.*)', line)
        if not m:
            out.append(line)
            continue
        addr, mn, ops = m.group(1), m.group(2), m.group(3)
        if mn in SKIP_MN:
            continue
        if mn in ('stp', 'ldp', 'str', 'ldr', 'stur', 'ldur') and '[sp' in ops:
            continue
        if mn in ('add', 'sub') and 'sp, sp' in ops:
            continue
        if mn == 'add' and 'x29, sp' in ops:
            continue
        if mn in ('ldp', 'stp') and 'x29' in ops:
            continue
        if mn.startswith('b.') or mn in ('cbz', 'tbnz', 'b', 'bl'):
            pass
        out.append('  %s  %-7s %s' % (addr, mn, ops))
        if limit and len(out) > limit:
            out.append('  ...')
            break
    return out


if __name__ == '__main__':
    for p in sys.argv[1:]:
        print('\n'.join(compact(p)))
        print('---')
