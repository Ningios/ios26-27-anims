#pragma once
#include "objc.h"
Class objc_getClass(const char *name);
Class NSClassFromString(void *name);
SEL NSSelectorFromString(void *name);
int class_getInstanceVariable(Class cls, const char *name);
const char *ivar_getTypeEncoding(int ivar);
long long ivar_getOffset(int ivar);
Class object_getClass(id obj);
