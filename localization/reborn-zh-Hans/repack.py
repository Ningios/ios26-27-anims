#!/usr/bin/env python3
"""Resource-only Chinese localization of the official Reborn beta deb."""
import argparse, copy, gzip, hashlib, io, json, pathlib, plistlib, tarfile

HERE = pathlib.Path(__file__).resolve().parent
PREFIX = 'var/jb/Library/PreferenceBundles/iOS27AnimsRebornPrefs.bundle/'
ENTRY = 'var/jb/Library/PreferenceLoader/Preferences/iOS27AnimsRebornPrefs.plist'
NAME = 'iOS 27 动画 Reborn'

def sha(data):
    return hashlib.sha256(data).hexdigest()

def read_ar(data):
    assert data[:8] == b'!<arch>\n', 'Not a Debian ar archive'
    result = {}
    offset = 8
    while offset < len(data):
        header = data[offset:offset+60]
        assert len(header) == 60 and header[58:60] == b'`\n'
        size = int(header[48:58])
        name = header[:16].decode('ascii').strip().rstrip('/')
        assert name not in result
        result[name] = data[offset+60:offset+60+size]
        offset += 60 + size + size % 2
    assert offset == len(data)
    return result

def read_tar(blob):
    with tarfile.open(fileobj=io.BytesIO(blob), mode='r:*') as archive:
        result = []
        for member in archive.getmembers():
            name = member.name.removeprefix('./').rstrip('/')
            assert not name.startswith('/') and '..' not in pathlib.PurePosixPath(name).parts
            result.append((copy.copy(member), archive.extractfile(member).read() if member.isfile() else None))
        return result

def tar_gz(entries):
    stream = io.BytesIO()
    with tarfile.open(fileobj=stream, mode='w', format=tarfile.USTAR_FORMAT) as archive:
        for member, raw in entries:
            member = copy.copy(member)
            member.pax_headers = {}
            if raw is not None:
                member.size = len(raw)
            archive.addfile(member, None if raw is None else io.BytesIO(raw))
    return gzip.compress(stream.getvalue(), compresslevel=9, mtime=0)

def make_ar(entries):
    output = bytearray(b'!<arch>\n')
    for name, raw in entries:
        header = f'{name + "/":<16}{0:<12}{0:<6}{0:<6}{"100644":<8}{len(raw):<10}`\n'.encode('ascii')
        assert len(header) == 60
        output += header + raw + (b'\n' if len(raw) % 2 else b'')
    return bytes(output)

def resource(raw, translations):
    if isinstance(raw, dict):
        result = dict(raw)
        for key in ('label', 'title', 'footerText'):
            if isinstance(result.get(key), str):
                if result[key] == 'iOS 27 Animations Reborn':
                    result[key] = NAME
                else:
                    result[key] = translations.get(result[key], result[key])
        return {k: resource(v, translations) for k, v in result.items()}
    if isinstance(raw, list):
        return [resource(item, translations) for item in raw]
    return raw

