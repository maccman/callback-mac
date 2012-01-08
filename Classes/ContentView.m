#import "ContentView.h"
#import "WebViewDelegate.h"
#import "callback_macAppDelegate.h"

@implementation ContentView

@synthesize webView, delegate;

- (void) awakeFromNib
{
	self.delegate = [[[WebViewDelegate alloc] init] autorelease];
	[self.webView setFrameLoadDelegate:self.delegate];
	[self.webView setUIDelegate:self.delegate];
	[self.webView setResourceLoadDelegate:self.delegate];
	[self.webView setDownloadDelegate:self.delegate];
	[self.webView setPolicyDelegate:self.delegate];	
    [self.webView setDrawsBackground:NO];
    [self.webView setShouldCloseWithWindow:NO];

    WebPreferences *webPrefs = [[WebPreferences alloc] initWithIdentifier:@"callback"];
    [webPrefs setCacheModel:WebCacheModelDocumentBrowser];
    [webPrefs setPlugInsEnabled:YES]; 
    [webPrefs setUserStyleSheetEnabled:NO];

    [self.webView setPreferences:webPrefs];
    [webPrefs release];
}

- (id)initWithFrame:(NSRect)frame 
{
    self = [super initWithFrame:frame];
    if (self) {
		// init here
    }
    return self;
}

- (void) drawRect:(NSRect)dirtyRect 
{
    // Drawing code here.
}

- (void) windowResized:(NSNotification*)notification;
{
	NSWindow* window = (NSWindow*)notification.object;
	NSSize size = [window frame].size;
	
	DebugNSLog(@"window width = %f, window height = %f", size.width, size.height);
	[self.webView setFrame:NSMakeRect(0, 0, size.width, size.height - [[Utils sharedInstance] titleBarHeight:window])];
    [self.webView stringByEvaluatingJavaScriptFromString:@"var e = document.createEvent('Events'); e.initEvent('orientationchange', true, false); document.dispatchEvent(e); "];
}

@end
