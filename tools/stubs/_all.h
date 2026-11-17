// ==== objc/objc.h ====

typedef __SIZE_TYPE__ size_t;
typedef signed char BOOL;
#define YES ((BOOL)1)
#define NO ((BOOL)0)
typedef struct objc_object *id;
typedef struct objc_class *Class;
typedef struct objc_selector *SEL;
typedef id (*IMP)(id, SEL, ...);
typedef void *Method;
typedef long NSInteger;
typedef unsigned long NSUInteger;
typedef double CGFloat;

// ==== os/lock.h ====

typedef struct os_unfair_lock_s { unsigned int _os_unfair_lock_opaque; } os_unfair_lock;
#define OS_UNFAIR_LOCK_INIT ((os_unfair_lock){0})
void os_unfair_lock_lock(os_unfair_lock *);
void os_unfair_lock_unlock(os_unfair_lock *);

// ==== sys/types.h ====

typedef int pid_t;
typedef unsigned long size_t;

// ==== spawn.h ====

typedef struct { void *opaque[8]; } posix_spawnattr_t;
typedef struct { void *opaque[8]; } posix_spawn_file_actions_t;
int posix_spawn(pid_t *pid, const char *path, const posix_spawn_file_actions_t *fa,
                const posix_spawnattr_t *attr, char *const argv[], char *const envp[]);

// ==== objc/runtime.h ====

Class objc_getClass(const char *name);
Class NSClassFromString(void *name);
SEL NSSelectorFromString(void *name);
int class_getInstanceVariable(Class cls, const char *name);
const char *ivar_getTypeEncoding(int ivar);
long long ivar_getOffset(int ivar);
Class object_getClass(id obj);

// ==== objc/message.h ====

void objc_msgSend(void);

// ==== substrate.h ====

void MSHookMessageEx(Class cls, SEL sel, IMP replacement, IMP *result);
void MSHookFunction(void *symbol, void *hook, void **old);

// ==== Foundation/Foundation.h ====

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

// ==== QuartzCore/QuartzCore.h ====


typedef struct CAFrameRateRange { float minimum, maximum, preferred; } CAFrameRateRange;
static inline CAFrameRateRange CAFrameRateRangeMake(float a, float b, float c) {
    CAFrameRateRange r = { a, b, c }; return r;
}

typedef struct CGColor *CGColorRef;
typedef struct CGContext *CGContextRef;

extern CATransform3D CATransform3DIdentity;
extern NSString *kCAFillModeBoth;
extern NSString *kCAFillModeBackwards;
extern NSString *kCAAnimationDiscrete;
extern NSString *kCAMediaTimingFunctionEaseOut;
extern CGPoint CGPointZero;
extern CGRect CGRectZero;

@class CAAnimation;

@interface CALayer : NSObject
+ (instancetype)layer;
+ (instancetype)meshTransform;
@property CGRect frame;
@property CGRect bounds;
@property CGPoint position;
@property double zPosition;
@property double opacity;
@property double cornerRadius;
@property double borderWidth;
@property double beginTime;
@property double speed;
@property double timeOffset;
@property (getter=isHidden) BOOL hidden;
@property BOOL masksToBounds;
@property BOOL allowsEdgeAntialiasing;
@property double contentsScale;
@property double rasterizationScale;
@property CGFloat anchorPointZ;
@property CATransform3D transform;
@property CATransform3D sublayerTransform;
@property CGColorRef backgroundColor;
@property CGColorRef borderColor;
@property (copy) NSString *name;
@property (copy) NSArray *filters;
@property (copy) NSArray *animations;
@property (copy) NSString *fillMode;
@property (copy) NSString *calculationMode;
@property (readonly) CALayer *superlayer;
@property (readonly) CALayer *presentationLayer;
@property (readonly) CALayer *modelLayer;
@property (readonly) NSArray *sublayers;
@property (copy) NSString *minificationFilter;
- (void)addSublayer:(CALayer *)layer;
- (void)removeFromSuperlayer;
- (void)addAnimation:(CAAnimation *)anim forKey:(NSString *)key;
- (void)removeAnimationForKey:(NSString *)key;
- (CAAnimation *)animationForKey:(NSString *)key;
- (void)setValue:(id)value forKey:(NSString *)key;
- (void)setValue:(id)value forKeyPath:(NSString *)key;
- (id)valueForKey:(NSString *)key;
- (id)valueForKeyPath:(NSString *)key;
- (void)setNeedsLayout;
- (void)layoutIfNeeded;
- (void)renderInContext:(CGContextRef)ctx;
- (void)removeAllAnimations;
- (CGPoint)convertPoint:(CGPoint)p fromLayer:(CALayer *)l;
- (CGPoint)convertPoint:(CGPoint)p toLayer:(CALayer *)l;
- (CGRect)convertRect:(CGRect)r fromLayer:(CALayer *)l;
- (CGRect)convertRect:(CGRect)r toLayer:(CALayer *)l;
@end

@interface CATransaction : NSObject
+ (void)begin;
+ (void)commit;
+ (void)setDisableActions:(BOOL)flag;
+ (void)setAnimationDuration:(double)d;
+ (BOOL)disableActions;
@end

