#import "callback_macAppDelegate.h"

@implementation callback_macAppDelegate

@synthesize window, contentView;

- (void) applicationDidStartLaunching:(NSNotification *)aNotification {}

- (void) applicationWillFinishLaunching:(NSNotification *)aNotification
{
    [[NSNotificationCenter defaultCenter] addObserver:self.contentView 
											 selector:@selector(windowResized:) 
												 name:NSWindowDidResizeNotification 
											   object:[self window]];
	
    NSURL* fileUrl = [NSURL fileURLWithPath:[[Utils sharedInstance] pathForResource:kStartPage]];
	[self.contentView.webView setMainFrameURL:[fileUrl description]];

}

- (void) applicationDidFinishLaunching:(NSNotification *)aNotification {    
    self.contentView.webView.alphaValue = 1.0;
    self.contentView.alphaValue = 1.0;
}

//- (BOOL)applicationShouldHandleReopen:(NSApplication *)theApplication
//                    hasVisibleWindows:(BOOL)flag
//{
//	if( !flag ) {
//        [self.window makeKeyAndOrderFront:nil];
//        return NO;
//    }
//	
//	return YES;
//}

@end
