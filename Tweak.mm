#import <UIKit/UIKit.h>

inline BOOL PreferencesBool(NSString* key, BOOL fallback)
{
	NSDictionary* prefs = [NSDictionary dictionaryWithContentsOfFile:@"/var/mobile/Library/Preferences/com.cryptic.cyurl.plist"];
	return prefs[key] ? [prefs[key] boolValue] : fallback;
}

%hook UIAlertView
- (void)addTextFieldWithValue:(id)value label:(id)label
{
	BOOL toggle = PreferencesBool(@"urltoggle", YES);
	%orig(toggle ? @"https://" : value, label);
}
%end