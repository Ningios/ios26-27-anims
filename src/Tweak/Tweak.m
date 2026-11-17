//
//  Tweak.m
//  iOS 27 动画 Reborn — 逆向重建
//
//  原版初始化函数位于 @0xb984：连续 41 处 MSHookMessageEx，
//  之后在 @0xc0a4 注册 Darwin 通知 com.bazik1337.ios27animsreborn/changed。
//  本文件按原顺序还原这 41 个 hook 点（顺序见 docs/HOOKS.md）。
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import <objc/runtime.h>
#import <substrate.h>

#import "Core/CG27GenieDriver.h"
#import "Shared/CG27Globals.h"
#import "Shared/CG27Prefs.h"

typedef struct { CGSize topLeft, topRight, bottomLeft, bottomRight; } CG27CornerRadii;

static NSString *const kCG27FlyInKey = @"iOS27AnimsRebornFlyIn";
static NSString *const kCG27FlyBlurFilter = @"CG27FlyBlur";
static NSString *const kCG27CornerResetKey = @"cg27.cornerReset";

static inline BOOL CG27On(CG27Feature feature)
{
    return CG27Bool(CG27FeatureEnabled) && CG27Bool(feature);
}

static inline BOOL CG27AppAnimationsOn(void)
{
    return CG27On(CG27FeatureAppAnimations);
}

/// 把某个视图的 driver 找出来（容器或附件身份任一匹配）。
static CG27GenieDriver *CG27DriverForView(UIView *view)
{
    if (!view) {
        return nil;
    }
    id driver = CG27DriverForContainer(view);
    if (driver) {
        return driver;
    }
    return CG27DriverForAccessory(view);
}

#pragma mark - SBFluidSwitcherIconOverlayView

// @0xb9c0
static void (*orig_overlay_layoutSubviews)(id, SEL);
static void hook_overlay_layoutSubviews(id self, SEL _cmd)
{
    orig_overlay_layoutSubviews(self, _cmd);
    if (!CG27AppAnimationsOn()) {
        return;
    }
    CG27GenieDriver *driver = CG27DriverForView([self superview]);
    if (!driver) {
        return;
    }
    [driver updateGlassRim];
}

#pragma mark - SBIconImageCrossfadeView

// @0xb9f0
static void (*orig_crossfade_didMoveToSuperview)(id, SEL);
static void hook_crossfade_didMoveToSuperview(id self, SEL _cmd)
{
    orig_crossfade_didMoveToSuperview(self, _cmd);
    if (!CG27AppAnimationsOn()) {
        return;
    }
    CG27GenieDriver *driver = CG27DriverForView([self superview]);
    if (!driver) {
        return;
    }
    [driver ensureGlassRimAt:CACurrentMediaTime()];
}

#pragma mark - SBHomeGrabberView

// @0xba20
static void (*orig_grabber_setHidden)(id, SEL, BOOL, id, id);
static void hook_grabber_setHidden(id self, SEL _cmd, BOOL hidden, id reason, id settings)
{
    orig_grabber_setHidden(self, _cmd, hidden, reason, settings);
    if (!CG27AppAnimationsOn()) {
        return;
    }
    CG27GenieDriver *driver = CG27DriverForView([self superview]);
    if (!driver) {
        return;
    }
    if (hidden) {
        if (!driver.movingGrabbers) {
            driver.movingGrabbers = [NSHashTable weakObjectsHashTable];
        }
        [driver.movingGrabbers addObject:self];
        driver.movingGrabberSearches++;
    } else {
        [driver.movingGrabbers removeObject:self];
    }
    [driver updateGlassRim];
}

#pragma mark - CALayer

// @0xba50
static void (*orig_layer_setValueForKey)(id, SEL, id, id);
static void hook_layer_setValueForKey(id self, SEL _cmd, id value, id key)
{
    orig_layer_setValueForKey(self, _cmd, value, key);
    if (![key isKindOfClass:[NSString class]]) {
        return;
    }
    if (![key isEqualToString:@"cornerRadius"] && ![key isEqualToString:@"position"]) {
        return;
    }
    if (!CG27AppAnimationsOn()) {
        return;
    }
    for (CG27GenieDriver *driver in CG27DriverSnapshot()) {
        if ([driver.glassRim isEqual:self]) {
            [driver updateGlassRim];
            return;
        }
    }
}

#pragma mark - SBIconBadgeView

// @0xba80
static void (*orig_badge_setAccessoryBrightness)(id, SEL, double);
static void hook_badge_setAccessoryBrightness(id self, SEL _cmd, double brightness)
{
    orig_badge_setAccessoryBrightness(self, _cmd, brightness);
    if (!CG27AppAnimationsOn()) {
        return;
    }
    for (CG27GenieDriver *driver in CG27DriverSnapshot()) {
        if (driver.badge == self || [driver.badge isEqual:self]) {
            driver.badgeSearches++;
            [driver placeBadgeCopy];
            return;
        }
    }
}

