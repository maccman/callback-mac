//
//  Dock.m
//  callback-mac
//
//  Created by Alex MacCaw on 06/01/2012.
//  Copyright (c) 2012 Nitobi Software Inc. All rights reserved.
//

#import "Dock.h"

@implementation Dock

- (void) badge:(NSString*)value
{
    NSDockTile *tile = [[NSApplication sharedApplication] dockTile];
    [tile setBadgeLabel:value];
}

#pragma mark WebScripting Protocol

/* checks whether a selector is acceptable to be called from JavaScript */
+ (BOOL) isSelectorExcludedFromWebScript:(SEL)selector
{
    if (selector == @selector(badge:))  
        return NO;  
    
    return YES;  
}

/* helper function so we don't have to have underscores and stuff in js to refer to the right method */
+ (NSString*) webScriptNameForSelector:(SEL)aSelector
{
	id	result = nil;
	
	if (aSelector == @selector(badge:)) {
		result = @"badge";
	}
	
	return result;
}

// right now exclude all properties (eg keys)
+ (BOOL) isKeyExcludedFromWebScript:(const char*)name
{
	return YES;
}

@end
