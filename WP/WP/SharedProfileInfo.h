//
//  SharedProfileInfo.h
//  WP
//
//  Created by Sabrina Yamin on 3/1/17.
//  Copyright © 2017 Sabrina Yamin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SharedProfileInfo : NSObject

+ (SharedProfileInfo *) sharedObject;

// Accessing date
- (NSDate*) theDate;
- (int) theMonth;

@property (nonatomic, strong) NSString* boardIdent;
@property (nonatomic, readwrite) NSDate* wedDate;

@end