#pragma mark - SBFullScreenToHomeIconZoomSwitcherModifier

// @0xbab4
static id (*orig_fs2h_layoutSettingsForTargetCenter)(id, SEL, CGPoint);
static id hook_fs2h_layoutSettingsForTargetCenter(id self, SEL _cmd, CGPoint center)
{
    id settings = orig_fs2h_layoutSettingsForTargetCenter(self, _cmd, center);
    if (!CG27AppAnimationsOn()) {
        return settings;
    }
    CG27GenieDriver *driver = CG27DriverForAppLayout([self respondsToSelector:@selector(appLayout)] ? [self performSelector:@selector(appLayout)] : nil);
    if (driver) {
        driver.retargeted = YES;
    }
    return settings;
}

// @0xbadc
static void (*orig_fs2h_transitionWillBegin)(id, SEL);
static void hook_fs2h_transitionWillBegin(id self, SEL _cmd)
{
    orig_fs2h_transitionWillBegin(self, _cmd);
    if (!CG27AppAnimationsOn()) {
        return;
    }
    id appLayout = [self respondsToSelector:@selector(appLayout)] ? [self performSelector:@selector(appLayout)] : nil;
    CG27GenieDriver *driver = CG27DriverForAppLayout(appLayout);
    if (driver) {
        driver.sawLayout = YES;
        [driver start];
    }
}

// @0xbb04
static id (*orig_fs2h_handleTimerEvent)(id, SEL, id);
static id hook_fs2h_handleTimerEvent(id self, SEL _cmd, id event)
{
    id response = orig_fs2h_handleTimerEvent(self, _cmd, event);
    if (!CG27AppAnimationsOn()) {
        return response;
    }
    id appLayout = [self respondsToSelector:@selector(appLayout)] ? [self performSelector:@selector(appLayout)] : nil;
    CG27GenieDriver *driver = CG27DriverForAppLayout(appLayout);
    if (driver) {
        driver.lastTime = CACurrentMediaTime();
        [driver advance:1.0 / 120.0];
    }
    return response;
}

// @0xbb2c
static CG27CornerRadii (*orig_fs2h_cornerRadiiForIndex)(id, SEL, unsigned long long);
static CG27CornerRadii hook_fs2h_cornerRadiiForIndex(id self, SEL _cmd, unsigned long long index)
{
    CG27CornerRadii radii = orig_fs2h_cornerRadiiForIndex(self, _cmd, index);
    if (!CG27AppAnimationsOn()) {
        return radii;
    }
    id appLayout = [self respondsToSelector:@selector(appLayout)] ? [self performSelector:@selector(appLayout)] : nil;
    CG27GenieDriver *driver = CG27DriverForAppLayout(appLayout);
    if (driver && driver.iconFits) {
        const CGSize zero = CGSizeZero;
        radii.topLeft = zero;
        radii.topRight = zero;
        radii.bottomLeft = zero;
        radii.bottomRight = zero;
    }
    return radii;
}

// @0xbb58
static id (*orig_fs2h_animationAttributesForLayoutElement)(id, SEL, id);
static id hook_fs2h_animationAttributesForLayoutElement(id self, SEL _cmd, id element)
{
    id attributes = orig_fs2h_animationAttributesForLayoutElement(self, _cmd, element);
    if (!CG27AppAnimationsOn()) {
        return attributes;
    }
    id appLayout = [self respondsToSelector:@selector(appLayout)] ? [self performSelector:@selector(appLayout)] : nil;
    CG27GenieDriver *driver = CG27DriverForAppLayout(appLayout);
    if (driver && driver.appliedMesh && [attributes respondsToSelector:@selector(setAnimationSettings:)]) {
        // 网格已接管变形，抽掉默认的缩放动画
        [attributes performSelector:@selector(setAnimationSettings:) withObject:driver.layoutSettings];
    }
    return attributes;
}

#pragma mark - SBTransitionSwitcherModifier

// @0xbb88
static void (*orig_transition_transitionWillUpdate)(id, SEL);
static void hook_transition_transitionWillUpdate(id self, SEL _cmd)
{
    orig_transition_transitionWillUpdate(self, _cmd);
    if (!CG27AppAnimationsOn()) {
        return;
    }
    id appLayout = [self respondsToSelector:@selector(appLayout)] ? [self performSelector:@selector(appLayout)] : nil;
    CG27GenieDriver *driver = CG27DriverForAppLayout(appLayout);
    if (driver) {
        [driver updateGlassRim];
        [driver placeBadgeCopy];
    }
}

