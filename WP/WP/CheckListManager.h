//
//  CheckListModel.h
//  WP
//
//  Created by Sabrina Yamin on 3/1/17.
//  Copyright © 2017 Sabrina Yamin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Date.h"

@interface CheckListManager : NSObject

@property (readonly) NSUInteger currentIndex;
@property (readonly) NSString *month;


// Creating the model
+ (instancetype) sharedModel;


// Accessing number of guests in model
- (NSUInteger) date;

// Adding date
- (void) insertWithName: (NSString *) month;



@end
