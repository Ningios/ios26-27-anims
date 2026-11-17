# Reborn Beta 1 简体中文汉化

作者：Ning&bazik1337

基于官方 `reborn-v1.0.0-beta.1` 的 **iphoneos-arm64 无根包**制作。新增简体中文资源，翻译设置页、关于页、重置确认弹窗及说明文字。设置入口和包显示名改为「iOS 27 动画 Reborn」，原产品标识与作者链接保留。

本目录是资源汉化及重打包工程，**没有插件实现源码**。动画 dylib 和设置可执行文件保持官方原字节及内嵌签名；动画逻辑、设置键、默认值、Darwin 通知和动作 selector 均不修改。

## 重新打包

Python 3.9+，只需标准库。下载原包并运行：

```sh
curl -fL 'https://github.com/Ningios/ios26-27-anims/releases/download/reborn-v1.0.0-beta.1/com.bazik1337.ios27animsreborn_1.0.0.beta1_iphoneos-arm64.deb' -o original.deb
python3 localization/reborn-zh-Hans/repack.py original.deb localized.deb
```

脚本检查原包 SHA256 `5b5d92c5a61f6104f730cb93ded8ddba8f479e962c51aa504f75c36d3a2ec835`，产出版本 `1.0.0~beta1+ningzh1`，同时写出包的 SHA256、SHA1、MD5 和资源差异回执。

- 21 个文案键覆盖官方完整英文词表，`Root` / `About` / `Localizable` 三张表一致。
- `zh-Hans.lproj` 及通用 `zh.lproj` 同时提供；设置 plist 的可见文案也写入中文兜底。
- 保留原英文、俄文资源，设置 bundle 声明中文本地化。
- 保留官方 `var/jb` 布局、依赖及 `iphoneos-arm64` 包架构；原两个程序包含 arm64 与真实 arm64e 切片。这不等同于独立适配 RootHide 的 `iphoneos-arm64e` 安装包。
- 重算 Installed-Size，生成完整 md5sums，包作者署名为 `Ning&bazik1337`。
- 未发布到软件源；不会通过此脚本安装插件或注销桌面。

## 验证边界

在本地检查资源解析、中文词表完整性、原设置键/默认值/动作不变、程序逐字相同、deb 结构与校验和。没有在 iOS 设备上安装或验证设置页布局、系统语言选择及原版 beta 动画的兼容性。上游仅说明 iOS 15–16；不能据此认定 iOS 17 已验证兼容。