#pragma mark - SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier

// @0xbbbc
static id (*orig_gesture_initWithAppLayout)(id, SEL, id, long long, double);
static id hook_gesture_initWithAppLayout(id self, SEL _cmd, id appLayout, long long edge, double velocity)
{
    if (CG27AppAnimationsOn()) {
        CG27GenieDriver *driver = CG27DriverForAppLayout(appLayout);
        if (driver) {
            driver.retargeted = NO;
        }
    }
    return orig_gesture_initWithAppLayout(self, _cmd, appLayout, edge, velocity);
}

// @0xbbe0
static id (*orig_gesture_animationAttributesForLayoutElement)(id, SEL, id);
static id hook_gesture_animationAttributesForLayoutElement(id self, SEL _cmd, id element)
{
    id attributes = orig_gesture_animationAttributesForLayoutElement(self, _cmd, element);
    if (!CG27AppAnimationsOn()) {
        return attributes;
    }
    id appLayout = [self respondsToSelector:@selector(appLayout)] ? [self performSelector:@selector(appLayout)] : nil;
    CG27GenieDriver *driver = CG27DriverForAppLayout(appLayout);
    if (driver && driver.appliedMesh) {
        [driver updateGlassRim];
    }
    return attributes;
}

// @0xbc0c
static id (*orig_gesture_layoutSettings)(id, SEL);
static id hook_gesture_layoutSettings(id self, SEL _cmd)
{
    id settings = orig_gesture_layoutSettings(self, _cmd);
    if (!CG27AppAnimationsOn()) {
        return settings;
    }
    id appLayout = [self respondsToSelector:@selector(appLayout)] ? [self performSelector:@selector(appLayout)] : nil;
    CG27GenieDriver *driver = CG27DriverForAppLayout(appLayout);
    if (driver) {
        driver.layoutSettings = settings;
    }
    return settings;
}

// @0xbc34
static id (*orig_gesture_positionSettings)(id, SEL);
static id hook_gesture_positionSettings(id self, SEL _cmd)
{
    id settings = orig_gesture_positionSettings(self, _cmd);
    if (CG27AppAnimationsOn()) {
        id appLayout = [self respondsToSelector:@selector(appLayout)] ? [self performSelector:@selector(appLayout)] : nil;
        CG27GenieDriver *driver = CG27DriverForAppLayout(appLayout);
        if (driver && driver.iconWidth > 0.0) {
            driver.sawLayout = YES;
        }
    }
    return settings;
}

// @0xbc5c
static id (*orig_gesture_scaleSettings)(id, SEL);
static id hook_gesture_scaleSettings(id self, SEL _cmd)
{
    id settings = orig_gesture_scaleSettings(self, _cmd);
    if (!CG27AppAnimationsOn()) {
        return settings;
    }
    id appLayout = [self respondsToSelector:@selector(appLayout)] ? [self performSelector:@selector(appLayout)] : nil;
    CG27GenieDriver *driver = CG27DriverForAppLayout(appLayout);
    if (driver && driver.iconFits) {
        driver.intensity = 1.0;
    }
    return settings;
}

// @0xbc84
static id (*orig_gesture_settingsByInterpolating)(id, SEL, id, id, double);
static id hook_gesture_settingsByInterpolating(id self, SEL _cmd, id from, id to, double progress)
{
    id settings = orig_gesture_settingsByInterpolating(self, _cmd, from, to, progress);
    if (!CG27AppAnimationsOn() || !settings) {
        return settings;
    }
    id appLayout = [self respondsToSelector:@selector(appLayout)] ? [self performSelector:@selector(appLayout)] : nil;
    CG27GenieDriver *driver = CG27DriverForAppLayout(appLayout);
    if (driver) {
        driver.intensity = progress;
        [driver updateGlassRim];
    }
    return settings;
}

#pragma mark - SBFluidSwitcherAnimationSettings

// @0xbcb8
static void (*orig_switcherSettings_setDefaultValues)(id, SEL);
static void hook_switcherSettings_setDefaultValues(id self, SEL _cmd)
{
    orig_switcherSettings_setDefaultValues(self, _cmd);
    if (!CG27AppAnimationsOn()) {
        return;
    }
    // 原版在此压低默认缩放/位置动画的幅度，让 mesh 接管
    @try {
        [self setValue:@(0.9985) forKey:@"dampingRatio"];
    } @catch (__unused NSException *exception) {
    }
}

#pragma mark - SBFullScreenToHomeCenterZoomDownSwitcherModifier

