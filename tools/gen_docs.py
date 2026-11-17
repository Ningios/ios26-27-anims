#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Render the documentation tables from the extracted metadata."""
import json, os

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
T = os.path.join(ROOT, 'tools')
D = os.path.join(ROOT, 'docs')

main = json.load(open(os.path.join(T, 'main_arm64e.json')))
hooks = json.load(open(os.path.join(T, 'hooks_final.json')))
funcs = json.load(open(os.path.join(T, 'functions.json')))
cls = main['classes'][0]


def hook_rows():
    rows = ['| # | 安装点 | 类 | 选择器 | 替换实现 |', '|---|--------|----|--------|----------|']
    for i, h in enumerate(hooks, 1):
        rows.append('| %d | `0x%x` | `%s` | `%s` | `0x%x` |' % (
            i, h['site'], h['cls'], h['sel'], h['imp'] or 0))
    return rows


def method_rows():
    rows = ['| IMP | 选择器 | 类型编码 |', '|-----|--------|----------|']
    for m in cls['methods']:
        rows.append('| `0x%x` | `%s` | `%s` |' % (m['imp'], m['name'], m['types']))
    return rows


def ivar_rows():
    rows = ['| 偏移 | ivar | 类型编码 | 大小 |', '|------|------|----------|------|']
    for iv in cls['ivars']:
        rows.append('| `+%d` | `%s` | `%s` | %d |' % (
            iv['offset'], iv['name'], iv['type'], iv['size']))
    return rows


def prop_rows():
    rows = ['| 属性 | attributes |', '|------|------------|']
    for p in cls['properties']:
        rows.append('| `%s` | `%s` |' % (p['name'], p['attributes']))
    return rows


def write_hooks():
    body = ['# Hook 点清单',
            '',
            '原版在初始化函数 `0xb984` 里连续注册 41 个 `MSHookMessageEx`，',
            '随后在 `0xc0a4` 注册 Darwin 通知 `com.bazik1337.ios27animsreborn/changed`。',
            '下表由反汇编回溯寄存器得到（类名来自 `NSClassFromString` 的字符串常量，',
            '选择器来自 `__objc_selrefs` 槽位，替换实现来自 `x2` 的计算结果）。',
            '']
    body += hook_rows()
    body += ['', '## 按类统计', '']
    counts = {}
    for h in hooks:
        counts[h['cls']] = counts.get(h['cls'], 0) + 1
    for k in sorted(counts):
        body.append('- `%s`：%d 处' % (k, counts[k]))
    open(os.path.join(D, 'HOOKS.md'), 'w').write('\n'.join(body) + '\n')


def write_methods():
    body = ['# 方法表（%d 个）' % len(cls['methods']),
            '',
            '`CG27GenieDriver` 是二进制里唯一的类，父类 `NSObject`，',
            '实例大小 %d 字节，实例起始偏移 %d。' % (cls['instance_size'], cls['instance_start']),
            '',
            '完整反汇编见 `docs/asm/`，文件名格式 `CG27GenieDriver_<选择器>.asm`。',
            '']
    body += method_rows()
    body += ['', '## 属性（%d 个）' % len(cls['properties']), '']
    body += prop_rows()
    body += ['', '## ivar（%d 个）' % len(cls['ivars']), '']
    body += ivar_rows()
    open(os.path.join(D, 'METHODS.md'), 'w').write('\n'.join(body) + '\n')


def write_metadata():
    strings = main['strings']
    body = ['# 元数据对照',
            '',
            '## 基本信息',
            '',
            '| 项目 | 值 |',
            '|------|----|',
            '| 包标识 | `com.bazik1337.ios27animsreborn` |',
            '| 版本 | `1.0.0~beta1+ningzh1` |',
            '| 架构 | arm64 + arm64e（fat） |',
            '| 主二进制 | 374272 字节（fat），arm64e 切片 177664 字节 |',
            '| 设置面板二进制 | 169360 字节（fat） |',
            '| 类 | %d |' % len(main['classes']),
            '| 方法 | %d |' % len(cls['methods']),
            '| ivar | %d |' % len(cls['ivars']),
            '| 属性 | %d |' % len(cls['properties']),
            '| 字符串常量 | %d |' % len(strings),
            '| 导入符号 | 137 |',
            '',
            '## 字符串常量（全部）',
            '',
            '```']
    body += strings
    body += ['```', '']
    open(os.path.join(D, 'METADATA.md'), 'w').write('\n'.join(body) + '\n')


def write_functions():
    body = ['# 函数级反汇编索引',
            '',
            '共 %d 个函数/方法入口（含 41 个 hook 替换实现）。' % len(funcs),
            '',
            '| 反汇编文件 | 所属 | 入口 | 指令数 |',
            '|-----------|------|------|--------|']
    for name in sorted(funcs, key=lambda k: funcs[k]['addr']):
        v = funcs[name]
        rel = os.path.basename(v['file'])
        body.append('| `%s` | %s | `0x%x` | %d |' % (rel, v['owner'], v['addr'], v['insns']))
    open(os.path.join(D, 'FUNCTIONS.md'), 'w').write('\n'.join(body) + '\n')


write_hooks()
write_methods()
write_metadata()
write_functions()
print('docs written')
