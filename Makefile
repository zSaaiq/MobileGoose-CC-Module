THEOS_DEVICE_IP = 192.168.0.198
ARCHS = arm64 arm64e
TARGET = iphone:clang:15.6
THEOS_PACKAGE_SCHEME=rootless
include $(THEOS)/makefiles/common.mk
BUNDLE_NAME = MobileGooseModule
MobileGooseModule_FILES = MobileGooseModule.m
MobileGooseModule_INSTALL_PATH = /Library/ControlCenter/Bundles
MobileGooseModule_CFLAGS = -fobjc-arc
MobileGooseModule_FRAMEWORKS = UIKit
MobileGooseModule_PRIVATE_FRAMEWORKS = ControlCenterUIKit

include $(THEOS_MAKE_PATH)/bundle.mk

before-stage::
	find . -name ".DS_Store" -type f -delete
