//
//  WebViewDelegate.h
//  callback-mac
//
//  Created by shazron on 10-04-30.
//  Copyright 2010 Nitobi Software Inc. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>

@class Sound;
@class Dock;
@class Growl;

@interface WebViewDelegate : NSObject {
	Sound* sound;
    Dock* dock;
    Growl* growl;
}

@property (nonatomic, retain) Sound* sound;
@property (nonatomic, retain) Dock* dock;
@property (nonatomic, retain) Growl* growl;

@end
