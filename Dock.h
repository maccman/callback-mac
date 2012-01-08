//
//  Dock.h
//  callback-mac
//
//  Created by Alex MacCaw on 06/01/2012.
//  Copyright (c) 2012 Nitobi Software Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dock : NSObject {
    
}
- (void) setBadge:(NSString*)value;
- (NSString *) badge;

@property (readwrite,copy) NSString* badge;

@end
