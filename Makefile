ARCHS = arm64 arm64e
TARGET = iphone:clang:latest:14.0
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = CheapshotTweak
CheapshotTweak_FILES = Tweak.xm
CheapshotTweak_FRAMEWORKS = CoreLocation

include $(THEOS)/makefiles/tweak.mk
