include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = ColorMyDotsPref

ColorMyDotsPref_FILES = $(wildcard *.m)
ColorMyDotsPref_FRAMEWORKS = UIKit
ColorMyDotsPref_PRIVATE_FRAMEWORKS = Preferences
ColorMyDotsPref_INSTALL_PATH = /Library/PreferenceBundles
ColorMyDotsPref_CFLAGS = -fobjc-arc -Wno-deprecated-declarations
ColorMyDotsPref_LIBRARIES = sparkcolourpicker

include $(THEOS_MAKE_PATH)/bundle.mk
