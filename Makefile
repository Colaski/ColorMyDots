export PREFIX=$(THEOS)/toolchain/Xcode.xctoolchain/usr/bin/
export ARCHS = arm64 arm64e

export TARGET := iphone:clang:14.4
INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ColorMyDots

ColorMyDots_FILES = Tweak.x
ColorMyDots_CFLAGS = -fobjc-arc

ColorMyDots_LIBRARIES = sparkcolourpicker

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += colormydotspref
include $(THEOS_MAKE_PATH)/aggregate.mk