@interface CAAnimation : NSObject
+ (instancetype)animation;
@property (copy) NSString *keyPath;
@property (copy) NSString *fillMode;
@property double duration;
@property double beginTime;
@property double speed;
@property (copy) id fromValue;
@property (copy) id toValue;
@property (retain) id timingFunction;
@property BOOL removedOnCompletion;
@property (getter=isAdditive) BOOL additive;
@property (copy) NSArray *keyTimes;
@property (copy) NSArray *values;
@end

@interface CABasicAnimation : CAAnimation
+ (instancetype)animationWithKeyPath:(NSString *)path;
@property double damping;
@property double stiffness;
@property double mass;
@property double initialVelocity;
@property (readonly) double settlingDuration;
@end

@interface CAKeyframeAnimation : CAAnimation
+ (instancetype)animationWithKeyPath:(NSString *)path;
@property (copy) NSString *calculationMode;
@end

@interface CASpringAnimation : CABasicAnimation
@end

@interface CAAnimationGroup : CAAnimation
@property (copy) NSArray *animations;
@end

@interface CAGradientLayer : CALayer
@property (copy) NSArray *colors;
@property (copy) NSArray *locations;
@property CGPoint startPoint;
@property CGPoint endPoint;
@end

@interface CAFilter : NSObject
+ (instancetype)filterWithName:(NSString *)name;
@property (copy) NSString *name;
@property (retain) id value;
@end

@interface CAMediaTimingFunction : NSObject
+ (instancetype)functionWithName:(NSString *)name;
@end

@interface CADisplayLink : NSObject
+ (CADisplayLink *)displayLinkWithTarget:(id)target selector:(SEL)sel;
@property (readonly) double timestamp;
@property (readonly) double targetTimestamp;
@property (readonly) double duration;
@property NSInteger frameInterval;
@property float preferredFramesPerSecond;
@property CAFrameRateRange preferredFrameRateRange;
@property (getter=isPaused) BOOL paused;
- (void)addToRunLoop:(NSRunLoop *)runloop forMode:(NSString *)mode;
- (void)invalidate;
@end

// ==== UIKit/UIKit.h ====


typedef NSInteger UIUserInterfaceIdiom;
typedef NSInteger UITableViewCellStyle;

extern double UIAnimationDragCoefficient(void);
extern BOOL UIAccessibilityIsReduceMotionEnabled(void);

static inline CGRect CGRectMake(double x, double y, double w, double h) {
    CGRect r = {{x, y}, {w, h}}; return r;
}
static inline CGPoint CGPointMake(double x, double y) { CGPoint p = {x, y}; return p; }
static inline CGSize CGSizeMake(double w, double h) { CGSize s = {w, h}; return s; }
static inline double CGRectGetMinX(CGRect r) { return r.origin.x; }
static inline double CGRectGetMaxX(CGRect r) { return r.origin.x + r.size.width; }
static inline double CGRectGetMinY(CGRect r) { return r.origin.y; }
static inline double CGRectGetMaxY(CGRect r) { return r.origin.y + r.size.height; }
static inline double CGRectGetMidX(CGRect r) { return r.origin.x + r.size.width * 0.5; }
static inline double CGRectGetMidY(CGRect r) { return r.origin.y + r.size.height * 0.5; }
static inline double CGRectGetWidth(CGRect r) { return r.size.width; }
static inline double CGRectGetHeight(CGRect r) { return r.size.height; }
static inline BOOL CGRectIsEmpty(CGRect r) { return r.size.width <= 0 || r.size.height <= 0; }
static inline BOOL CGRectIsInfinite(CGRect r) { return 0; }
static inline BOOL CGRectContainsRect(CGRect a, CGRect b) { return 0; }
static inline BOOL CGRectIntersectsRect(CGRect a, CGRect b) { return 0; }
static inline CGRect CGRectInset(CGRect r, double dx, double dy) { return r; }
extern const CGRect CGRectZeroValue;
#define CGRectZero CGRectZeroValue
#define CGSizeZero CGSizeMake(0, 0)
#define CGPointZeroPoint CGPointMake(0, 0)

@class UIWindow, UIWindowScene, UIGraphicsImageRendererContext;

@interface UIColor : NSObject
+ (UIColor *)colorWithWhite:(double)w alpha:(double)a;
+ (UIColor *)colorWithRed:(double)r green:(double)g blue:(double)b alpha:(double)a;
+ (UIColor *)clearColor;
@end

@interface UIImage : NSObject
+ (UIImage *)systemImageNamed:(NSString *)name;
+ (UIImage *)imageWithData:(id)data;
- (UIImage *)imageWithTintColor:(UIColor *)color renderingMode:(NSInteger)mode;
@end

@interface UIResponder : NSObject
@end

