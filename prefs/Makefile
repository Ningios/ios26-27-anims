include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = iOS27AnimsRebornPrefs
iOS27AnimsRebornPrefs_FILES = ../src/Prefs/CG27RebornPrefs.m
iOS27AnimsRebornPrefs_CFLAGS = -fobjc-arc -I../src
iOS27AnimsRebornPrefs_INSTALL_PATH = /Library/PreferenceBundles
iOS27AnimsRebornPrefs_FRAMEWORKS = UIKit Foundation
iOS27AnimsRebornPrefs_PRIVATE_FRAMEWORKS = Preferences
iOS27AnimsRebornPrefs_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceBundles/iOS27AnimsRebornPrefs.bundle$(ECHO_END)
	$(ECHO_NOTHING)cp -r Resources/. $(THEOS_STAGING_DIR)/Library/PreferenceBundles/iOS27AnimsRebornPrefs.bundle/$(ECHO_END)
