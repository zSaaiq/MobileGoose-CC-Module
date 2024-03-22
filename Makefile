THEOS_DEVICE_IP = 192.168.178.116
FINALPACKAGE = 1
PREFIX = $(THEOS)/toolchain/Xcode.xctoolchain/usr/bin/
THEOS_PACKAGE_SCHEME=rootless
export TARGET = iphone:15.6
ARCHS = arm64 arm64e
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
