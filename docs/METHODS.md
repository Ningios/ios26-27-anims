# 方法表（100 个）

`CG27GenieDriver` 是二进制里唯一的类，父类 `NSObject`，
实例大小 1296 字节，实例起始偏移 8。

完整反汇编见 `docs/asm/`，文件名格式 `CG27GenieDriver_<选择器>.asm`。

| IMP | 选择器 | 类型编码 |
|-----|--------|----------|
| `0x4000` | `updateGlassRim` | `v16@0:8` |
| `0x44c0` | `ensureGlassRimAt:` | `v24@0:8d16` |
| `0x451c` | `restoreMovingGrabbers` | `v16@0:8` |
| `0x47c0` | `start` | `v16@0:8` |
| `0x4944` | `stop` | `v16@0:8` |
| `0x50c4` | `engine:xy:` | `v32@0:8r^{?=[9[2d]][9[2d]][9[2d]][9d]ddddddddB}16^[2d]24` |
| `0x51f0` | `meshForEngine:` | `@24@0:8r^{?=[9[2d]][9[2d]][9[2d]][9d]ddddddddB}16` |
| `0x53a0` | `applyMeshWithLead:at:frame:` | `v40@0:8d16d24d32` |
| `0x649c` | `tick:` | `v24@0:8@16` |
| `0x809c` | `meshIcons:` | `v24@0:8@16` |
| `0x831c` | `deformAccessoryPoint:` | `{CGPoint=dd}32@0:8{CGPoint=dd}16` |
| `0x83b0` | `meshForIcon:` | `@24@0:8@16` |
| `0x86e4` | `makeBadgeCopy` | `v16@0:8` |
| `0x8a00` | `placeBadgeCopy` | `v16@0:8` |
| `0x8fe4` | `advance:` | `v24@0:8d16` |
| `0x9728` | `nativeLoadEngine:` | `v20@0:8B16` |
| `0x9984` | `nativeSetUpWithContainer:targetActive:` | `v28@0:8@16B24` |
| `0x9f04` | `nativePerform:` | `v20@0:8B16` |
| `0xa1a8` | `nativeBounds:of:` | `v56@0:8{CGRect={CGPoint=dd}{CGSize=dd}}16@48` |
| `0xa438` | `nativeUpdate:` | `v20@0:8B16` |
| `0xa8a0` | `nativeSample:` | `v24@0:8d16` |
| `0xb1e8` | `nativeStop` | `v16@0:8` |
| `0xb4a4` | `finish` | `v16@0:8` |
| `0xb52c` | `native` | `B16@0:8` |
| `0xb534` | `setNative:` | `v20@0:8B16` |
| `0xb53c` | `nativeActive` | `B16@0:8` |
| `0xb544` | `setNativeActive:` | `v20@0:8B16` |
| `0xb54c` | `nativeMeshToken` | `@16@0:8` |
| `0xb554` | `setNativeMeshToken:` | `v24@0:8@16` |
| `0xb560` | `icon` | `{CGRect={CGPoint=dd}{CGSize=dd}}16@0:8` |
| `0xb574` | `setIcon:` | `v48@0:8{CGRect={CGPoint=dd}{CGSize=dd}}16` |
| `0xb588` | `genieScale` | `d16@0:8` |
| `0xb590` | `setGenieScale:` | `v24@0:8d16` |
| `0xb598` | `response` | `d16@0:8` |
| `0xb5a0` | `setResponse:` | `v24@0:8d16` |
| `0xb5a8` | `zeta` | `d16@0:8` |
| `0xb5b0` | `setZeta:` | `v24@0:8d16` |
| `0xb5b8` | `layoutSettings` | `@16@0:8` |
| `0xb5c0` | `setLayoutSettings:` | `v24@0:8@16` |
| `0xb5cc` | `container` | `@16@0:8` |
| `0xb5f8` | `setContainer:` | `v24@0:8@16` |
| `0xb604` | `accessory` | `@16@0:8` |
| `0xb630` | `setAccessory:` | `v24@0:8@16` |
| `0xb63c` | `accessorySearches` | `i16@0:8` |
| `0xb644` | `setAccessorySearches:` | `v20@0:8i16` |
| `0xb64c` | `appLayout` | `@16@0:8` |
| `0xb654` | `setAppLayout:` | `v24@0:8@16` |
| `0xb660` | `startTime` | `d16@0:8` |
| `0xb668` | `setStartTime:` | `v24@0:8d16` |
| `0xb670` | `lastTime` | `d16@0:8` |
| `0xb678` | `setLastTime:` | `v24@0:8d16` |
| `0xb680` | `intensity` | `d16@0:8` |
| `0xb688` | `setIntensity:` | `v24@0:8d16` |
| `0xb690` | `sawLayout` | `B16@0:8` |
| `0xb698` | `setSawLayout:` | `v20@0:8B16` |
| `0xb6a0` | `renderedB` | `d16@0:8` |
| `0xb6a8` | `setRenderedB:` | `v24@0:8d16` |
| `0xb6b0` | `retargeted` | `B16@0:8` |
| `0xb6b8` | `setRetargeted:` | `v20@0:8B16` |
| `0xb6c0` | `accessoryOverflows` | `B16@0:8` |
| `0xb6c8` | `setAccessoryOverflows:` | `v20@0:8B16` |
| `0xb6d0` | `iconFits` | `B16@0:8` |
| `0xb6d8` | `setIconFits:` | `v20@0:8B16` |
| `0xb6e0` | `iconMeshViews` | `@16@0:8` |
| `0xb6e8` | `setIconMeshViews:` | `v24@0:8@16` |
| `0xb6f4` | `link` | `@16@0:8` |
| `0xb6fc` | `setLink:` | `v24@0:8@16` |
| `0xb708` | `owner` | `@16@0:8` |
| `0xb734` | `setOwner:` | `v24@0:8@16` |
| `0xb740` | `previousMesh` | `@16@0:8` |
| `0xb748` | `setPreviousMesh:` | `v24@0:8@16` |
| `0xb754` | `appliedMesh` | `@16@0:8` |
| `0xb75c` | `setAppliedMesh:` | `v24@0:8@16` |
| `0xb768` | `openingShade` | `@16@0:8` |
| `0xb770` | `setOpeningShade:` | `v24@0:8@16` |
| `0xb77c` | `shadeStartTime` | `d16@0:8` |
| `0xb784` | `setShadeStartTime:` | `v24@0:8d16` |
| `0xb78c` | `glassRim` | `@16@0:8` |
| `0xb794` | `setGlassRim:` | `v24@0:8@16` |
| `0xb7a0` | `glassBeginTime` | `d16@0:8` |
| `0xb7a8` | `setGlassBeginTime:` | `v24@0:8d16` |
| `0xb7b0` | `grabbers` | `@16@0:8` |
| `0xb7b8` | `setGrabbers:` | `v24@0:8@16` |
| `0xb7c4` | `movingGrabbers` | `@16@0:8` |
| `0xb7cc` | `setMovingGrabbers:` | `v24@0:8@16` |
| `0xb7d8` | `movingGrabberToken` | `@16@0:8` |
| `0xb7e0` | `setMovingGrabberToken:` | `v24@0:8@16` |
| `0xb7ec` | `movingGrabberSearches` | `Q16@0:8` |
| `0xb7f4` | `setMovingGrabberSearches:` | `v24@0:8Q16` |
| `0xb7fc` | `badge` | `@16@0:8` |
| `0xb828` | `setBadge:` | `v24@0:8@16` |
| `0xb834` | `badgeCopy` | `@16@0:8` |
| `0xb83c` | `setBadgeCopy:` | `v24@0:8@16` |
| `0xb848` | `badgeSearches` | `i16@0:8` |
| `0xb850` | `setBadgeSearches:` | `v20@0:8i16` |
| `0xb858` | `iconWidth` | `d16@0:8` |
| `0xb860` | `setIconWidth:` | `v24@0:8d16` |
| `0xb868` | `opening` | `B16@0:8` |
| `0xb870` | `setOpening:` | `v20@0:8B16` |
| `0xb878` | `.cxx_destruct` | `v16@0:8` |

