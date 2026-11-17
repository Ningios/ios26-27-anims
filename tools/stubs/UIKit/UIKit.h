#pragma once
#include <Foundation/Foundation.h>
#include <QuartzCore/QuartzCore.h>

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
