//
//  Guest.m
//  WP
//
//  Created by Sabrina Yamin on 1/31/17.
//  Copyright © 2017 Sabrina Yamin. All rights reserved.
//

#import "Guest.h"

@implementation Guest

- (instancetype) initWithName: (NSString *) name
                        notes: (NSString *) notes
{
    
    
    if (self = [super init]){
        _name= name;
        _notes= notes;
        
    }
    
    return self;
    
}

- (instancetype) initWithDictionary: (NSDictionary *) guest {
    self = [super init];
    if (self) {
        _name = [guest valueForKey: kNameKey];
        _notes = [guest valueForKey: kNotesKey];
        
    }
    return self;
}

- (NSDictionary *) dictionary {

    NSDictionary *guest = [NSDictionary dictionaryWithObjectsAndKeys:
                          self.name, kNameKey,
                          self.notes, kNotesKey
                           ,nil];
    return guest;
}

@end
