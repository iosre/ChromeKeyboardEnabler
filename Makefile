export THEOS_DEVICE_IP = localhost
export THEOS_DEVICE_PORT = 2222
export ARCHS = armv7 arm64
export TARGET = iphone:clang:latest:5.0

include theos/makefiles/common.mk

TWEAK_NAME = ChromeKeyboardEnabler
ChromeKeyboardEnabler_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 Chrome"
