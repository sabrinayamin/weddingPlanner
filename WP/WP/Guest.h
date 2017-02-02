//
//  Guest.h
//  WP
//
//  Created by Sabrina Yamin on 1/31/17.
//  Copyright © 2017 Sabrina Yamin. All rights reserved.
//

#import <Foundation/Foundation.h>

// constants
static NSString * const kNameKey = @"name";
static NSString * const kNotesKey = @"notes";

@interface Guest : NSObject

- (instancetype) initWithDictionary: (NSDictionary *) guest;
- (NSDictionary *) dictionary;

@property (readonly) NSString* name;
@property (readonly) NSString* notes;


- (instancetype) initWithName: (NSString *) name
                        notes: (NSString *) notes;

@end