def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('original', type=pathlib.Path)
    parser.add_argument('output', type=pathlib.Path)
    args = parser.parse_args()
    original = args.original.read_bytes()
    origin = json.loads((HERE / 'original.json').read_text())
    assert sha(original) == origin['asset_sha256'] and len(original) == origin['asset_bytes'], 'Wrong original deb'
    translations = json.loads((HERE / 'translations.json').read_text())
    source = read_ar(original)
    assert source['debian-binary'] == b'2.0\n'
    data_key = next(k for k in source if k.startswith('data.tar'))
    control_key = next(k for k in source if k.startswith('control.tar'))
    payload = read_tar(source[data_key])
    controls = read_tar(source[control_key])
    before = {m.name.removeprefix('./').rstrip('/'): (m, raw) for m, raw in payload}
    assert not any('_CodeSignature' in name for name in before), 'Bundle resource seal requires resigning'
    english = plistlib.loads(before[PREFIX + 'en.lproj/Root.strings'][1])
    assert set(translations) == set(english) and len(translations) == 21
    changed = []
    modified = []
    for member, raw in payload:
        name = member.name.removeprefix('./').rstrip('/')
        replacement = raw
        if name in (PREFIX + 'Root.plist', PREFIX + 'About.plist', ENTRY):
            replacement = plistlib.dumps(resource(plistlib.loads(raw), translations), fmt=plistlib.FMT_BINARY, sort_keys=False)
        elif name == PREFIX + 'Info.plist':
            info = plistlib.loads(raw)
            info['CFBundleDevelopmentRegion'] = 'zh-Hans'
            info['CFBundleLocalizations'] = ['zh-Hans', 'zh', 'en', 'ru']
            replacement = plistlib.dumps(info, fmt=plistlib.FMT_BINARY, sort_keys=False)
        if replacement != raw:
            changed.append({'path': name, 'before': sha(raw), 'after': sha(replacement)})
        modified.append((member, replacement))
    template = before[PREFIX + 'en.lproj'][0]
    for locale in ('zh-Hans', 'zh'):
        folder = copy.copy(template)
        folder.name = PREFIX + locale + '.lproj'
        folder.size = 0
        modified.append((folder, None))
        for table in ('Root.strings', 'About.strings', 'Localizable.strings'):
            raw = (HERE / 'zh-Hans.lproj' / table).read_bytes()
            assert plistlib.loads(raw) == translations
            member = copy.copy(before[PREFIX + 'en.lproj/Root.strings'][0])
            member.name = PREFIX + locale + '.lproj/' + table
            member.size = len(raw)
            modified.append((member, raw))
    installed_size = sum((len(raw) + 1023) // 1024 for m, raw in modified if raw is not None)
    control_fields = {
        'Name': NAME + '（简体中文）',
        'Description': 'Reborn 重做版简体中文汉化：神灯应用开关动画、小组件动画及通知中心。',
        'Version': origin['localized_version'],
        'Maintainer': 'Ning&bazik1337 <https://t.me/bazik1337>',
        'Author': 'Ning&bazik1337 <https://t.me/bazik1337>',
        'Installed-Size': str(installed_size),
    }
    for index, (member, raw) in enumerate(controls):
        name = member.name.removeprefix('./')
        if name == 'control':
            lines = []
            seen = set()
            for line in raw.decode().splitlines():
                key = line.split(':', 1)[0]
                if key in control_fields:
                    line = key + ': ' + control_fields[key]
                    seen.add(key)
                lines.append(line)
            assert seen == set(control_fields)
            controls[index] = member, ('\n'.join(lines) + '\n').encode()
    md5sums = ''.join(hashlib.md5(raw).hexdigest() + '  ' + m.name.removeprefix('./') + '\n'
                      for m, raw in modified if raw is not None).encode()
    md5_member = tarfile.TarInfo('./md5sums')
    md5_member.mode, md5_member.uid, md5_member.gid = 0o644, 0, 0
    controls = [(m, raw) for m, raw in controls if m.name.removeprefix('./') != 'md5sums']
    controls.append((md5_member, md5sums))
    output = make_ar([('debian-binary', b'2.0\n'), ('control.tar.gz', tar_gz(controls)), ('data.tar.gz', tar_gz(modified))])
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_bytes(output)
    receipt = {'original_sha256': sha(original), 'output': args.output.name, 'size': len(output),
        'sha256': sha(output), 'md5': hashlib.md5(output).hexdigest(), 'sha1': hashlib.sha1(output).hexdigest(),
        'version': origin['localized_version'], 'architecture': origin['architecture'], 'layout': origin['layout'],
        'translation_keys': len(translations), 'modified_resources': changed,
        'added_files': [m.name for m, raw in modified if m.name.removeprefix('./').rstrip('/') not in before and raw is not None],
        'preserved_original_programs': {name: sha(raw) for name, (m, raw) in before.items() if raw and raw[:4] == b'\xca\xfe\xba\xbe'}}
    args.output.with_suffix('.json').write_text(json.dumps(receipt, ensure_ascii=False, indent=2) + '\n')
    print(json.dumps(receipt, ensure_ascii=False, indent=2))

if __name__ == '__main__':
    main()