## 属性（38 个）

| 属性 | attributes |
|------|------------|
| `native` | `TB,N,V_native` |
| `nativeActive` | `TB,N,V_nativeActive` |
| `nativeMeshToken` | `T@,&,N,V_nativeMeshToken` |
| `icon` | `T{CGRect={CGPoint=dd}{CGSize=dd}},N,V_icon` |
| `genieScale` | `Td,N,V_genieScale` |
| `response` | `Td,N,V_response` |
| `zeta` | `Td,N,V_zeta` |
| `layoutSettings` | `T@,&,N,V_layoutSettings` |
| `container` | `T@"UIView",W,N,V_container` |
| `accessory` | `T@"UIView",W,N,V_accessory` |
| `accessorySearches` | `Ti,N,V_accessorySearches` |
| `appLayout` | `T@,&,N,V_appLayout` |
| `startTime` | `Td,N,V_startTime` |
| `lastTime` | `Td,N,V_lastTime` |
| `intensity` | `Td,N,V_intensity` |
| `sawLayout` | `TB,N,V_sawLayout` |
| `renderedB` | `Td,N,V_renderedB` |
| `retargeted` | `TB,N,V_retargeted` |
| `accessoryOverflows` | `TB,N,V_accessoryOverflows` |
| `iconFits` | `TB,N,V_iconFits` |
| `iconMeshViews` | `T@"NSHashTable",&,N,V_iconMeshViews` |
| `link` | `T@"CADisplayLink",&,N,V_link` |
| `owner` | `T@,W,N,V_owner` |
| `previousMesh` | `T@,&,N,V_previousMesh` |
| `appliedMesh` | `T@,&,N,V_appliedMesh` |
| `openingShade` | `T@"CALayer",&,N,V_openingShade` |
| `shadeStartTime` | `Td,N,V_shadeStartTime` |
| `glassRim` | `T@"CALayer",&,N,V_glassRim` |
| `glassBeginTime` | `Td,N,V_glassBeginTime` |
| `grabbers` | `T@"NSHashTable",&,N,V_grabbers` |
| `movingGrabbers` | `T@"NSHashTable",&,N,V_movingGrabbers` |
| `movingGrabberToken` | `T@,&,N,V_movingGrabberToken` |
| `movingGrabberSearches` | `TQ,N,V_movingGrabberSearches` |
| `badge` | `T@"UIView",W,N,V_badge` |
| `badgeCopy` | `T@"UIView",&,N,V_badgeCopy` |
| `badgeSearches` | `Ti,N,V_badgeSearches` |
| `iconWidth` | `Td,N,V_iconWidth` |
| `opening` | `TB,N,V_opening` |

