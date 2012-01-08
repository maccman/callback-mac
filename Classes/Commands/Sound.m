//
//  Sound.m
//  callback-mac
//
//  Created by shazron on 10-04-30.
//  Copyright 2010 Nitobi Software Inc. All rights reserved.
//

#import "Sound.h"


@implementation Sound


- (void) play:(NSString*)file
{
	NSURL* fileUrl  = [NSURL fileURLWithPath:[[Utils sharedInstance] pathForResource:file]];
	DebugNSLog(@"Sound file:%@", [fileUrl description]);
	
	NSSound* sound = [[[NSSound alloc] initWithContentsOfURL:fileUrl byReference:YES] autorelease];
	[sound play];
}

- (void) playSystem:(NSString*) name
{
    NSSound *systemSound = [NSSound soundNamed:name];
	[systemSound play];
}

#pragma mark WebScripting Protocol

+ (BOOL) isSelectorExcludedFromWebScript:(SEL)selector
{
    return NO;
}

+ (BOOL) isKeyExcludedFromWebScript:(const char*)name
{
	return YES;
}

@end