// @0xbce4
static id (*orig_centerZoom_layoutSettings)(id, SEL);
static id hook_centerZoom_layoutSettings(id self, SEL _cmd)
{
    id settings = orig_centerZoom_layoutSettings(self, _cmd);
    if (!CG27AppAnimationsOn()) {
        return settings;
    }
    id appLayout = [self respondsToSelector:@selector(appLayout)] ? [self performSelector:@selector(appLayout)] : nil;
    CG27GenieDriver *driver = CG27DriverForAppLayout(appLayout);
    if (driver) {
        driver.intensity = 1.0;
        driver.sawLayout = YES;
    }
    return settings;
}

#pragma mark - SBCoverSheetSlidingViewController

// @0xbd18
static void (*orig_coverSheet_presentGestureBegan)(id, SEL, id);
static void hook_coverSheet_presentGestureBegan(id self, SEL _cmd, id gesture)
{
    orig_coverSheet_presentGestureBegan(self, _cmd, gesture);
    if (!CG27On(CG27FeatureClearSheet)) {
        return;
    }
    for (CG27GenieDriver *driver in CG27DriverSnapshot()) {
        driver.opening = NO;
        driver.accessoryOverflows = NO;
    }
}

// @0xbd40
static void (*orig_coverSheet_dismissGestureBegan)(id, SEL, id);
static void hook_coverSheet_dismissGestureBegan(id self, SEL _cmd, id gesture)
{
    orig_coverSheet_dismissGestureBegan(self, _cmd, gesture);
    if (!CG27On(CG27FeatureClearSheet)) {
        return;
    }
    for (CG27GenieDriver *driver in CG27DriverSnapshot()) {
        driver.opening = NO;
    }
}

// @0xbd68
static void (*orig_coverSheet_startCatchupAnimation)(id, SEL, double, id);
static void hook_coverSheet_startCatchupAnimation(id self, SEL _cmd, double duration, id completion)
{
    orig_coverSheet_startCatchupAnimation(self, _cmd, duration, completion);
    if (!CG27On(CG27FeatureClearSheet)) {
        return;
    }
    for (CG27GenieDriver *driver in CG27DriverSnapshot()) {
        driver.glassBeginTime = CACurrentMediaTime();
        [driver updateGlassRim];
    }
}

#pragma mark - CSCoverSheetTransitionsSettings

// @0xbd98
static void (*orig_csTransitions_setDefaultValues)(id, SEL);
static void hook_csTransitions_setDefaultValues(id self, SEL _cmd)
{
    orig_csTransitions_setDefaultValues(self, _cmd);
    if (!CG27On(CG27FeatureClearSheet)) {
        return;
    }
    // 透明背景：把面板壁纸调成透明/静止
    for (NSString *key in @[@"blursPanel", @"panelWallpaper", @"scaleWallpaper",
                            @"fadesContent", @"darkensContent", @"trackingWallpaper",
                            @"orientPanelWallpaper", @"fadePanelWallpaper",
                            @"fadesCoverSheetContent", @"floatingLayerAsWallpaperOverlay"]) {
        @try {
            [self setValue:@(NO) forKey:key];
        } @catch (__unused NSException *exception) {
        }
    }
    @try {
        [self setValue:@(0.0) forKey:@"trackingWallpaperParallaxFactor"];
    } @catch (__unused NSException *exception) {
    }
}

// @0xbdc0
static id (*orig_csTransitions_sameInitial)(id, SEL);
static id hook_csTransitions_sameInitial(id self, SEL _cmd)
{
    id settings = orig_csTransitions_sameInitial(self, _cmd);
    if (CG27On(CG27FeatureClearSheet) && settings) {
        @try {
            [settings setValue:@(0.8) forKey:@"response"];
            [settings setValue:@(0.9) forKey:@"dampingRatio"];
        } @catch (__unused NSException *exception) {
        }
    }
    return settings;
}

// @0xbde8
static id (*orig_csTransitions_sameSubsequent)(id, SEL);
static id hook_csTransitions_sameSubsequent(id self, SEL _cmd)
{
    id settings = orig_csTransitions_sameSubsequent(self, _cmd);
    if (CG27On(CG27FeatureClearSheet) && settings) {
        @try {
            [settings setValue:@(0.7) forKey:@"response"];
            [settings setValue:@(0.92) forKey:@"dampingRatio"];
        } @catch (__unused NSException *exception) {
        }
    }
    return settings;
}

// @0xbe10
static id (*orig_csTransitions_differentInitial)(id, SEL);
static id hook_csTransitions_differentInitial(id self, SEL _cmd)
{
    id settings = orig_csTransitions_differentInitial(self, _cmd);
    if (CG27On(CG27FeatureClearSheet) && settings) {
        @try {
            [settings setValue:@(0.8) forKey:@"response"];
            [settings setValue:@(0.9) forKey:@"dampingRatio"];
        } @catch (__unused NSException *exception) {
        }
    }
    return settings;
}

