//
//  CG27Prefs.m
//  iOS 27 动画 Reborn — 逆向重建
//
//  原版实现特征（@0xf9e0 附近）：
//    CFPreferencesCopyAppValue(key, CFSTR("com.bazik1337.ios27animsreborn"))
//    → CFDictionaryGetValue(缓存字典, key) → CFBooleanGetTypeID / CFBooleanGetValue
//    并在 @0xf988 用 CFDictionaryCreateMutable 建立缓存表，
//    在 @0xc0cc 注册 Darwin 通知 com.bazik1337.ios27animsreborn/changed 后清空缓存。
//

#import "CG27Prefs.h"
#import <CoreFoundation/CoreFoundation.h>

NSString *const kCG27Domain = @"com.bazik1337.ios27animsreborn";
NSString *const kCG27ChangedNote = @"com.bazik1337.ios27animsreborn/changed";

static CFMutableDictionaryRef gCache;
static char gCacheLock;

static const CFStringRef kCG27Keys[] = {
    CFSTR("Enabled"),
    CFSTR("AppAnimations"),
    CFSTR("NativeWallpaperZoom"),
    CFSTR("IconFlyIn"),
    CFSTR("ClearSheet"),
};

static const BOOL kCG27Defaults[] = {
    NO,     // Enabled
    YES,    // AppAnimations
    NO,     // NativeWallpaperZoom
    YES,    // IconFlyIn
    YES,    // ClearSheet
};

static void CG27PrefsChanged(CFNotificationCenterRef center, void *observer,
                             CFStringRef name, const void *object,
                             CFDictionaryRef userInfo)
{
    CG27PrefsInvalidate();
}

void CG27PrefsStartObserving(void)
{
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        CFNotificationCenterRef center = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterAddObserver(center, NULL, CG27PrefsChanged,
                                        (__bridge CFStringRef)kCG27ChangedNote,
                                        NULL, CFNotificationSuspensionBehaviorDeliverImmediately);
    });
}

void CG27PrefsInvalidate(void)
{
    __atomic_store_n(&gCacheLock, 1, __ATOMIC_SEQ_CST);
    if (gCache) {
        CFDictionaryRemoveAllValues(gCache);
        CFRelease(gCache);
        gCache = NULL;
    }
    __atomic_store_n(&gCacheLock, 0, __ATOMIC_SEQ_CST);
}

BOOL CG27Bool(CG27Feature feature)
{
    const size_t index = (size_t)feature;
    if (index >= sizeof(kCG27Keys) / sizeof(kCG27Keys[0])) {
        return NO;
    }

    CFStringRef key = kCG27Keys[index];

    if (!gCache) {
        gCache = CFDictionaryCreateMutable(kCFAllocatorDefault, 0,
                                           &kCFTypeDictionaryKeyCallBacks,
                                           &kCFTypeDictionaryValueCallBacks);
    }

    CFTypeRef cached = gCache ? CFDictionaryGetValue(gCache, key) : NULL;
    if (cached && CFGetTypeID(cached) == CFBooleanGetTypeID()) {
        return (BOOL)CFBooleanGetValue((CFBooleanRef)cached);
    }

    CFStringRef domain = (__bridge CFStringRef)kCG27Domain;
    CFTypeRef value = CFPreferencesCopyAppValue(key, domain);
    if (value) {
        if (CFGetTypeID(value) == CFBooleanGetTypeID()) {
            BOOL result = (BOOL)CFBooleanGetValue((CFBooleanRef)value);
            if (gCache) {
                CFDictionarySetValue(gCache, key, value);
            }
            CFRelease(value);
            return result;
        }
        if (CFGetTypeID(value) == CFNumberGetTypeID()) {
            int number = 0;
            CFNumberGetValue((CFNumberRef)value, kCFNumberIntType, &number);
            if (gCache) {
                CFDictionarySetValue(gCache, key, value);
            }
            CFRelease(value);
            return number != 0;
        }
        CFRelease(value);
    }

    return kCG27Defaults[index];
}