## ivar（63 个）

| 偏移 | ivar | 类型编码 | 大小 |
|------|------|----------|------|
| `+8` | `_engine` | `{?="p"[9[2d]]"v"[9[2d]]"target"[9[2d]]"response"[9d]"b"d"bv"d"bTarget"d"bResponse"d"zeta"d"px"d"ms"d"gs"d"active"B}` | 576 |
| `+584` | `_shownXY` | `[9[2d]]` | 144 |
| `+728` | `_hasShownXY` | `B` | 1 |
| `+732` | `_nLock` | `{os_unfair_lock_s="_os_unfair_lock_opaque"I}` | 4 |
| `+736` | `_nContainer` | `@"UIView"` | 8 |
| `+744` | `_nAccessory` | `@"UIView"` | 8 |
| `+752` | `_nProps` | `@"NSArray"` | 8 |
| `+760` | `_nPx` | `d` | 8 |
| `+768` | `_nMs` | `d` | 8 |
| `+776` | `_nGs` | `d` | 8 |
| `+784` | `_nGain` | `d` | 8 |
| `+792` | `_nLive` | `B` | 1 |
| `+796` | `_nUpdating` | `I` | 4 |
| `+800` | `_nPrev` | `[19d]` | 152 |
| `+952` | `_nPrevTime` | `d` | 8 |
| `+960` | `_nCalls` | `i` | 4 |
| `+964` | `_nMainCalls` | `i` | 4 |
| `+968` | `_nLate` | `i` | 4 |
| `+976` | `_nCost` | `d` | 8 |
| `+984` | `_nMaxCost` | `d` | 8 |
| `+992` | `_nLastCall` | `d` | 8 |
| `+1000` | `_nMaxGap` | `d` | 8 |
| `+1008` | `_nFirstCall` | `d` | 8 |
| `+1016` | `_nSuppressedModel` | `i` | 4 |
| `+1020` | `_nSuppressedPresentation` | `i` | 4 |
| `+1024` | `_native` | `B` | 1 |
| `+1025` | `_nativeActive` | `B` | 1 |
| `+1026` | `_sawLayout` | `B` | 1 |
| `+1027` | `_retargeted` | `B` | 1 |
| `+1028` | `_accessoryOverflows` | `B` | 1 |
| `+1029` | `_iconFits` | `B` | 1 |
| `+1030` | `_opening` | `B` | 1 |
| `+1032` | `_accessorySearches` | `i` | 4 |
| `+1036` | `_badgeSearches` | `i` | 4 |
| `+1040` | `_nativeMeshToken` | `@` | 8 |
| `+1048` | `_genieScale` | `d` | 8 |
| `+1056` | `_response` | `d` | 8 |
| `+1064` | `_zeta` | `d` | 8 |
| `+1072` | `_layoutSettings` | `@` | 8 |
| `+1080` | `_container` | `@"UIView"` | 8 |
| `+1088` | `_accessory` | `@"UIView"` | 8 |
| `+1096` | `_appLayout` | `@` | 8 |
| `+1104` | `_startTime` | `d` | 8 |
| `+1112` | `_lastTime` | `d` | 8 |
| `+1120` | `_intensity` | `d` | 8 |
| `+1128` | `_renderedB` | `d` | 8 |
| `+1136` | `_iconMeshViews` | `@"NSHashTable"` | 8 |
| `+1144` | `_link` | `@"CADisplayLink"` | 8 |
| `+1152` | `_owner` | `@` | 8 |
| `+1160` | `_previousMesh` | `@` | 8 |
| `+1168` | `_appliedMesh` | `@` | 8 |
| `+1176` | `_openingShade` | `@"CALayer"` | 8 |
| `+1184` | `_shadeStartTime` | `d` | 8 |
| `+1192` | `_glassRim` | `@"CALayer"` | 8 |
| `+1200` | `_glassBeginTime` | `d` | 8 |
| `+1208` | `_grabbers` | `@"NSHashTable"` | 8 |
| `+1216` | `_movingGrabbers` | `@"NSHashTable"` | 8 |
| `+1224` | `_movingGrabberToken` | `@` | 8 |
| `+1232` | `_movingGrabberSearches` | `Q` | 8 |
| `+1240` | `_badge` | `@"UIView"` | 8 |
| `+1248` | `_badgeCopy` | `@"UIView"` | 8 |
| `+1256` | `_iconWidth` | `d` | 8 |
| `+1264` | `_icon` | `{CGRect="origin"{CGPoint="x"d"y"d}"size"{CGSize="width"d"height"d}}` | 32 |
