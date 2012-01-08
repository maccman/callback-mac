//
//  App.m
//  callback-mac
//
//  Created by Alex MacCaw on 08/01/2012.
//  Copyright (c) 2012 Nitobi Software Inc. All rights reserved.
//

#import "App.h"

@implementation App

- (void) terminate {
    [NSApp terminate:nil];
}

- (void) activate {
    [NSApp activateIgnoringOtherApps:YES];
}

- (void) hide {
    [NSApp hide:nil];
}

- (void) unhide {
    [NSApp unhide:nil];
}

- (void)beep {
    NSBeep();
}

@end
