#pragma once
#include <Foundation/Foundation.h>

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
