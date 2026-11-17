#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Parse sources with libclang, inlining the stub headers to avoid include paths."""
import os, sys, glob, re
from clang.cindex import Index, Config, Diagnostic

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = HERE  # tools/
STUB = open(os.path.join(ROOT, 'stubs/_all.h')).read()
INLINE_RE = re.compile(r'^\s*#\s*(?:import|include)\s*[<\"\'].*$', re.M)

LOCAL_HEADERS = ['src/Core/CG27GenieDriver.h', 'src/Core/CG27Spring.h',
                 'src/Shared/CG27Globals.h', 'src/Shared/CG27Prefs.h',
                 'src/Prefs/CG27RebornPrefs.h']
LOCAL = []
for rel in LOCAL_HEADERS:
    p = os.path.join(ROOT, '..', rel)
    if os.path.exists(p):
        LOCAL.append(INLINE_RE.sub('', open(p, encoding='utf-8').read()))
LIB = os.environ.get('LIBCLANG', '')
if os.path.exists(LIB):
    Config.set_library_file(LIB)

INLINE_RE = re.compile(r'^\s*#\s*(?:import|include)\s*[<"].*$', re.M)


def check(path):
    src = open(path, encoding='utf-8').read()
    body = INLINE_RE.sub('', src)
    content = STUB + '\n' + '\n'.join(LOCAL) + '\n#line 1 "%s"\n' % path + body
    index = Index.create()
    tu = index.parse('probe.m', args=['-x', 'objective-c', '-fobjc-arc', '-fblocks',
                              '-fobjc-runtime=macosx-10.15'],
                     unsaved_files=[('probe.m', content)], options=0)
    errs = []
    for d in tu.diagnostics:
        if d.severity >= Diagnostic.Error:
            loc = os.path.basename(d.location.file.name) if d.location.file else '?'
            errs.append('%s:%d %s' % (loc, d.location.line, d.spelling))
    return errs


def main():
    files = []
    for base in ('../src',):
        files += sorted(glob.glob(os.path.join(ROOT, base, '**/*.m'), recursive=True))
    total = 0
    for f in files:
        errs = check(f)
        print('%s %-46s %d error(s)' % ('OK  ' if not errs else 'FAIL',
                                        os.path.relpath(f, ROOT), len(errs)))
        for e in errs[:15]:
            print('     ' + e)
        total += len(errs)
    print('---\ntotal errors: %d' % total)
    return 0 if total == 0 else 1


if __name__ == '__main__':
    sys.exit(main())
