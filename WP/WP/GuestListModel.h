//
//  GuestListModel.h
//  WP
//
//  Created by Sabrina Yamin on 1/31/17.
//  Copyright © 2017 Sabrina Yamin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Guest.h"

@interface GuestListModel : NSObject

@property (readonly) NSUInteger currentIndex;
@property (nonatomic,readonly) NSString * filepath;


// Creating the model
+ (instancetype) sharedModel;


// Accessing number of guests in model
- (NSUInteger) numberOfGuests;


// Accessing a guest from list
- (Guest *) guestAtIndex: (NSUInteger)index;



// Adding a guest
- (void) insertWithName: (NSString *) name
                  notes: (NSString *) notes;

// Removing a guest
- (void) removeGuest;
- (void) removeGuestAtIndex: (NSUInteger) index;

@end
