#pragma once
#include <Foundation/Foundation.h>
typedef const void *CFTypeRef;
typedef const struct __CFString *CFStringRef;
typedef const struct __CFDictionary *CFDictionaryRef;
typedef struct __CFDictionary *CFMutableDictionaryRef;
typedef const struct __CFBoolean *CFBooleanRef;
typedef const struct __CFNumber *CFNumberRef;
typedef struct __CFAllocator *CFAllocatorRef;
typedef struct __CFNotificationCenter *CFNotificationCenterRef;
typedef long CFIndex;
typedef unsigned long CFTypeID;
#define CFSTR(c) ((CFStringRef)(c))
extern CFStringRef (__bridge_retained_hack)(void);
extern void CFRelease(CFTypeRef cf);
extern CFTypeRef CFRetain(CFTypeRef cf);
extern CFTypeID CFGetTypeID(CFTypeRef cf);
extern CFTypeID CFBooleanGetTypeID(void);
extern CFTypeID CFNumberGetTypeID(void);
extern int CFBooleanGetValue(CFBooleanRef b);
extern int CFNumberGetValue(CFNumberRef n, int type, void *value);
#define kCFNumberIntType 9
extern CFTypeRef CFPreferencesCopyAppValue(CFStringRef key, CFStringRef app);
extern void CFPreferencesSetAppValue(CFStringRef key, CFTypeRef value, CFStringRef app);
extern void CFPreferencesAppSynchronize(CFStringRef app);
extern CFMutableDictionaryRef CFDictionaryCreateMutable(CFAllocatorRef alloc, CFIndex capacity, const void *keyCB, const void *valueCB);
extern void CFDictionarySetValue(CFMutableDictionaryRef d, const void *key, const void *value);
extern const void *CFDictionaryGetValue(CFDictionaryRef d, const void *key);
extern void CFDictionaryRemoveAllValues(CFMutableDictionaryRef d);
extern CFNotificationCenterRef CFNotificationCenterGetDarwinNotifyCenter(void);
typedef void (*CFNotificationCallback)(CFNotificationCenterRef center, void *observer, CFStringRef name, const void *object, CFDictionaryRef userInfo);
typedef long CFNotificationSuspensionBehavior;
#define CFNotificationSuspensionBehaviorDeliverImmediately 4
extern void CFNotificationCenterAddObserver(CFNotificationCenterRef center, const void *observer, CFNotificationCallback cb, CFStringRef name, const void *object, CFNotificationSuspensionBehavior behavior);
extern void CFNotificationCenterPostNotification(CFNotificationCenterRef center, CFStringRef name, const void *object, CFDictionaryRef userInfo, unsigned char deliverImmediately);
extern CFAllocatorRef kCFAllocatorDefault;
extern const void *kCFTypeDictionaryKeyCallBacks;
extern const void *kCFTypeDictionaryValueCallBacks;
extern CFBooleanRef kCFBooleanTrue;
extern CFBooleanRef kCFBooleanFalse;