// @0xbe38
static id (*orig_csTransitions_differentSubsequent)(id, SEL);
static id hook_csTransitions_differentSubsequent(id self, SEL _cmd)
{
    id settings = orig_csTransitions_differentSubsequent(self, _cmd);
    if (CG27On(CG27FeatureClearSheet) && settings) {
        @try {
            [settings setValue:@(0.7) forKey:@"response"];
            [settings setValue:@(0.92) forKey:@"dampingRatio"];
        } @catch (__unused NSException *exception) {
        }
    }
    return settings;
}

// @0xbe60
static id (*orig_csTransitions_overApp)(id, SEL);
static id hook_csTransitions_overApp(id self, SEL _cmd)
{
    id settings = orig_csTransitions_overApp(self, _cmd);
    if (CG27On(CG27FeatureClearSheet) && settings) {
        @try {
            [settings setValue:@(NO) forKey:@"floatingLayerAsWallpaperOverlay"];
        } @catch (__unused NSException *exception) {
        }
    }
    return settings;
}

#pragma mark - CSCoverSheetViewController / CSCombinedListViewController

// @0xbe90
static double (*orig_coverSheet_listMinY)(id, SEL);
static double hook_coverSheet_listMinY(id self, SEL _cmd)
{
    double value = orig_coverSheet_listMinY(self, _cmd);
    if (!CG27On(CG27FeatureClearSheet)) {
        return value;
    }
    return value;
}

// @0xbec0
static double (*orig_combinedList_horizontalInsetMargin)(id, SEL);
static double hook_combinedList_horizontalInsetMargin(id self, SEL _cmd)
{
    double value = orig_combinedList_horizontalInsetMargin(self, _cmd);
    if (!CG27On(CG27FeatureClearSheet)) {
        return value;
    }
    return value;
}

#pragma mark - CSCoverSheetTransitionSettings

// @0xbef0
static id (*orig_csTransition_iconsFlyIn)(id, SEL);
static id hook_csTransition_iconsFlyIn(id self, SEL _cmd)
{
    id settings = orig_csTransition_iconsFlyIn(self, _cmd);
    if (!CG27On(CG27FeatureIconFlyIn) || !settings) {
        return settings;
    }
    @try {
        [settings setValue:@(YES) forKey:@"fadesCoverSheetContent"];
    } @catch (__unused NSException *exception) {
    }
    return settings;
}

#pragma mark - SBCoverSheetPresentationManager

// @0xbf24
static void (*orig_presentation_preparePresent)(id, SEL, id, BOOL);
static void hook_presentation_preparePresent(id self, SEL _cmd, id controller, BOOL gesture)
{
    orig_presentation_preparePresent(self, _cmd, controller, gesture);
    if (!CG27On(CG27FeatureClearSheet)) {
        return;
    }
    for (CG27GenieDriver *driver in CG27DriverSnapshot()) {
        driver.opening = YES;
        driver.shadeStartTime = CACurrentMediaTime();
    }
}

// @0xbf4c
static void (*orig_presentation_prepareDismiss)(id, SEL, id, BOOL, BOOL);
static void hook_presentation_prepareDismiss(id self, SEL _cmd, id controller, BOOL reversing, BOOL gesture)
{
    orig_presentation_prepareDismiss(self, _cmd, controller, reversing, gesture);
    if (!CG27On(CG27FeatureClearSheet)) {
        return;
    }
    for (CG27GenieDriver *driver in CG27DriverSnapshot()) {
        driver.opening = NO;
        [driver restoreMovingGrabbers];
    }
}

// @0xbf74
static void (*orig_presentation_committingToEnd)(id, SEL, id, BOOL);
static void hook_presentation_committingToEnd(id self, SEL _cmd, id controller, BOOL ended)
{
    orig_presentation_committingToEnd(self, _cmd, controller, ended);
    if (!CG27On(CG27FeatureClearSheet)) {
        return;
    }
    for (CG27GenieDriver *driver in CG27DriverSnapshot()) {
        if (ended) {
            driver.opening = NO;
        }
        [driver updateGlassRim];
    }
}

// @0xbf9c
static void (*orig_presentation_didEndTransition)(id, SEL, id);
static void hook_presentation_didEndTransition(id self, SEL _cmd, id controller)
{
    orig_presentation_didEndTransition(self, _cmd, controller);
    if (!CG27On(CG27FeatureClearSheet)) {
        return;
    }
    for (CG27GenieDriver *driver in CG27DriverSnapshot()) {
        driver.opening = NO;
        [driver restoreMovingGrabbers];
    }
}

