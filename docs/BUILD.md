# 构建说明

## 环境

- Theos（含 iOS SDK 15.0 以上）
- 原包为 **roothide** 方案；本工程默认同一方案，切 rootless 只需在 `Makefile` 里打开 `ROOTLESS = 1`
- 依赖：`mobilesubstrate`、`preferenceloader`

## 编译

```bash
export THEOS=/opt/theos
cd iOS27AnimsReborn
make package                 # 产出 packages/com.bazik1337.ios27animsreborn_*.deb
make package DEBUG=0         # 发布版
```

编译产物结构：

| 产物 | 安装位置 |
|------|----------|
| `iOS27AnimsReborn.dylib` | `/Library/MobileSubstrate/DynamicLibraries/` |
| `iOS27AnimsReborn.plist` | 同上（Filter: `com.apple.springboard`） |
| `iOS27AnimsRebornPrefs.bundle` | `/Library/PreferenceBundles/` |
| `iOS27AnimsRebornPrefs.plist` | `/Library/PreferenceLoader/Preferences/` |

## 目录

```
iOS27AnimsReborn/
├── Makefile                    主工程（tweak）
├── control                     包元数据（与原版一致，仅版本号改为 rebuild）
├── src/
│   ├── Core/
│   │   ├── CG27GenieDriver.h    类声明：100 方法 / 63 ivar / 38 属性
│   │   ├── CG27GenieDriver.m    方法实现（逐条标注原版 IMP）
│   │   ├── CG27Spring.h/.m      弹簧解析解 / 网格构建 / 双线性采样
│   ├── Shared/
│   │   ├── CG27Globals.h/.m     活跃 driver 全局表
│   │   ├── CG27Prefs.h/.m       CFPreferences 配置读取 + Darwin 通知
│   ├── Tweak/
│   │   └── Tweak.m              41 个 MSHookMessageEx + 初始化
│   └── Prefs/
│       └── CG27RebornPrefs.h/.m 设置面板 3 个类
├── prefs/                      PreferenceBundle 子工程 + 资源
├── layout/                     静态资源归位（内容与原包一致）
├── reference/binaries/         原版二进制（比对用，不参与打包）
├── docs/                       校验报告 / Hook 表 / 方法表 / 反汇编清单
└── tools/                      解析、回溯、校验脚本
```

## 配置键

| 键 | 默认 | 说明 |
|----|------|------|
| `Enabled` | NO | 总开关 |
| `AppAnimations` | YES | 应用开关动画（神灯） |
| `NativeWallpaperZoom` | NO | 使用系统壁纸缩放 |
| `IconFlyIn` | YES | 通知中心图标动画 |
| `ClearSheet` | YES | 通知中心透明背景 |

域：`com.bazik1337.ios27animsreborn`；变更通知：`com.bazik1337.ios27animsreborn/changed`。

## 验证

```bash
python3 tools/verify.py        # 结构对账（ivar / 属性 / 方法 / hook / 资源哈希）
```
