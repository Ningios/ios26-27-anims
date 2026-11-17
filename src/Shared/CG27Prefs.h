//
//  CG27Prefs.h
//  iOS 27 动画 Reborn — 逆向重建
//
//  对应原版 @0xf200-@0xfac0 区间的配置读取函数
//  （CFPreferencesCopyAppValue + CFDictionary 缓存 + Darwin 通知刷新）。
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

extern NSString *const kCG27Domain;        // com.bazik1337.ios27animsreborn
extern NSString *const kCG27ChangedNote;   // com.bazik1337.ios27animsreborn/changed

typedef NS_ENUM(NSInteger, CG27Feature) {
    CG27FeatureEnabled = 0,       // Enabled
    CG27FeatureAppAnimations,     // AppAnimations
    CG27FeatureNativeWallpaper,   // NativeWallpaperZoom
    CG27FeatureIconFlyIn,         // IconFlyIn
    CG27FeatureClearSheet,        // ClearSheet
};

/// 读取布尔配置（原版对每个键做了字典缓存）。
FOUNDATION_EXPORT BOOL CG27Bool(CG27Feature feature);

/// 立即丢弃缓存（收到 Darwin 通知后调用）。
FOUNDATION_EXPORT void CG27PrefsInvalidate(void);

/// 开始监听配置变化。
FOUNDATION_EXPORT void CG27PrefsStartObserving(void);

NS_ASSUME_NONNULL_END
