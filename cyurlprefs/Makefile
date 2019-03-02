include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = CyURL
CyURL_FILES = CyURLRootListController.m
CyURL_INSTALL_PATH = /Library/PreferenceBundles
CyURL_FRAMEWORKS = UIKit
CyURL_PRIVATE_FRAMEWORKS = Preferences
CyURL_CODESIGN_FLAGS = -Sent.xml

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/CyURL.plist$(ECHO_END)