#pragma mark - SBFluidSwitcherItemContainer

// @0xbfcc
static void (*orig_itemContainer_setBounds)(id, SEL, CGRect);
static void hook_itemContainer_setBounds(id self, SEL _cmd, CGRect bounds)
{
    orig_itemContainer_setBounds(self, _cmd, bounds);
    if (!CG27AppAnimationsOn()) {
        return;
    }
    NSArray *drivers = CG27DriverSnapshot();
    if (drivers.count == 0) {
        return;
    }
    if (![self respondsToSelector:@selector(appLayout)]) {
        return;
    }

    id appLayout = [self performSelector:@selector(appLayout)];
    if (!appLayout) {
        return;
    }

    for (CG27GenieDriver *driver in drivers) {
        if (!driver.native || !driver.link) {
            continue;
        }
        if (![driver.appLayout isEqual:appLayout]) {
            continue;
        }
        driver.container = self;
        [driver nativeBounds:bounds of:appLayout];
    }
}

#pragma mark - SBFluidSwitcherViewController

// @0xc000
static id (*orig_switcher_itemContainerForAppLayout)(id, SEL, id);
static id hook_switcher_itemContainerForAppLayout(id self, SEL _cmd, id appLayout)
{
    id container = orig_switcher_itemContainerForAppLayout(self, _cmd, appLayout);
    if (!CG27AppAnimationsOn()) {
        return container;
    }
    CG27GenieDriver *driver = CG27DriverForAppLayout(appLayout);
    if (driver && container) {
        driver.container = container;
    }
    return container;
}

// @0xc028
static id (*orig_switcher_iconForWorkspaceEntity)(id, SEL, id);
static id hook_switcher_iconForWorkspaceEntity(id self, SEL _cmd, id entity)
{
    id icon = orig_switcher_iconForWorkspaceEntity(self, _cmd, entity);
    if (!CG27AppAnimationsOn()) {
        return icon;
    }
    for (CG27GenieDriver *driver in CG27DriverSnapshot()) {
        if (driver.accessorySearches > 0 && driver.appLayout && [driver.appLayout isEqual:entity]) {
            driver.badge = [icon respondsToSelector:@selector(badgeView)] ?
                [icon performSelector:@selector(badgeView)] : nil;
            [driver makeBadgeCopy];
        }
    }
    return icon;
}

// @0xc050
static double (*orig_switcher_homeScreenIconCornerRadius)(id, SEL, id);
static double hook_switcher_homeScreenIconCornerRadius(id self, SEL _cmd, id appLayout)
{
    double value = orig_switcher_homeScreenIconCornerRadius(self, _cmd, appLayout);
    if (!CG27AppAnimationsOn()) {
        return value;
    }
    CG27GenieDriver *driver = CG27DriverForAppLayout(appLayout);
    if (driver && driver.iconFits) {
        return value;
    }
    return value;
}

// @0xc078
static id (*orig_switcher_matchMoveResponse)(id, SEL, id);
static id hook_switcher_matchMoveResponse(id self, SEL _cmd, id response)
{
    id result = orig_switcher_matchMoveResponse(self, _cmd, response);
    if (!CG27AppAnimationsOn() || !result) {
        return result;
    }
    for (CG27GenieDriver *driver in CG27DriverSnapshot()) {
        if (driver.appliedMesh) {
            [driver placeBadgeCopy];
        }
    }
    return result;
}

// @0xc0a0
static CGRect (*orig_switcher_iconImageFrame)(id, SEL, id);
static CGRect hook_switcher_iconImageFrame(id self, SEL _cmd, id iconView)
{
    CGRect frame = orig_switcher_iconImageFrame(self, _cmd, iconView);
    if (!CG27AppAnimationsOn() || CGRectIsEmpty(frame)) {
        return frame;
    }
    for (CG27GenieDriver *driver in CG27DriverSnapshot()) {
        if (!driver.link) {
            continue;
        }
        if (driver.icon.origin.x != 0.0 || driver.icon.size.width > 0.0) {
            driver.iconWidth = frame.size.width;
        }
    }
    return frame;
}

#pragma mark - 初始化

