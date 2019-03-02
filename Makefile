export ARCHS = armv7 arm64
export TARGET = iphone:clang:9.2:6.0
DEBUG = 0
FINALPACKAGE = 1
PACKAGE_VERSION = $(THEOS_PACKAGE_BASE_VERSION)

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = cyurl
cyurl_FILES = Tweak.xm
cyurl_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 Cydia"

purge::
	@rm -Rf .theos packages
	@find . -name .DS_Store -exec rm -Rf {} \;
	$(ECHO_BEGIN)$(PRINT_FORMAT_RED) "Purging"$(ECHO_END); $(ECHO_PIPEFAIL)
	
SUBPROJECTS += cyurlprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
