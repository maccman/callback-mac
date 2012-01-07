//
//  Growl.h
//  callback-mac
//
//  Created by Alex MacCaw on 06/01/2012.
//  Copyright (c) 2012 Nitobi Software Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Growl/Growl.h>

#define APP_GROWL_NOTIFICATION @"Growl Notification"

@interface Growl : NSObject <GrowlApplicationBridgeDelegate> {

}

- (void) notify:(NSDictionary*)message;
- (NSString *)applicationNameForGrowl;
- (NSImage *)applicationIconForGrowl;
- (NSDictionary *)registrationDictionaryForGrowl;

@end
