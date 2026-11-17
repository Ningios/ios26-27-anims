# Hook 点清单

原版在初始化函数 `0xb984` 里连续注册 41 个 `MSHookMessageEx`，
随后在 `0xc0a4` 注册 Darwin 通知 `com.bazik1337.ios27animsreborn/changed`。
下表由反汇编回溯寄存器得到（类名来自 `NSClassFromString` 的字符串常量，
选择器来自 `__objc_selrefs` 槽位，替换实现来自 `x2` 的计算结果）。

| # | 安装点 | 类 | 选择器 | 替换实现 |
|---|--------|----|--------|----------|
| 1 | `0xb9c0` | `SBFluidSwitcherIconOverlayView` | `layoutSubviews` | `0xc0fc` |
| 2 | `0xb9f0` | `SBIconImageCrossfadeView` | `didMoveToSuperview` | `0xc140` |
| 3 | `0xba20` | `SBHomeGrabberView` | `setHidden:forReason:withAnimationSettings:` | `0xc180` |
| 4 | `0xba50` | `CALayer` | `setValue:forKey:` | `0xc364` |
| 5 | `0xba80` | `SBIconBadgeView` | `setAccessoryBrightness:` | `0xc420` |
| 6 | `0xbab4` | `SBFullScreenToHomeIconZoomSwitcherModifier` | `layoutSettingsForTargetCenter:` | `0xc490` |
| 7 | `0xbadc` | `SBFullScreenToHomeIconZoomSwitcherModifier` | `transitionWillBegin` | `0xc604` |
| 8 | `0xbb04` | `SBFullScreenToHomeIconZoomSwitcherModifier` | `handleTimerEvent:` | `0xc6c0` |
| 9 | `0xbb2c` | `SBFullScreenToHomeIconZoomSwitcherModifier` | `cornerRadiiForIndex:` | `0xcea4` |
| 10 | `0xbb58` | `SBFullScreenToHomeIconZoomSwitcherModifier` | `animationAttributesForLayoutElement:` | `0xd0fc` |
| 11 | `0xbb88` | `SBTransitionSwitcherModifier` | `transitionWillUpdate` | `0xd1bc` |
| 12 | `0xbbbc` | `SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier` | `initWithAppLayout:gestureEdge:liftOffVelocity:` | `0xd7b8` |
| 13 | `0xbbe0` | `SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier` | `animationAttributesForLayoutElement:` | `0xd7fc` |
| 14 | `0xbc0c` | `SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier` | `_layoutSettings` | `0xd898` |
| 15 | `0xbc34` | `SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier` | `_positionSettings` | `0xd918` |
| 16 | `0xbc5c` | `SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier` | `_scaleSettings` | `0xd9b0` |
| 17 | `0xbc84` | `SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier` | `_settingsByInterpolatingBetween:and:progress:` | `0xda48` |
| 18 | `0xbcb8` | `SBFluidSwitcherAnimationSettings` | `setDefaultValues` | `0xdc60` |
| 19 | `0xbce4` | `SBFullScreenToHomeCenterZoomDownSwitcherModifier` | `_layoutSettings` | `0xdca0` |
| 20 | `0xbd18` | `SBCoverSheetSlidingViewController` | `_presentGestureBeganWithGestureRecognizer:` | `0xdce8` |
| 21 | `0xbd40` | `SBCoverSheetSlidingViewController` | `_dismissGestureBeganWithGestureRecognizer:` | `0xde04` |
| 22 | `0xbd68` | `SBCoverSheetSlidingViewController` | `_startCatchupAnimationWithDuration:completion:` | `0xdf20` |
| 23 | `0xbd98` | `CSCoverSheetTransitionsSettings` | `setDefaultValues` | `0xe038` |
| 24 | `0xbdc0` | `CSCoverSheetTransitionsSettings` | `sameWallpaperInitialTransitionSettings` | `0xe0a0` |
| 25 | `0xbde8` | `CSCoverSheetTransitionsSettings` | `sameWallpaperSubsequentTransitionSettings` | `0xe0e8` |
| 26 | `0xbe10` | `CSCoverSheetTransitionsSettings` | `differentWallpaperInitialTransitionSettings` | `0xe130` |
| 27 | `0xbe38` | `CSCoverSheetTransitionsSettings` | `differentWallpaperSubsequentTransitionSettings` | `0xe178` |
| 28 | `0xbe60` | `CSCoverSheetTransitionsSettings` | `overAppTransitionSettings` | `0xe1c0` |
| 29 | `0xbe90` | `CSCoverSheetViewController` | `listMinY` | `0xe208` |
| 30 | `0xbec0` | `CSCombinedListViewController` | `horizontalInsetMargin` | `0xe23c` |
| 31 | `0xbef0` | `CSCoverSheetTransitionSettings` | `iconsFlyIn` | `0xe30c` |
| 32 | `0xbf24` | `SBCoverSheetPresentationManager` | `coverSheetSlidingViewController:prepareForPresentationTransitionForUserGesture:` | `0xe368` |
| 33 | `0xbf4c` | `SBCoverSheetPresentationManager` | `coverSheetSlidingViewController:prepareForDismissalTransitionForReversingTransition:forUserGesture:` | `0xe3c0` |
| 34 | `0xbf74` | `SBCoverSheetPresentationManager` | `coverSheetSlidingViewController:committingToEndPresented:` | `0xe464` |
| 35 | `0xbf9c` | `SBCoverSheetPresentationManager` | `coverSheetSlidingViewControllerDidEndTransition:` | `0xe568` |
| 36 | `0xbfcc` | `SBFluidSwitcherItemContainer` | `setBounds:` | `0xe614` |
| 37 | `0xc000` | `SBFluidSwitcherViewController` | `_itemContainerForAppLayoutIfExists:` | `0xe7fc` |
| 38 | `0xc028` | `SBFluidSwitcherViewController` | `_iconForWorkspaceEntity:` | `0xe884` |
| 39 | `0xc050` | `SBFluidSwitcherViewController` | `homeScreenIconCornerRadiusForAppLayout:` | `0xed0c` |
| 40 | `0xc078` | `SBFluidSwitcherViewController` | `_performModifierMatchMoveToIconViewResponse:` | `0xef10` |
| 41 | `0xc0a0` | `SBFluidSwitcherViewController` | `_iconImageFrameForIconView:` | `0xef54` |

## 按类统计

- `CALayer`：1 处
- `CSCombinedListViewController`：1 处
- `CSCoverSheetTransitionSettings`：1 处
- `CSCoverSheetTransitionsSettings`：6 处
- `CSCoverSheetViewController`：1 处
- `SBCoverSheetPresentationManager`：4 处
- `SBCoverSheetSlidingViewController`：3 处
- `SBFluidSwitcherAnimationSettings`：1 处
- `SBFluidSwitcherIconOverlayView`：1 处
- `SBFluidSwitcherItemContainer`：1 处
- `SBFluidSwitcherViewController`：5 处
- `SBFullScreenToHomeCenterZoomDownSwitcherModifier`：1 处
- `SBFullScreenToHomeIconZoomSwitcherModifier`：5 处
- `SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier`：6 处
- `SBHomeGrabberView`：1 处
- `SBIconBadgeView`：1 处
- `SBIconImageCrossfadeView`：1 处
- `SBTransitionSwitcherModifier`：1 处
