#pragma once
#include <objc/objc.h>
#include <objc/runtime.h>
typedef __builtin_va_list va_list;
#include <math.h>

typedef struct { double x, y; } CGPoint;
typedef struct { double width, height; } CGSize;
typedef struct { CGPoint origin; CGSize size; } CGRect;
typedef struct CATransform3D { CGFloat m11, m12, m13, m14, m21, m22, m23, m24,
                                     m31, m32, m33, m34, m41, m42, m43, m44; } CATransform3D;

@class NSString;

@protocol NSObject
- (BOOL)respondsToSelector:(SEL)sel;
- (BOOL)isKindOfClass:(Class)cls;
- (BOOL)isEqual:(id)object;
- (Class)class;
- (id)performSelector:(SEL)sel;
- (id)performSelector:(SEL)sel withObject:(id)obj;
@end

__attribute__((objc_root_class))
@interface NSObject <NSObject>
+ (instancetype)alloc;
+ (Class)class;
+ (BOOL)instancesRespondToSelector:(SEL)sel;
- (instancetype)init;
- (id)copy;
- (id)mutableCopy;
@end

@interface NSString : NSObject
+ (instancetype)stringWithFormat:(NSString *)fmt, ...;
+ (instancetype)stringWithUTF8String:(const char *)s;
- (BOOL)isEqualToString:(NSString *)s;
- (BOOL)hasSuffix:(NSString *)s;
- (NSString *)stringByAppendingString:(NSString *)s;
- (NSString *)stringByAppendingPathComponent:(NSString *)s;
- (NSString *)stringByAppendingPathExtension:(NSString *)s;
@property (readonly) NSUInteger length;
@property (readonly) const char *fileSystemRepresentation;
@end

@interface NSNumber : NSObject
+ (NSNumber *)numberWithBool:(BOOL)v;
+ (NSNumber *)numberWithDouble:(double)v;
+ (NSNumber *)numberWithInt:(int)v;
- (BOOL)boolValue;
- (double)doubleValue;
@end

@interface NSArray<T> : NSObject
+ (instancetype)arrayWithObject:(T)o;
+ (instancetype)arrayWithObjects:(const T [])objects count:(NSUInteger)cnt;
+ (instancetype)array;
@property (readonly) NSUInteger count;
@property (readonly) T lastObject;
- (T)objectAtIndexedSubscript:(NSUInteger)i;
@end

@interface NSMutableArray<T> : NSArray<T>
- (void)addObject:(T)o;
- (void)removeLastObject;
- (void)removeObject:(T)o;
@end

@interface NSDictionary<K, V> : NSObject
+ (instancetype)dictionaryWithObjects:(const V [])objects forKeys:(const K [])keys count:(NSUInteger)cnt;
+ (instancetype)dictionaryWithContentsOfFile:(NSString *)path;
- (V)objectForKeyedSubscript:(K)key;
- (V)objectForKey:(K)key;
@end

@interface NSMutableDictionary<K, V> : NSDictionary<K, V>
- (void)setObject:(V)o forKey:(K)k;
- (void)setObject:(V)o forKeyedSubscript:(K)k;
@end

@interface NSSet<T> : NSObject
- (NSArray<T> *)allObjects;
@property (readonly) NSUInteger count;
@end

@interface NSHashTable<T> : NSObject
+ (instancetype)weakObjectsHashTable;
+ (instancetype)strongToStrongObjectsMapTable;
- (void)addObject:(T)o;
- (void)removeObject:(T)o;
- (void)removeAllObjects;
- (void)minusHashTable:(NSHashTable *)t;
- (BOOL)containsObject:(T)o;
- (NSArray<T> *)allObjects;
@end

@interface NSException : NSObject
@end

@interface NSRunLoop : NSObject
+ (NSRunLoop *)mainRunLoop;
+ (NSRunLoop *)currentRunLoop;
- (void)addTimer:(id)timer forMode:(NSString *)mode;
@end

@interface NSValue : NSObject
+ (NSValue *)valueWithCGPoint:(CGPoint)p;
+ (NSValue *)valueWithCATransform3D:(CATransform3D)t;
@property (readonly) CGPoint CGPointValue;
@end

@interface NSURL : NSObject
+ (instancetype)URLWithString:(NSString *)s;
@end

@interface NSBundle : NSObject
+ (instancetype)bundleForClass:(Class)cls;
+ (instancetype)bundleWithIdentifier:(NSString *)ident;
@property (readonly) NSString *bundlePath;
@property (readonly) NSDictionary *infoDictionary;
@end

@interface NSFileManager : NSObject
+ (instancetype)defaultManager;
- (BOOL)fileExistsAtPath:(NSString *)path;
@end

@interface NSIndexPath : NSObject
@end

@interface NSSortDescriptor : NSObject
@end

extern NSString *NSRunLoopCommonModes;
extern double CACurrentMediaTime(void);
extern void NSLog(NSString *fmt, ...);

#define FOUNDATION_EXPORT extern
#define NS_ASSUME_NONNULL_BEGIN
#define NS_ASSUME_NONNULL_END
#define __unused
typedef long dispatch_once_t;
extern void dispatch_once(dispatch_once_t *predicate, void (^block)(void));
typedef struct dispatch_queue_s *dispatch_queue_t;
extern dispatch_queue_t dispatch_get_main_queue(void);
typedef unsigned long long dispatch_time_t;
#define DISPATCH_TIME_NOW 0ull
#define NSEC_PER_SEC 1000000000ull
extern dispatch_time_t dispatch_time(dispatch_time_t when, long long delta);
extern void dispatch_after(dispatch_time_t when, dispatch_queue_t queue, void (^block)(void));


#ifndef nil
#define nil ((id)0)
#endif
#ifndef Nil
#define Nil ((Class)0)
#endif
#ifndef MAX
#define MAX(a, b) ((a) > (b) ? (a) : (b))
#endif
#ifndef MIN
#define MIN(a, b) ((a) < (b) ? (a) : (b))
#endif
#ifndef NS_ENUM
#define NS_ENUM(_type, _name) _type _name; enum
#endif
#ifndef NS_OPTIONS
#define NS_OPTIONS(_type, _name) _type _name; enum
#endif

typedef long long int64_t;
typedef unsigned long long uint64_t;
#ifndef NULL
#define NULL ((void *)0)
#endif
#ifndef true
#define true 1
#define false 0
typedef signed char bool;
#endif
void *memcpy(void *dst, const void *src, unsigned long n);
void *memset(void *dst, int c, unsigned long n);
int strncmp(const char *a, const char *b, unsigned long n);
