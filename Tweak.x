#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <SparkColourPickerUtils.h>


// Preference Vars
UIColor *currentColor;
UIColor *otherColor;



%hook UIPageControl
//The currently selected page
-(UIColor *)currentPageIndicatorTintColor {
        return currentColor;
}

//The non-selected pages
-(UIColor *)pageIndicatorTintColor {
        return otherColor;
}
%end

//Prefereneces loader
static void loadPrefs() {
    NSMutableDictionary *preferences = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/com.colaski.colormydotspref.plist"];

    currentColor = [SparkColourPickerUtils colourWithString: [preferences objectForKey:@"currentColor"] withFallback: @"#ffffff"];
    otherColor = [SparkColourPickerUtils colourWithString: [preferences objectForKey:@"otherColor"] withFallback: @"#7d7d7d"];
}

%ctor {
    loadPrefs(); // Load preferences into variables
	CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(), NULL, (CFNotificationCallback)loadPrefs, CFSTR("com.colaski.colormydotspref/saved"), NULL, CFNotificationSuspensionBehaviorCoalesce); // Listen for preference changes
}