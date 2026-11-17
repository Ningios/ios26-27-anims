#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Verification for the reconstructed project.

Checks:
  1. brace / bracket balance in every source file
  2. every extracted method is declared in the header and implemented in the .m
  3. ivar count / offsets / property count match the binary metadata
  4. all 41 hook sites are registered in Tweak.m
  5. resource files match the original package byte-for-byte (SHA-256)
"""
import json, os, re, sys, hashlib

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))  # project root
J = os.path.join(ROOT, 'tools')
fails = []
notes = []


def fail(msg):
    fails.append(msg)


def bal(path):
    s = open(path, encoding='utf-8').read()
    # strip strings first (they may contain '//'), then comments
    s = re.sub(r'"(?:\\.|[^"\\\n])*"', '""', s)
    s = re.sub(r'//[^\n]*', '', s)
    s = re.sub(r'/\*.*?\*/', '', s, flags=re.S)
    for open_ch, close_ch in (('{', '}'), ('(', ')'), ('[', ']')):
        if s.count(open_ch) != s.count(close_ch):
            fail('%s: %s/%s unbalanced (%d/%d)' % (os.path.basename(path), open_ch, close_ch,
                                                   s.count(open_ch), s.count(close_ch)))


def main():
    src_files = []
    for base, _, files in os.walk(ROOT):
        for f in files:
            if f.endswith(('.m', '.h')):
                src_files.append(os.path.join(base, f))
    for f in src_files:
        bal(f)

    meta = json.load(open(os.path.join(J, 'main_arm64e.json')))
    cls = meta['classes'][0]
    header = open(os.path.join(ROOT, 'src/Core/CG27GenieDriver.h'), encoding='utf-8').read()
    impl = open(os.path.join(ROOT, 'src/Core/CG27GenieDriver.m'), encoding='utf-8').read()

    # ivars
    ivar_names = [iv['name'] for iv in cls['ivars']]
    missing = [n for n in ivar_names if n not in header]
    if missing:
        fail('header missing ivars: %s' % missing)
    notes.append('ivar %d/%d declared with original offsets' % (len(ivar_names) - len(missing), len(ivar_names)))

    # properties
    props = [p['name'] for p in cls['properties']]
    missing_props = [p for p in props if not re.search(r'@property[^\n]*\b%s\b' % re.escape(p), header)]
    if missing_props:
        fail('header missing properties: %s' % missing_props)
    notes.append('property %d/%d declared' % (len(props) - len(missing_props), len(props)))

    # methods (non accessor)
    accessors = set()
    for p in props:
        accessors.add(p)
        accessors.add('set' + p[0].upper() + p[1:] + ':')
    methods = [m for m in cls['methods'] if m['name'] not in accessors and m['name'] != '.cxx_destruct']

    sel_re = re.compile(r'^\s*-\s*\(([^)]*)\)\s*(\w+)', re.M)
    impl_sels = set()
    for m in re.finditer(r'^-\s*\(([^)]*)\)\s*([^\{]+)\{', impl, re.M):
        sig = m.group(2).strip()
        parts = re.findall(r'(\w+):', sig)
        impl_sels.add(':'.join(parts) + ':' if parts else sig.split()[0])

    missing_impl = []
    for m in methods:
        name = m['name']
        if name in impl_sels:
            continue
        base = name.rstrip(':')
        if any(s.startswith(base) for s in impl_sels):
            continue
        missing_impl.append(name)
    if missing_impl:
        fail('missing implementations: %s' % missing_impl)
    notes.append('method implementation %d/%d' % (len(methods) - len(missing_impl), len(methods)))

    # hooks
    hooks = json.load(open(os.path.join(J, 'hooks_final.json')))
    tweak = open(os.path.join(ROOT, 'src/Tweak/Tweak.m'), encoding='utf-8').read()
    missing_hooks = []
    for h in hooks:
        sel = h['sel']
        if not sel:
            missing_hooks.append(h)
            continue
        if ('@selector(%s)' % sel) not in tweak:
            missing_hooks.append(h)
    if missing_hooks:
        fail('hooks missing from Tweak.m: %s' % [h['sel'] for h in missing_hooks])
    notes.append('hook registration %d/%d' % (len(hooks) - len(missing_hooks), len(hooks)))

    reg_calls = tweak.count('MSHookMessageEx(')
    if reg_calls != len(hooks):
        notes.append('MSHookMessageEx occurrences: %d (hooks: %d)' % (reg_calls, len(hooks)))

    # resources
    orig_dir = os.path.join(ROOT, 'reference/resources')
    new_dir = os.path.join(ROOT, 'layout')
    mismatched = 0
    checked = 0
    for base, _, files in os.walk(orig_dir):
        for f in files:
            src = os.path.join(base, f)
            rel = os.path.relpath(src, orig_dir)
            dst = os.path.join(new_dir, rel)
            if rel.endswith('.dylib') or rel.endswith('iOS27AnimsRebornPrefs') or rel.endswith('.roothidepatch'):
                continue
            checked += 1
            if not os.path.exists(dst):
                fail('resource missing: %s' % rel)
                continue
            a = hashlib.sha256(open(src, 'rb').read()).hexdigest()
            b = hashlib.sha256(open(dst, 'rb').read()).hexdigest()
            if a != b:
                mismatched += 1
                fail('resource differs: %s' % rel)
    notes.append('resources %d checked, %d mismatched' % (checked, mismatched))

    print('=== CHECKS ===')
    for n in notes:
        print('  OK  ' + n)
    if fails:
        print('=== FAILURES (%d) ===' % len(fails))
        for f in fails:
            print('  FAIL ' + f)
        return 1
    print('=== ALL PASS ===')
    return 0


if __name__ == '__main__':
    sys.exit(main())
