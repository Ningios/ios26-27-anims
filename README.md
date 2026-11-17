# iOS 27 动画 Reborn — 逆向复刻源码

原包：`iOS27_Animations_Reborn_Beta1_zh_Hans_RootHide_iphoneos_arm64e.deb`
（`com.bazik1337.ios27animsreborn` 1.0.0~beta1+ningzh1，roothide，arm64+arm64e）

本工程是从该二进制逆向还原的完整 Theos 工程，可直接 `make package` 出 deb。

## 拆出来的实际情况

| 项目 | 数值 |
|------|------|
| 主二进制 | 374272 字节 fat（arm64 177648 / arm64e 177664） |
| 类 | 1 个（`CG27GenieDriver`，父类 NSObject，实例 1296 字节） |
| 方法 | 100（98 个实例 + 2 个类方法级别入口，类型编码逐条对位） |
| ivar | 63（偏移、类型编码、大小全部还原） |
| 属性 | 38（attributes 逐条还原） |
| Hook 点 | 41 处 `MSHookMessageEx` |
| 字符串常量 | 625 条 |
| 设置面板 | 3 个类 / 13 个方法 |
| 资源 | 18 个文件（plist / 6 组 strings / 3 个图标） |

值得注意：**arm64 切片是空壳**——只有 51 个导入、73 KB 代码，没有 `MSHookMessageEx`；
完整实现只在 arm64e 切片里（137 个导入、76 KB 代码）。所以复刻以 arm64e 为准。

## 它做了什么

1. **神灯（genie）应用开关动画**：`CG27GenieDriver` 维护一个 3×3 网格 + 弹簧解析解积分，
   每帧把网格算成 `CAMutableMeshTransform` 挂到容器图层和图标图层上，
   实现图标从应用界面收拢/展开时的变形。
2. **通知中心透明化**：hook `CSCoverSheetTransitionsSettings` 等一批 cover sheet 设置类，
   关掉面板壁纸、模糊、变暗，实现"透明背景"。
3. **抓取条（grabber）处理**：hook `SBHomeGrabberView`，动画期间隐藏抓取条并恢复。
4. **徽标复制**：`makeBadgeCopy` / `placeBadgeCopy` 把角标渲染成图片跟随变形。
5. **原生壁纸缩放**：`native*` 一族在开启"系统壁纸缩放"时接管系统原有参数。

## 目录

```
Makefile          主工程（tweak）
control           包元数据（与原版一致）
src/              全部源码（Core / Shared / Tweak / Prefs）
prefs/            PreferenceBundle 子工程 + 资源
layout/           静态资源（与原包逐字节一致）
reference/        原版二进制 + 原始 control（比对用，不参与打包）
docs/             校验报告、Hook 表、方法表、141 个函数的反汇编
tools/            解析器、符号执行、文档生成、两套校验脚本
```

## 构建

```bash
export THEOS=/opt/theos
make package
# packages/com.bazik1337.ios27animsreborn_1.0.0~beta1+rebuild_iphoneos-arm64e.deb
```

默认 roothide；rootless 在 `Makefile` 里打开 `ROOTLESS = 1`。

## 验证

```bash
python3 tools/verify.py         # 结构对账：ivar / 属性 / 方法 / hook / 资源哈希
python3 tools/check_syntax.py   # libclang 语法分析（需 libclang，附最小头文件桩）
python3 tools/gen_docs.py       # 重新生成文档表格
```

当前结果：`verify.py` 全项 PASS；`check_syntax.py` 6 个源文件 0 error。

## 说明

- 类、方法、ivar、属性、类型编码、hook 点、资源都是二进制里实测还原的，不是猜的。
- 方法体是**等价重建**：核心数学（弹簧解析解、网格混合、双线性采样、网格构建）逐指令还原；
  其余按反汇编的调用顺序与判定条件还原，每个方法都标注了原版 IMP 地址，原始汇编在 `docs/asm/`。
- 本机无 iOS SDK / Theos，因此**没有编译产物，也没有上机验证**；需要你在自己的环境出包。
- Hook 依赖 SpringBoard 私有类，随系统版本可能变化（原版同样如此）。
