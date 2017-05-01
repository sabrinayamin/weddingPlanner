//
//  SharedProfileInfo.m
//  WP
//
//  Created by Sabrina Yamin on 3/1/17.
//  Copyright © 2017 Sabrina Yamin. All rights reserved.
//

#import "SharedProfileInfo.h"

@interface SharedProfileInfo()

@property (readwrite) NSDate* date;
@property (nonatomic, readwrite) NSString* boardIdentt;
//@property (nonatomic, readwrite) NSDate* wedDate;

//@property (readwrite) NSString *stringDate;

@end

@implementation SharedProfileInfo

+ (SharedProfileInfo *) sharedObject
{
    static dispatch_once_t once;
    static SharedProfileInfo *sharedObject = nil;
    dispatch_once(&once, ^{
        sharedObject = [[SharedProfileInfo alloc] init];
    });
    return sharedObject;
}

- (id)init
{
    self = [super init];
    if (self) {
        
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setDay:10];
        [comps setMonth:11];
        [comps setYear:2010];
        NSDate *testDate = [[NSCalendar currentCalendar] dateFromComponents:comps];
        _date= testDate;
    }
    return self;
}

- (NSDate* ) theDate{
    
    return self.date;
    
}



- (int ) theMonth{
    
    //NSDate *currentDate = [NSDate date];
    NSCalendar* calendar = [NSCalendar currentCalendar];
    NSDateComponents* components = [calendar components:NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay fromDate:_date]; // Get necessary date components
    
    int month= [components month]; //gives you month
    //NSString *inStr = [NSString stringWithFormat: @"%ld", (long)month];
    return month;
    
}
@end
