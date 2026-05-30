TARGET := iphone:clang:latest:16.5
ARCHS = arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = YTStartupTab
$(TWEAK_NAME)_FILES = Tweak.x
$(TWEAK_NAME)_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
