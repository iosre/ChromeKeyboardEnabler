%hook MainController
- (BOOL)application:(UIApplication *)application shouldAllowExtensionPointIdentifier:(NSString *)extensionPointIdentifier
{
	BOOL result = %orig;
	if ([extensionPointIdentifier isEqualToString:@"com.apple.keyboard-service"]) return %orig(application, @"com.naken.chromekeyboardenabler");
	return result;
}
%end
