//
//  WebViewDelegate.m
//  callback-mac
//
//  Created by shazron on 10-04-30.
//  Copyright 2010 Nitobi Software Inc. All rights reserved.
//

#import "WebViewDelegate.h"
#import "Sound.h"
#import "Dock.h"
#import "GrowlNotifier.h"

@implementation WebViewDelegate

@synthesize sound;
@synthesize dock;
@synthesize growl;

- (void) webView:(WebView*)webView windowScriptObjectAvailable:(WebScriptObject*)windowScriptObject
{
	if (self.sound == nil) { self.sound = [Sound new]; }
	[windowScriptObject setValue:self.sound forKey:@"sound"];

	if (self.dock == nil) { self.dock = [Dock new]; }
	[windowScriptObject setValue:self.dock forKey:@"dock"];

	if (self.growl == nil) { self.growl = [GrowlNotifier new]; }
	[windowScriptObject setValue:self.growl forKey:@"growl"];
}

/* This logs all errors from Javascript, nifty */
- (void) webView:(WebView*)webView addMessageToConsole:(NSDictionary*)message
{
	if (![message isKindOfClass:[NSDictionary class]]) { 
		return;
	}
	
	NSLog(@"JavaScript error: %@:%@: %@", 
		  [[message objectForKey:@"sourceURL"] lastPathComponent],	// could be nil
		  [message objectForKey:@"lineNumber"],
		  [message objectForKey:@"message"]);
}

#pragma mark WebScripting protocol

/* checks whether a selector is acceptable to be called from JavaScript */
+ (BOOL) isSelectorExcludedFromWebScript:(SEL)selector
{
	return YES;
}

// right now exclude all properties (eg keys)
+ (BOOL) isKeyExcludedFromWebScript:(const char*)name
{
	return YES;
}


@end
