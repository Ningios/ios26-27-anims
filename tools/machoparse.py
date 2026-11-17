#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Standalone 64-bit Mach-O reader: segments, chained fixups, dyld bind info,
ObjC metadata (classlist / catlist / protolist / methods / ivars / properties /
cfstrings) and string pools.
"""
import struct, sys, json, os

MH_MAGIC_64 = 0xfeedfacf
LC_SEGMENT_64 = 0x19
LC_SYMTAB = 0x2
LC_DYLD_INFO = 0x22
LC_DYLD_INFO_ONLY = 0x80000022
LC_DYLD_CHAINED_FIXUPS = 0x80000034
LC_DYLD_EXPORTS_TRIE = 0x80000033

DYN_PTR_ARM64E = 1
DYN_PTR_64 = 2
DYN_PTR_32 = 3
DYN_PTR_64_OFFSET = 6
DYN_PTR_ARM64E_KERNEL = 7
DYN_PTR_ARM64E_USERLAND = 9
DYN_PTR_ARM64E_FIRMWARE = 10
DYN_PTR_ARM64E_USERLAND24 = 12


def u8(b, o): return b[o]
def u16(b, o): return struct.unpack_from('<H', b, o)[0]
def u32(b, o): return struct.unpack_from('<I', b, o)[0]
def i32(b, o): return struct.unpack_from('<i', b, o)[0]
def u64(b, o): return struct.unpack_from('<Q', b, o)[0]


def cstr(b, o, limit=8192):
    if o is None or o < 0 or o >= len(b):
        return None
    e = b.find(b'\x00', o, min(len(b), o + limit))
    if e < 0:
        return None
    try:
        return b[o:e].decode('utf-8')
    except Exception:
        return b[o:e].decode('utf-8', 'replace')


class Section:
    __slots__ = ('segname', 'sectname', 'addr', 'size', 'offset', 'align', 'flags', 'reloff', 'nreloc')

    def __init__(self, b, o):
        self.sectname = b[o:o + 16].rstrip(b'\x00').decode('utf-8', 'replace')
        self.segname = b[o + 16:o + 32].rstrip(b'\x00').decode('utf-8', 'replace')
        self.addr, self.size = u64(b, o + 32), u64(b, o + 40)
        self.offset, self.align = u32(b, o + 48), u32(b, o + 52)
        self.reloff, self.nreloc, self.flags = u32(b, o + 56), u32(b, o + 60), u32(b, o + 64)

    def __repr__(self):
        return '<%s,%s 0x%x+0x%x>' % (self.segname, self.sectname, self.addr, self.size)


class Segment:
    __slots__ = ('name', 'vmaddr', 'vmsize', 'fileoff', 'filesize', 'sections', 'initprot', 'maxprot', 'flags')

    def __init__(self, b, o):
        self.name = b[o:o + 16].rstrip(b'\x00').decode('utf-8', 'replace')
        self.vmaddr, self.vmsize = u64(b, o + 24), u64(b, o + 32)
        self.fileoff, self.filesize = u64(b, o + 40), u64(b, o + 48)
        self.maxprot, self.initprot = u32(b, o + 56), u32(b, o + 60)
        nsects, self.flags = u32(b, o + 64), u32(b, o + 68)
        self.sections = [Section(b, o + 72 + i * 80) for i in range(nsects)]

    def __repr__(self):
        return '<seg %s 0x%x+0x%x file 0x%x>' % (self.name, self.vmaddr, self.vmsize, self.fileoff)


class MachO:
    def __init__(self, data, name='<mem>'):
        self.data = data
        self.name = name
        magic = u32(data, 0)
        if magic != MH_MAGIC_64:
            raise ValueError('not a 64-bit little-endian Mach-O: 0x%x' % magic)
        self.cputype, self.cpusubtype = u32(data, 4), u32(data, 8)
        self.filetype = u32(data, 12)
        self.ncmds, self.sizeofcmds = u32(data, 16), u32(data, 20)
        self.flags = u32(data, 24)
        self.segments = []
        self.sections = []
        self.symtab = None
        self.dyld_info = None
        self.chained = None
        self.exports_trie = None
        self._parse_load_commands()
        self._build_maps()
        self.fixups = {}
        self._binds_by_addr = {}
        self._parse_chained_fixups()
        self._parse_dyld_info_binds()
        self._sym_cache = {}

    def _parse_load_commands(self):
        b, off = self.data, 32
        for _ in range(self.ncmds):
            if off + 8 > len(b):
                break
            cmd, cmdsize = u32(b, off), u32(b, off + 4)
            if cmdsize < 8:
                break
            if cmd == LC_SEGMENT_64:
                seg = Segment(b, off)
                self.segments.append(seg)
                self.sections.extend(seg.sections)
            elif cmd == LC_SYMTAB:
                self.symtab = (u32(b, off + 8), u32(b, off + 12), u32(b, off + 16), u32(b, off + 20))
            elif cmd in (LC_DYLD_INFO, LC_DYLD_INFO_ONLY):
                self.dyld_info = dict(zip(
                    ('rebase_off', 'rebase_size', 'bind_off', 'bind_size', 'weak_bind_off',
                     'weak_bind_size', 'lazy_bind_off', 'lazy_bind_size', 'export_off', 'export_size'),
                    struct.unpack_from('<10I', b, off + 8)))
            elif cmd == LC_DYLD_CHAINED_FIXUPS:
                self.chained = (u32(b, off + 8), u32(b, off + 12))
            elif cmd == LC_DYLD_EXPORTS_TRIE:
                self.exports_trie = (u32(b, off + 8), u32(b, off + 12))
            off += cmdsize

    def _build_maps(self):
        self.seg_by_name = {s.name: s for s in self.segments}
        self.sect_by_name = {}
        for s in self.sections:
            self.sect_by_name.setdefault(s.sectname, []).append(s)
        self._ranges = sorted((s.vmaddr, s.vmaddr + s.vmsize, s.fileoff) for s in self.segments if s.filesize)
        self.vm_base = self.segments[0].vmaddr if self.segments else 0

    def sect(self, name):
        return self.sect_by_name.get(name, [])

    def vm2off(self, vm):
        for start, end, foff in self._ranges:
            if start <= vm < end:
                return foff + (vm - start)
        return None

    def off2vm(self, off):
        for start, end, foff in self._ranges:
            if foff <= off < foff + (end - start):
                return start + (off - foff)
        return None

    def read(self, vm, n):
        o = self.vm2off(vm)
        if o is None or o + n > len(self.data):
            return None
        return self.data[o:o + n]

    def ptr(self, vm):
        p = self.read(vm, 8)
        return None if p is None else u64(p, 0)

    def _parse_chained_fixups(self):
        if not self.chained:
            return
        dataoff, datasize = self.chained
        b = self.data
        base = dataoff
        starts_offset = u32(b, base + 4)
        imports_offset = u32(b, base + 8)
        symbols_offset = u32(b, base + 12)
        imports_count = u32(b, base + 16)
        imports_format = u32(b, base + 20)
        imports = []
        for i in range(imports_count):
            if imports_format in (1, 2):
                o = base + imports_offset + i * 4
                v = u32(b, o)
                lib, weak, name_off = v & 0xFF, (v >> 8) & 1, v >> 9
            else:
                o = base + imports_offset + i * 8
                v = u64(b, o)
                lib, weak, name_off = v & 0xFFFF, (v >> 16) & 1, (v >> 32)
            imports.append(cstr(b, base + symbols_offset + name_off))
        starts = base + starts_offset
        seg_count = u32(b, starts)
        for si in range(seg_count):
            seg_info_off = u32(b, starts + 4 + si * 4)
            if seg_info_off == 0:
                continue
            info = starts + seg_info_off
            page_size = u16(b, info + 4)
            pointer_format = u16(b, info + 6)
            segment_offset = u64(b, info + 8)
            page_count = u16(b, info + 20)
            if page_size <= 0 or page_count <= 0:
                continue
            for pi in range(page_count):
                page_start = u16(b, info + 22 + pi * 2)
                if page_start == 0xFFFF:
                    continue
                off = segment_offset + pi * page_size + page_start
                guard = 0
                while off and guard < 200000:
                    guard += 1
                    if off + 8 > len(b):
                        break
                    raw = u64(b, off)
                    if pointer_format in (DYN_PTR_ARM64E, DYN_PTR_ARM64E_USERLAND,
                                          DYN_PTR_ARM64E_USERLAND24, DYN_PTR_ARM64E_KERNEL):
                        nxt = (raw >> 51) & 0x7FF
                        bound = (raw >> 62) & 1
                        if bound:
                            ordinal = raw & 0xFFFFFF if pointer_format == DYN_PTR_ARM64E_USERLAND24 else raw & 0xFFFF
                            self.fixups[off] = ('bind', imports[ordinal] if ordinal < len(imports) else None)
                        else:
                            target = raw & 0xFFFFFFFF
                            self.fixups[off] = ('rebase', (self.vm_base & ~0xFFFFFFFF) | target)
                        if nxt == 0:
                            break
                        off += nxt * 8
                    elif pointer_format in (DYN_PTR_64, DYN_PTR_64_OFFSET):
                        nxt = (raw >> 51) & 0xFFF
                        bound = (raw >> 63) & 1
                        if bound:
                            ordinal = raw & 0xFFFFF
                            self.fixups[off] = ('bind', imports[ordinal] if ordinal < len(imports) else None)
                        else:
                            target = raw & 0x7FFFFFFF
                            if pointer_format == DYN_PTR_64_OFFSET:
                                target += self.vm_base
                            self.fixups[off] = ('rebase', target)
                        if nxt == 0:
                            break
                        off += nxt * 8
                    else:
                        break

    def _parse_dyld_info_binds(self):
        if not self.dyld_info:
            return
        b = self.data
        for key in ('bind_off', 'lazy_bind_off', 'weak_bind_off'):
            off = self.dyld_info.get(key) or 0
            size = self.dyld_info.get(key.replace('_off', '_size')) or 0
            if not off or not size:
                continue
            p, end = off, off + size
            addr = 0
            sym = None
            while p < end:
                op = b[p] & 0xF0
                imm = b[p] & 0x0F
                p += 1
                if op in (0x00, 0x10, 0x20, 0x30, 0x50):
                    continue
                elif op == 0x40:
                    s = cstr(b, p)
                    if s is None:
                        break
                    p += len(s.encode()) + 1
                    sym = s
                elif op == 0x60:
                    p += 1
                elif op in (0x70, 0x80):
                    p += 4
                elif op == 0x90:
                    addr = u64(b, p)
                    p += 8
                elif op == 0xA0:
                    addr = u64(b, p) + self.vm_base
                    p += 8
                elif op == 0xB0:
                    p += 8
                elif op == 0xC0:
                    p += 8
                    if sym:
                        self._binds_by_addr[addr] = sym
                    addr += 8
                elif op == 0xD0:
                    p += 4
                else:
                    break

    def pointed(self, vm):
        off = self.vm2off(vm)
        if off is None:
            return (None, None)
        if off in self.fixups:
            return self.fixups[off]
        if vm in self._binds_by_addr:
            return ('bind', self._binds_by_addr[vm])
        if off + 8 > len(self.data):
            return (None, None)
        raw = u64(self.data, off)
        if self.vm2off(raw) is not None:
            return ('rebase', raw)
        cand = raw & 0x0000000FFFFFFFFF
        if self.vm2off(cand) is not None:
            return ('rebase', cand)
        cand2 = (self.vm_base & ~0xFFFFFFFF) | (raw & 0xFFFFFFFF)
        if self.vm2off(cand2) is not None:
            return ('rebase', cand2)
        return (None, None)

    def sym_name(self, name):
        if name in self._sym_cache:
            return self._sym_cache[name]
        out = name
        for pre in ('_OBJC_CLASS_$_', '_OBJC_METACLASS_$_'):
            if name.startswith(pre):
                out = name[len(pre):]
        self._sym_cache[name] = out
        return out

    def class_from_slot(self, slot_vm):
        kind, val = self.pointed(slot_vm)
        if kind == 'bind' and val:
            return self.sym_name(val)
        if kind == 'rebase' and val:
            return self.class_name_of(val)
        return None

    # ---------- ObjC ----------
    def parse_objc(self):
        res = {'classes': [], 'categories': [], 'protocols': [], 'strings': [], 'cfstrings': []}
        seen = set()
        for sec in self.sect('__objc_classlist') + self.sect('__objc_nlclslist'):
            for i in range(sec.size // 8):
                cls = self.class_at(sec.addr + i * 8)
                if cls and cls['name'] not in seen:
                    seen.add(cls['name'])
                    res['classes'].append(cls)
        for sec in self.sect('__objc_catlist') + self.sect('__objc_nlcatlist'):
            for i in range(sec.size // 8):
                cat = self.category_at(sec.addr + i * 8)
                if cat:
                    res['categories'].append(cat)
        for sec in self.sect('__objc_protolist'):
            for i in range(sec.size // 8):
                pr = self.protocol_at(sec.addr + i * 8)
                if pr:
                    res['protocols'].append(pr)
        for name in ('__cstring', '__objc_methname', '__objc_classname', '__objc_methtype'):
            for sec in self.sect(name):
                for s in self.dump_cstrings(sec):
                    res['strings'].append(s)
        res['cfstrings'] = self.parse_cfstrings()
        return res

    def dump_cstrings(self, sec):
        out = []
        o, end = sec.offset, sec.offset + sec.size
        b = self.data
        while o < end:
            e = b.find(b'\x00', o, end)
            if e < 0:
                break
            if e > o:
                try:
                    t = b[o:e].decode('utf-8')
                    if all(ch.isprintable() or ch in '\n\t' for ch in t):
                        out.append(t)
                except Exception:
                    pass
            o = e + 1
        return out

    def parse_cfstrings(self):
        out = []
        for sec in self.sect('__cfstring'):
            for i in range(sec.size // 32):
                base = sec.addr + i * 32
                fl = self.ptr(base + 8)
                p = self.ptr(base + 16)
                ln = self.ptr(base + 24)
                s = None
                if p and self.vm2off(p):
                    s = cstr(self.data, self.vm2off(p))
                if s is None and fl is not None and (fl & 0x20):
                    o = self.vm2off(base + 24)
                    if o:
                        s = cstr(self.data, o, 128)
                if s is not None:
                    out.append({'addr': base, 'string': s, 'flags': fl, 'length': ln})
        return out

    def methods_at(self, list_vm):
        res = []
        if not list_vm:
            return res
        hdr = self.read(list_vm, 8)
        if not hdr:
            return res
        entsize_flags, count = u32(hdr, 0), u32(hdr, 4)
        entsize = entsize_flags & 0xFFFF
        if count > 20000:
            return res
        relative = bool(entsize_flags & 0x80000000) or entsize in (0, 12)
        step = entsize if entsize >= 12 else 12
        for i in range(count):
            ent = list_vm + 8 + i * step
            if relative:
                d = self.read(ent, 12)
                if not d:
                    break
                noff, toff, ioff = struct.unpack('<iii', d)
                nm = self.sel_string_at(ent + noff)
                ty = self.sel_string_at(ent + 4 + toff)
                imp = ent + 8 + ioff
            else:
                d = self.read(ent, 24)
                if not d:
                    break
                kind, name_vm = self.pointed(ent)
                nm = None
                if kind == 'rebase' and name_vm:
                    nm = cstr(self.data, self.vm2off(name_vm) or 0)
                elif kind == 'bind' and name_vm:
                    nm = self.sym_name(name_vm)
                k2, types_vm = self.pointed(ent + 8)
                ty = cstr(self.data, self.vm2off(types_vm) or 0) if k2 == 'rebase' else None
                k3, imp = self.pointed(ent + 16)
            if nm or ty:
                res.append({'name': nm, 'types': ty, 'imp': imp})
        return res

    def sel_string_at(self, vm):
        o = self.vm2off(vm)
        if o is None:
            return None
        for sec in self.sect('__objc_selrefs') + self.sect('__objc_classrefs'):
            if sec.addr <= vm < sec.addr + sec.size:
                kind, val = self.pointed(vm)
                if kind == 'rebase' and val:
                    return cstr(self.data, self.vm2off(val) or 0)
                if kind == 'bind' and val:
                    return self.sym_name(val)
                return None
        s = cstr(self.data, o)
        if s is not None and all(ch.isprintable() for ch in s):
            return s
        return None

    def protocol_at(self, slot_vm):
        kind, vm = self.pointed(slot_vm)
        if kind != 'rebase' or not vm:
            return None
        nm = self.pointed(vm + 8)
        name = cstr(self.data, self.vm2off(nm[1]) or 0) if nm[0] else None
        if not name:
            return None
        d = {'name': name, 'protocols': [], 'instance_methods': [], 'class_methods': [],
             'opt_instance_methods': [], 'opt_class_methods': [], 'properties': []}
        pl = self.pointed(vm + 16)
        if pl[0]:
            lst = pl[1]
            cnt = self.ptr(lst)
            if cnt and cnt < 500:
                for i in range(cnt):
                    p = self.pointed(lst + 8 + i * 8)
                    if p[0]:
                        n2 = self.pointed(p[1] + 8)
                        if n2[0]:
                            v = cstr(self.data, self.vm2off(n2[1]) or 0)
                            if v:
                                d['protocols'].append(v)
        for key, idx in (('instance_methods', 24), ('class_methods', 32),
                         ('opt_instance_methods', 40), ('opt_class_methods', 48)):
            p = self.pointed(vm + idx)
            if p[0]:
                d[key] = self.methods_at(p[1])
        p = self.pointed(vm + 56)
        if p[0]:
            d['properties'] = self.properties_at(p[1])
        return d

    def properties_at(self, list_vm):
        res = []
        hdr = self.read(list_vm, 8)
        if not hdr:
            return res
        entsize_flags, count = u32(hdr, 0), u32(hdr, 4)
        entsize = entsize_flags & 0xFFFF or 16
        if count > 5000 or entsize < 16:
            return res
        for i in range(count):
            ent = list_vm + 8 + i * entsize
            k1, nvm = self.pointed(ent)
            k2, avm = self.pointed(ent + 8)
            nm = cstr(self.data, self.vm2off(nvm) or 0) if k1 == 'rebase' else None
            at = cstr(self.data, self.vm2off(avm) or 0) if k2 == 'rebase' else None
            if nm:
                res.append({'name': nm, 'attributes': at})
        return res

    def ivars_at(self, list_vm):
        res = []
        hdr = self.read(list_vm, 8)
        if not hdr:
            return res
        entsize_flags, count = u32(hdr, 0), u32(hdr, 4)
        entsize = entsize_flags & 0xFFFF or 32
        if count > 5000 or entsize < 32:
            return res
        for i in range(count):
            ent = list_vm + 8 + i * entsize
            k1, off_vm = self.pointed(ent)
            ivar_off = None
            if k1 == 'rebase' and off_vm:
                raw = self.ptr(off_vm)
                if raw is not None:
                    ivar_off = struct.unpack('<i', struct.pack('<I', raw & 0xFFFFFFFF))[0]
            k2, nvm = self.pointed(ent + 8)
            k3, tvm = self.pointed(ent + 16)
            nm = cstr(self.data, self.vm2off(nvm) or 0) if k2 == 'rebase' else None
            ty = cstr(self.data, self.vm2off(tvm) or 0) if k3 == 'rebase' else None
            align, size = u32(self.data, ent + 24), u32(self.data, ent + 28)
            if nm:
                res.append({'name': nm, 'offset': ivar_off, 'type': ty,
                            'alignment': align, 'size': size})
        return res

    def class_at(self, slot_vm):
        kind, vm = self.pointed(slot_vm)
        if kind != 'rebase' or not vm:
            return None
        kd, dat = self.pointed(vm + 32)
        if kd != 'rebase' or not dat:
            return None
        rovm = dat & ~7
        hdr = self.read(rovm, 72)
        if not hdr:
            return None
        flags, instance_start, instance_size = u32(hdr, 0), u32(hdr, 4), u32(hdr, 8)
        k, nvm = self.pointed(rovm + 24)
        name = cstr(self.data, self.vm2off(nvm) or 0) if k == 'rebase' else (self.sym_name(nvm) if nvm else None)
        if not name:
            return None
        out = {'name': name, 'address': vm, 'ro': rovm, 'flags': flags,
               'instance_start': instance_start, 'instance_size': instance_size,
               'superclass': None, 'methods': [], 'class_methods': [],
               'ivars': [], 'properties': [], 'protocols': []}
        ks, sup = self.pointed(vm + 8)
        if ks == 'rebase' and sup:
            out['superclass'] = self.class_name_of(sup)
        elif ks == 'bind' and sup:
            out['superclass'] = self.sym_name(sup)
        m = self.pointed(rovm + 32)
        if m[0]:
            out['methods'] = self.methods_at(m[1])
        pr = self.pointed(rovm + 40)
        if pr[0]:
            lst = pr[1]
            cnt = self.ptr(lst)
            if cnt and cnt < 500:
                for i in range(cnt):
                    p = self.pointed(lst + 8 + i * 8)
                    if p[0]:
                        n2 = self.pointed(p[1] + 8)
                        if n2[0]:
                            v = cstr(self.data, self.vm2off(n2[1]) or 0)
                            if v:
                                out['protocols'].append(v)
        iv = self.pointed(rovm + 48)
        if iv[0]:
            out['ivars'] = self.ivars_at(iv[1])
        pp = self.pointed(rovm + 64)
        if pp[0]:
            out['properties'] = self.properties_at(pp[1])
        kisa, isa = self.pointed(vm)
        if kisa == 'rebase' and isa:
            kd2, dat2 = self.pointed(isa + 32)
            if kd2 == 'rebase' and dat2:
                mm = self.pointed((dat2 & ~7) + 32)
                if mm[0]:
                    out['class_methods'] = self.methods_at(mm[1])
        return out

    def class_name_of(self, vm):
        kd, dat = self.pointed(vm + 32)
        if kd != 'rebase' or not dat:
            return None
        k, nvm = self.pointed((dat & ~7) + 24)
        return cstr(self.data, self.vm2off(nvm) or 0) if k == 'rebase' and nvm else None

    def category_at(self, slot_vm):
        kind, vm = self.pointed(slot_vm)
        if kind != 'rebase' or not vm:
            return None
        kn, nvm = self.pointed(vm)
        name = cstr(self.data, self.vm2off(nvm) or 0) if kn == 'rebase' else None
        cls = self.class_from_slot(vm + 8)
        if not name and not cls:
            return None
        out = {'name': name, 'class': cls, 'instance_methods': [], 'class_methods': [],
               'protocols': [], 'properties': []}
        m = self.pointed(vm + 16)
        if m[0]:
            out['instance_methods'] = self.methods_at(m[1])
        m = self.pointed(vm + 24)
        if m[0]:
            out['class_methods'] = self.methods_at(m[1])
        m = self.pointed(vm + 40)
        if m[0]:
            out['properties'] = self.properties_at(m[1])
        return out

    def imports(self):
        out = set()
        for off, v in self.fixups.items():
            if v[0] == 'bind' and v[1]:
                out.add(v[1])
        for a, s in self._binds_by_addr.items():
            if s:
                out.add(s)
        return sorted(out)

    def symbols(self):
        res = []
        if not self.symtab:
            return res
        symoff, nsyms, stroff, strsize = self.symtab
        for i in range(nsyms):
            o = symoff + i * 16
            if o + 16 > len(self.data):
                break
            strx, ntype, sect, desc, value = struct.unpack_from('<IBBHQ', self.data, o)
            nm = cstr(self.data, stroff + strx)
            if nm:
                res.append({'name': nm, 'type': ntype, 'sect': sect, 'value': value})
        return res


def load_slices(path):
    d = open(path, 'rb').read()
    head = d[:4]
    fam = None
    if head in (b'\xca\xfe\xba\xbe', b'\xca\xfe\xba\xbf'):
        fam = '>'
    elif head in (b'\xbe\xba\xfe\xca', b'\xbf\xba\xfe\xca'):
        fam = '<'
    if fam:
        n = struct.unpack_from(fam + 'I', d, 4)[0]
        o = 8
        out = []
        for _ in range(n):
            cput, sub, off, size, align = struct.unpack_from(fam + 'IIIII', d, o)
            o += 20
            out.append((cput, sub, d[off:off + size]))
        return out
    return [(u32(d, 4), u32(d, 8), d)]


if __name__ == '__main__':
    for cput, sub, sl in load_slices(sys.argv[1]):
        m = MachO(sl, sys.argv[1])
        print('cpu=%x sub=%x segs=%d sects=%d chained=%s syms=%d' % (
            cput, sub, len(m.segments), len(m.sections), bool(m.chained),
            m.symtab[1] if m.symtab else 0))
        for s in m.sections:
            if s.size:
                print('  ', s)
