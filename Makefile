export TARGET = iphone:clang:16.5:15.0
# 本项目本次仅构建 RootHide arm64e 版本。
export ARCHS = arm64e
export THEOS_PACKAGE_SCHEME = roothide
export DEBUG = 0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = iOS27AnimsReborn
iOS27AnimsReborn_FILES = src/Tweak/Tweak.m \
                         src/Core/CG27GenieDriver.m \
                         src/Core/CG27Spring.m \
                         src/Shared/CG27Globals.m \
                         src/Shared/CG27Prefs.m
iOS27AnimsReborn_CFLAGS = -fobjc-arc -Isrc -Wno-unused-variable -Wno-unused-function
iOS27AnimsReborn_FRAMEWORKS = Foundation UIKit QuartzCore CoreFoundation
iOS27AnimsReborn_LIBRARIES = substrate

include $(THEOS_MAKE_PATH)/tweak.mk

SUBPROJECTS += prefs
include $(THEOS_MAKE_PATH)/aggregate.mk

after-install::
	install.exec "killall -9 SpringBoard 2>/dev/null || true"