@interface UIView : UIResponder
@property (retain) UIColor *tintColor;
@property (retain) UIColor *backgroundColor;
- (instancetype)initWithFrame:(CGRect)frame;
+ (void)performWithoutAnimation:(void (^)(void))block;
+ (void)animateWithDuration:(double)d animations:(void (^)(void))a;
@property CGRect frame;
@property CGRect bounds;
@property CGPoint center;
@property (copy) NSString *accessibilityIdentifier;
@property (getter=isHidden) BOOL hidden;
@property (getter=isUserInteractionEnabled) BOOL userInteractionEnabled;
@property BOOL clipsToBounds;
@property double alpha;
@property (readonly) CALayer *layer;
@property (readonly) UIView *superview;
@property (readonly) NSArray *subviews;
@property (readonly) UIWindow *window;
@property (readonly) UIWindowScene *windowScene;
@property (copy) NSArray *subviewsOrder;
- (void)addSubview:(UIView *)view;
- (void)insertSubview:(UIView *)view aboveSubview:(UIView *)other;
- (void)removeFromSuperview;
- (void)layoutSubviews;
- (void)layoutIfNeeded;
- (void)setNeedsLayout;
- (void)didMoveToSuperview;
- (void)addGestureRecognizer:(id)gesture;
- (void)setContentCornerRadii:(id)radii;
- (void)setCornerRadiusSettings:(id)settings;
- (CGPoint)convertPoint:(CGPoint)p fromView:(UIView *)v;
- (CGPoint)convertPoint:(CGPoint)p toView:(UIView *)v;
- (CGRect)convertRect:(CGRect)r toView:(UIView *)v;
- (CGRect)convertRect:(CGRect)r fromView:(UIView *)v;
@end

@interface UIWindowScene : NSObject
@end

@interface UIWindow : UIView
@end

@interface UIScreen : NSObject
+ (UIScreen *)mainScreen;
@property (readonly) CGRect bounds;
@property (readonly) double scale;
@end

@interface UIImageView : UIView
- (instancetype)initWithImage:(UIImage *)image;
@property (retain) UIImage *image;
@property (retain) UIColor *tintColor;
@end

@interface UIGraphicsImageRendererFormat : NSObject
@end

@interface UIGraphicsImageRendererContext : NSObject
@property (readonly) CGContextRef CGContext;
@end

@interface UIGraphicsImageRenderer : NSObject
- (instancetype)initWithBounds:(CGRect)bounds;
- (UIImage *)imageWithActions:(void (^)(UIGraphicsImageRendererContext *ctx))actions;
@end

@interface UIGestureRecognizer : NSObject
@end

@interface UITableViewCell : UIView
@property (readonly) UIImageView *imageView;
@end

@interface UITableView : UIView
@property (retain) UIColor *backgroundColor;
@property (retain) UIColor *separatorColor;
@property (retain) id dataSource;
@end


@interface UINavigationItem : NSObject
@property (copy) NSString *title;
@end

@interface UIViewController : UIResponder
@property (readonly) UIView *view;
@property (copy) NSString *title;
@property (readonly) UINavigationItem *navigationItem;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)animated;
- (void)viewWillDisappear:(BOOL)animated;
- (void)presentViewController:(id)vc animated:(BOOL)animated completion:(void (^)(void))completion;
@end

@interface UITableViewController : UIViewController
@property (retain) UITableView *tableView;
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
@end

@interface UIApplication : NSObject
+ (UIApplication *)sharedApplication;
- (BOOL)openURL:(NSURL *)url options:(NSDictionary *)options completionHandler:(void (^)(BOOL))handler;
@end

@interface UIAlertAction : NSObject
+ (instancetype)actionWithTitle:(NSString *)title style:(NSInteger)style handler:(void (^)(UIAlertAction *action))handler;
@end

@interface UIAlertController : UIViewController
+ (instancetype)alertControllerWithTitle:(NSString *)title message:(NSString *)message preferredStyle:(NSInteger)style;
- (void)addAction:(UIAlertAction *)action;
@end

#define UIAlertControllerStyleAlert 1
#define UIAlertActionStyleCancel 1
#define UIAlertActionStyleDestructive 2

// ==== Preferences/PSListController.h ====


@interface PSSpecifier : NSObject
+ (instancetype)preferenceSpecifierNamed:(NSString *)name
                                 target:(id)target
                                    set:(SEL)set
                                    get:(SEL)get
                                 detail:(Class)detail
                                   cell:(NSString *)cell
                                   edit:(Class)edit;
- (id)propertyForKey:(NSString *)key;
- (void)setProperty:(id)value forKey:(NSString *)key;
@property (retain) NSString *identifier;
@end

@interface PSListController : UITableViewController
- (NSArray *)specifiers;
- (PSSpecifier *)specifier;
- (id)specifierForID:(NSString *)identifier;
- (id)specifierAtIndexPath:(NSIndexPath *)path;
- (id)readPreferenceValue:(PSSpecifier *)specifier;
- (void)setPreferenceValue:(id)value specifier:(PSSpecifier *)specifier;
- (void)reloadSpecifiers;
@end

extern NSString *const PSGroupCell;
extern NSString *const PSSwitchCell;
extern NSString *const PSButtonCell;
extern NSString *const PSLinkCell;
extern NSString *const PSLinkListCell;
extern NSString *const PSTextFieldCell;

// ==== CoreFoundation/CoreFoundation.h ====

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
