#import <Cocoa/Cocoa.h>
#import "ContentView.h"

#if (MAC_OS_X_VERSION_MAX_ALLOWED <= MAC_OS_X_VERSION_10_5)
@interface callback_macAppDelegate : NSObject  {
#else
@interface callback_macAppDelegate : NSObject <NSApplicationDelegate> {
#endif
	IBOutlet NSWindow* window;
	IBOutlet ContentView* contentView;
   }

@property (nonatomic, retain) NSWindow* window;
@property (nonatomic, retain) ContentView* contentView;

@end