static void CG27InstallHooks(void)
{
    // 顺序与原版 @0xb984 起的 41 个 MSHookMessageEx 一致
    MSHookMessageEx(NSClassFromString(@"SBFluidSwitcherIconOverlayView"), @selector(layoutSubviews), (IMP)&hook_overlay_layoutSubviews, (IMP *)&orig_overlay_layoutSubviews);
    MSHookMessageEx(NSClassFromString(@"SBIconImageCrossfadeView"), @selector(didMoveToSuperview), (IMP)&hook_crossfade_didMoveToSuperview, (IMP *)&orig_crossfade_didMoveToSuperview);
    MSHookMessageEx(NSClassFromString(@"SBHomeGrabberView"), @selector(setHidden:forReason:withAnimationSettings:), (IMP)&hook_grabber_setHidden, (IMP *)&orig_grabber_setHidden);
    MSHookMessageEx(NSClassFromString(@"CALayer"), @selector(setValue:forKey:), (IMP)&hook_layer_setValueForKey, (IMP *)&orig_layer_setValueForKey);
    MSHookMessageEx(NSClassFromString(@"SBIconBadgeView"), @selector(setAccessoryBrightness:), (IMP)&hook_badge_setAccessoryBrightness, (IMP *)&orig_badge_setAccessoryBrightness);

    Class cls = NSClassFromString(@"SBFullScreenToHomeIconZoomSwitcherModifier");
    MSHookMessageEx(cls, @selector(layoutSettingsForTargetCenter:), (IMP)&hook_fs2h_layoutSettingsForTargetCenter, (IMP *)&orig_fs2h_layoutSettingsForTargetCenter);
    MSHookMessageEx(cls, @selector(transitionWillBegin), (IMP)&hook_fs2h_transitionWillBegin, (IMP *)&orig_fs2h_transitionWillBegin);
    MSHookMessageEx(cls, @selector(handleTimerEvent:), (IMP)&hook_fs2h_handleTimerEvent, (IMP *)&orig_fs2h_handleTimerEvent);
    MSHookMessageEx(cls, @selector(cornerRadiiForIndex:), (IMP)&hook_fs2h_cornerRadiiForIndex, (IMP *)&orig_fs2h_cornerRadiiForIndex);
    MSHookMessageEx(cls, @selector(animationAttributesForLayoutElement:), (IMP)&hook_fs2h_animationAttributesForLayoutElement, (IMP *)&orig_fs2h_animationAttributesForLayoutElement);

    MSHookMessageEx(NSClassFromString(@"SBTransitionSwitcherModifier"), @selector(transitionWillUpdate), (IMP)&hook_transition_transitionWillUpdate, (IMP *)&orig_transition_transitionWillUpdate);

    cls = NSClassFromString(@"SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier");
    MSHookMessageEx(cls, @selector(initWithAppLayout:gestureEdge:liftOffVelocity:), (IMP)&hook_gesture_initWithAppLayout, (IMP *)&orig_gesture_initWithAppLayout);
    MSHookMessageEx(cls, @selector(animationAttributesForLayoutElement:), (IMP)&hook_gesture_animationAttributesForLayoutElement, (IMP *)&orig_gesture_animationAttributesForLayoutElement);
    MSHookMessageEx(cls, @selector(_layoutSettings), (IMP)&hook_gesture_layoutSettings, (IMP *)&orig_gesture_layoutSettings);
    MSHookMessageEx(cls, @selector(_positionSettings), (IMP)&hook_gesture_positionSettings, (IMP *)&orig_gesture_positionSettings);
    MSHookMessageEx(cls, @selector(_scaleSettings), (IMP)&hook_gesture_scaleSettings, (IMP *)&orig_gesture_scaleSettings);
    MSHookMessageEx(cls, @selector(_settingsByInterpolatingBetween:and:progress:), (IMP)&hook_gesture_settingsByInterpolating, (IMP *)&orig_gesture_settingsByInterpolating);

    MSHookMessageEx(NSClassFromString(@"SBFluidSwitcherAnimationSettings"), @selector(setDefaultValues), (IMP)&hook_switcherSettings_setDefaultValues, (IMP *)&orig_switcherSettings_setDefaultValues);
    MSHookMessageEx(NSClassFromString(@"SBFullScreenToHomeCenterZoomDownSwitcherModifier"), @selector(_layoutSettings), (IMP)&hook_centerZoom_layoutSettings, (IMP *)&orig_centerZoom_layoutSettings);

    cls = NSClassFromString(@"SBCoverSheetSlidingViewController");
    MSHookMessageEx(cls, @selector(_presentGestureBeganWithGestureRecognizer:), (IMP)&hook_coverSheet_presentGestureBegan, (IMP *)&orig_coverSheet_presentGestureBegan);
    MSHookMessageEx(cls, @selector(_dismissGestureBeganWithGestureRecognizer:), (IMP)&hook_coverSheet_dismissGestureBegan, (IMP *)&orig_coverSheet_dismissGestureBegan);
    MSHookMessageEx(cls, @selector(_startCatchupAnimationWithDuration:completion:), (IMP)&hook_coverSheet_startCatchupAnimation, (IMP *)&orig_coverSheet_startCatchupAnimation);

    cls = NSClassFromString(@"CSCoverSheetTransitionsSettings");
    MSHookMessageEx(cls, @selector(setDefaultValues), (IMP)&hook_csTransitions_setDefaultValues, (IMP *)&orig_csTransitions_setDefaultValues);
    MSHookMessageEx(cls, @selector(sameWallpaperInitialTransitionSettings), (IMP)&hook_csTransitions_sameInitial, (IMP *)&orig_csTransitions_sameInitial);
    MSHookMessageEx(cls, @selector(sameWallpaperSubsequentTransitionSettings), (IMP)&hook_csTransitions_sameSubsequent, (IMP *)&orig_csTransitions_sameSubsequent);
    MSHookMessageEx(cls, @selector(differentWallpaperInitialTransitionSettings), (IMP)&hook_csTransitions_differentInitial, (IMP *)&orig_csTransitions_differentInitial);
    MSHookMessageEx(cls, @selector(differentWallpaperSubsequentTransitionSettings), (IMP)&hook_csTransitions_differentSubsequent, (IMP *)&orig_csTransitions_differentSubsequent);
    MSHookMessageEx(cls, @selector(overAppTransitionSettings), (IMP)&hook_csTransitions_overApp, (IMP *)&orig_csTransitions_overApp);

    MSHookMessageEx(NSClassFromString(@"CSCoverSheetViewController"), @selector(listMinY), (IMP)&hook_coverSheet_listMinY, (IMP *)&orig_coverSheet_listMinY);
    MSHookMessageEx(NSClassFromString(@"CSCombinedListViewController"), @selector(horizontalInsetMargin), (IMP)&hook_combinedList_horizontalInsetMargin, (IMP *)&orig_combinedList_horizontalInsetMargin);
    MSHookMessageEx(NSClassFromString(@"CSCoverSheetTransitionSettings"), @selector(iconsFlyIn), (IMP)&hook_csTransition_iconsFlyIn, (IMP *)&orig_csTransition_iconsFlyIn);

    cls = NSClassFromString(@"SBCoverSheetPresentationManager");
    MSHookMessageEx(cls, @selector(coverSheetSlidingViewController:prepareForPresentationTransitionForUserGesture:), (IMP)&hook_presentation_preparePresent, (IMP *)&orig_presentation_preparePresent);
    MSHookMessageEx(cls, @selector(coverSheetSlidingViewController:prepareForDismissalTransitionForReversingTransition:forUserGesture:), (IMP)&hook_presentation_prepareDismiss, (IMP *)&orig_presentation_prepareDismiss);
    MSHookMessageEx(cls, @selector(coverSheetSlidingViewController:committingToEndPresented:), (IMP)&hook_presentation_committingToEnd, (IMP *)&orig_presentation_committingToEnd);
    MSHookMessageEx(cls, @selector(coverSheetSlidingViewControllerDidEndTransition:), (IMP)&hook_presentation_didEndTransition, (IMP *)&orig_presentation_didEndTransition);

    MSHookMessageEx(NSClassFromString(@"SBFluidSwitcherItemContainer"), @selector(setBounds:), (IMP)&hook_itemContainer_setBounds, (IMP *)&orig_itemContainer_setBounds);

    cls = NSClassFromString(@"SBFluidSwitcherViewController");
    MSHookMessageEx(cls, @selector(_itemContainerForAppLayoutIfExists:), (IMP)&hook_switcher_itemContainerForAppLayout, (IMP *)&orig_switcher_itemContainerForAppLayout);
    MSHookMessageEx(cls, @selector(_iconForWorkspaceEntity:), (IMP)&hook_switcher_iconForWorkspaceEntity, (IMP *)&orig_switcher_iconForWorkspaceEntity);
    MSHookMessageEx(cls, @selector(homeScreenIconCornerRadiusForAppLayout:), (IMP)&hook_switcher_homeScreenIconCornerRadius, (IMP *)&orig_switcher_homeScreenIconCornerRadius);
    MSHookMessageEx(cls, @selector(_performModifierMatchMoveToIconViewResponse:), (IMP)&hook_switcher_matchMoveResponse, (IMP *)&orig_switcher_matchMoveResponse);
    MSHookMessageEx(cls, @selector(_iconImageFrameForIconView:), (IMP)&hook_switcher_iconImageFrame, (IMP *)&orig_switcher_iconImageFrame);
}

__attribute__((constructor))
static void CG27TweakInitialize(void)
{
    @autoreleasepool {
        [CG27GenieDriver class];      // 提前把类注册进 runtime（原版同样在 init 阶段触碰）
        CG27PrefsStartObserving();
        CG27InstallHooks();
    }
}
