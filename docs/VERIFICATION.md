# 校验报告

## 一、还原范围

原始包：`com.bazik1337.ios27animsreborn` `1.0.0~beta1+ningzh1`（roothide / iphoneos-arm64e，140 KB）
逆向所得：`CG27GenieDriver`（唯一类）+ 41 个 Hook 点 + 设置面板 3 个类 + 18 个资源文件。

## 二、逐项对位结果

| 项目 | 原版 | 重建 | 结果 |
|------|------|------|------|
| 类 | 1 | 1 | 一致 |
| 方法 | 100 | 100 | 一致 |
| ivar | 63（含偏移/类型编码） | 63 | 逐条一致，实例大小 1296 |
| 属性 | 38（含 attributes） | 38 | 逐条一致 |
| 协议 | 0 | 0 | 一致 |
| 方法类型编码 | 100 | 100 | 逐条一致 |
| Hook 点 | 41 | 41 | 类名 / 选择器 / 替换实现全部一致 |
| 字符串常量 | 625 | 原样收录于 `docs/METADATA.md` | 一致 |
| 资源文件 | 18（plist / strings / 图标） | 18 | SHA-256 全部一致 |
| 设置面板类 | 3（13 个方法） | 3（13 个方法） | 一致 |

`tools/verify.py` 会自动核对以上各项，当前输出 `ALL PASS`。

## 三、方法体的还原程度

二进制没有调试信息，因此不存在"原厂逐行源码"这种东西——任何声称拿到的都要打问号。
本工程按下面的深度还原：

### 逐指令还原（公式级一致）

- `CG27EngineStep()`（原 `sub_5b9c` @0x5b9c）：弹簧**解析解**积分，临界阻尼 / 欠阻尼 / 过阻尼三个分支的公式、2π 系数、1e-6 收敛阈值都与反汇编一致。
- `CG27EngineSampleXY()`（原 `-engine:xy:` @0x50c4）：网格进度混合公式 `(1-ms)(1-b)+ms / (1-b)(1-ms·gs)+ms·gs`，中心点收缩 + 水平修饰项逐项还原。
- `CG27MeshFromGrid()`（原 `sub_5260` @0x5260）：9 顶点 `{u,v,x,y,z}` + 4 个四边形 `(i, i+1, i+4, i+3)`，`setSubdivisionSteps:-1`，常量 `{1.0f, 2.0f}`（@0x19ae0）实测确认。
- `CG27GridSample()`（原 `-deformAccessoryPoint:` @0x831c）：3×3 双线性插值，权重与采样顺序逐条对位。
- `-start` / `-stop`：CADisplayLink 建立与拆除，帧率区间 80–120Hz（`0x42a00000` / `0x42f00000`）、`highFrameRateReason`、`NSRunLoopCommonModes` 均与原版一致。
- `-tick:`：时间基准、`UIAnimationDragCoefficient` 双倍超时、窗口存在性判断。
- `-advance:`：容器 bounds 有效性判定（宽>1、高介于宽±1、宽≈屏幕宽）与原版同构。

### 结构级还原（调用序列一致）

`-applyMeshWithLead:at:frame:`、`-meshForIcon:`、`-meshIcons:`、`-makeBadgeCopy`、
`-placeBadgeCopy`、`-updateGlassRim`、`-ensureGlassRimAt:`、`-finish`、
`-nativeLoadEngine:` / `-nativeSetUpWithContainer:targetActive:` / `-nativePerform:` /
`-nativeBounds:of:` / `-nativeUpdate:` / `-nativeSample:` / `-nativeStop`
以及 41 个 Hook 替换函数：按反汇编还原的调用顺序、条件判定与状态读写，
其中每个方法都标注了原版 IMP 地址，原始反汇编在同名文件里（`docs/asm/`）。

## 四、可复核性

包内提供完整工具链（`tools/`），可脱离本工程独立复核：

```bash
python3 tools/machoparse.py reference/binaries/iOS27AnimsReborn.orig.dylib   # segment / section 总览
python3 tools/symexec.py   reference/binaries/iOS27AnimsReborn.orig.dylib   # 41 个 hook 的符号执行回溯
python3 tools/gen_docs.py                                                    # 重新生成文档表格
python3 tools/verify.py                                                      # 结构对账
```

`reference/binaries/` 保留原版 dylib 与设置面板二进制，便于逐函数比对。
`docs/asm/` 里是 141 个入口的完整反汇编（含 41 个 Hook 替换实现）。

## 五、已知边界（必须说明）

1. **本机没有 iOS SDK 与 Theos**，因此这一版验证到的是三层：
   - 元数据层：类 / 方法 / ivar / 属性 / 类型编码，`tools/verify.py` 自动对账；
   - 语法层：用 libclang 对 6 个源文件做 Objective-C（ARC）解析，**0 error**
     （`tools/check_syntax.py`，配套 `tools/stubs/` 最小头文件桩，因本机无 iOS SDK）；
   - 反汇编层：每个实现都有对应的原始汇编清单（`docs/asm/`）。
   **没有真机编译产物，也没有上机运行** —— 需要你在自己的 Theos 环境 `make package` 出 deb。
2. 方法体是等价重建，不是原厂源码。行为在语义层对齐，个别魔法数值（例如玻璃环圆角、
   徽标复制时机）在无符号对照的情况下按反汇编常量推定。
3. Hook 依赖 SpringBoard 私有类，类名或选择器随系统版本变化；原版同样依赖这些私有接口。
