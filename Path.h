//
//  Path.h
//  callback-mac
//
//  Created by Alex MacCaw on 08/01/2012.
//  Copyright (c) 2012 Nitobi Software Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Path : NSObject {
    
}

- (NSString *) application;
- (NSString *) resource;

@property (readonly,copy) NSString* application;
@property (readonly,copy) NSString* resource;

@end
