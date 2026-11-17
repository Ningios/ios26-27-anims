#pragma once
#include <objc/objc.h>
void MSHookMessageEx(Class cls, SEL sel, IMP replacement, IMP *result);
void MSHookFunction(void *symbol, void *hook, void **old);
