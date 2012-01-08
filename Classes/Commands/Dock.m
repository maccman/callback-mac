//
//  Dock.m
//  callback-mac
//
//  Created by Alex MacCaw on 06/01/2012.
//  Copyright (c) 2012 Nitobi Software Inc. All rights reserved.
//

#import "Dock.h"

@implementation Dock

@synthesize badge;

- (void) setBadge:(NSString *)value
{
    NSDockTile *tile = [[NSApplication sharedApplication] dockTile];
    [tile setBadgeLabel:value];
}

- (NSString *) badge
{
    NSDockTile *tile = [[NSApplication sharedApplication] dockTile];
    return [tile badgeLabel];
}

#pragma mark WebScripting Protocol

/* checks whether a selector is acceptable to be called from JavaScript */
+ (BOOL) isSelectorExcludedFromWebScript:(SEL)selector
{
    return NO;
}

// right now exclude all properties (eg keys)
+ (BOOL) isKeyExcludedFromWebScript:(const char*)name
{
	return NO;
}

@end
