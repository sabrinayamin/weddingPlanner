//
//  GuestListModel.m
//  WP
//
//  Created by Sabrina Yamin on 1/31/17.
//  Copyright © 2017 Sabrina Yamin. All rights reserved.
//

#import "GuestListModel.h"

@interface GuestListModel()

@property (nonatomic, strong) NSMutableArray *guests;
@property (readwrite) NSUInteger currentIndex;

@end


@implementation GuestListModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        // set the _currentIndex
        _currentIndex = 0;
        
        // get the documents directory and set _filepath
        NSArray *paths= NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSString * documentDirectory = [paths objectAtIndex:0];
        _filepath = [documentDirectory stringByAppendingPathComponent:@"theFile.plist"];
        
        NSMutableArray* guests = [NSMutableArray arrayWithContentsOfFile:_filepath];
        if (!guests) { // no file
        // create sample guests (for testing)
        _guests = [[NSMutableArray alloc] initWithObjects:
                       [[Guest alloc] initWithName:@"John Doe"
                                             notes:@"Cousin of the bride"],
                       nil];
        }
        
        else{
        
        _guests = [[NSMutableArray alloc] init];
        NSDictionary* someGuest;
        Guest* guest;
        
        for (someGuest in guests) {
            guest = [[Guest alloc] initWithDictionary: someGuest];
            [_guests addObject: guest];
        }
        
        }
    }
    
    return self;
}


//shared model
+ (instancetype) sharedModel{
    
    static GuestListModel *_sharedModel = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once (&onceToken, ^{
        
        _sharedModel = [[self alloc]init];
    });
    return _sharedModel;
}

// Accessing number of guests
- (NSUInteger) numberOfGuests{
    
    return self.guests.count;
    
}


- (Guest *) guestAtIndex: (NSUInteger)index{
    
        return self.guests[index];

}

// adding guest
- (void) insertWithName: (NSString *) name
                  notes: (NSString *) notes{


    Guest * theGuest= [[Guest alloc]initWithName:name notes:notes];
    [ self.guests addObject:theGuest ];
    
    [self save];

}

// Removing a guest
- (void) removeGuest
{
    [self.guests removeLastObject];
    [self save];
    
}
- (void) removeGuestAtIndex: (NSUInteger) index{

    [self.guests removeObjectAtIndex:index];
    [self save];
    
}


//save
- (void) save {
    NSMutableArray* guests = [[NSMutableArray alloc] init];
    Guest* guest;
    for (guest in self.guests) {
        [guests addObject: [guest dictionary]];
    }
    [guests writeToFile:self.filepath atomically:YES];
}





@end
