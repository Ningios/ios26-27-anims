#pragma once
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
