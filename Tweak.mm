#import <UIKit/UIKit.h>

BOOL toggle = true;

%hook UIAlertView
- (void)addTextFieldWithValue:(id)value label:(id)label
{
	NSDictionary *prefs = [NSDictionary dictionaryWithContentsOfFile:@"/var/mobile/Library/Preferences/com.cryptic.cyurl.plist"];
	if (prefs)
		toggle = [prefs[@"urltoggle"] boolValue];
  if(toggle)
    %orig(@"https://", label);
  else
    %orig;
}
%end