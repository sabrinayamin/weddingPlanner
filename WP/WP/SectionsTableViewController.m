//
//  SectionsTableViewController.m
//  WP
//
//  Created by Sabrina Yamin on 2/7/17.
//  Copyright © 2017 Sabrina Yamin. All rights reserved.
//

#import "SectionsTableViewController.h"
#import "SectionsTableViewCell.h"
#import "SharedProfileInfo.h"

@interface SectionsTableViewController (){

    // Instance variables
    NSDictionary *items;
    NSArray *items1;
    NSArray *items2;
    NSArray *items3;
    NSArray *items4;
    NSArray *items5;
    NSArray *items6;
    NSArray *items7;
    NSArray *items8;
    NSArray *items9;
    NSArray *items10;
    NSArray *items11;
    NSArray *items12;
    NSArray *itemSectionTitles;
    NSArray *listOfMonths;
    SectionsTableViewCell *cell;
    NSInteger numSections;
    
    NSDate* weddingDate;

}

@property (nonatomic, strong) SharedProfileInfo *sharedProfile;

@property NSUInteger startMonth;
@property NSUInteger endMonth;
@property NSDate *today;
@property float durration;

@end

@implementation SectionsTableViewController


- (void)viewDidLoad
{
    [super viewDidLoad];

    self.sharedProfile = [SharedProfileInfo sharedObject];
    
    weddingDate= self.sharedProfile.wedDate;
    
   
    NSLog(@"%@",weddingDate);
    
    self.today = [NSDate date];

    
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear fromDate:self.sharedProfile.wedDate];
    
    NSDateComponents *todayComponents = [[NSCalendar currentCalendar] components:NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear fromDate:self.today];
    
    self.endMonth = [components month]-1;
    self.startMonth = [todayComponents month]-1;
    
    NSTimeInterval calcDurration = [weddingDate timeIntervalSinceDate:self.today];
    NSLog(@"%f",calcDurration);
    
    self.durration= (calcDurration/2629746) ;
    
//    if (self.durration < 0){
//
//        NSLog(@"hey222");
//      
//        self.durration= self.durration + (self.durration *2);
//        
//    }
    

   
    NSLog(@"%lul",(unsigned long)self.durration);
    
    // Start - 2
    // Total Months - 12
    // Months to show - 10
    
    listOfMonths= @[@"January", @"February", @"March", @"April", @"May", @"June" , @"July" , @"August" , @"September" , @"October" , @"November" , @"December"];
   
    
        items = @{listOfMonths[0] : @[@"1", @"Item 2", @"Item 3", @"Item 4"],
                    listOfMonths[1] : @[@"2", @"Item 2", @"Item 3", @"Item 4"],
                    listOfMonths[2] : @[@"3", @"Item 2", @"Item 3", @"Item 4"],
                    listOfMonths[3] : @[@"4", @"Item 2", @"Item 3", @"Item 4"],
                    listOfMonths[4] : @[@"5", @"Item 2", @"Item 3", @"Item 4"],
                    listOfMonths[5] : @[@"6", @"Item 2", @"Item 3", @"Item 4"],
                    };
    
    
    items1 = @[   @[@"Research and choose theme", @"Research Venue", @"Research florist", @"Research caterer ", @"Send out invitations" , @"Research wedding dresses" , @"Research makeup artits", @"Research hair stylists",  @"Book hair appointment", @"Book makeup appointmnet" , @"Book caterer ", @"Book Florist " , @"Book Venue "],
                  @[@"Collect all RSVPs", @"Add attending guests to guest list", @"Update venue with guest count" , @"Confirm florist", @"Confirm caterer" , @"Get fitted for wedding dress" , @"Purchase wedding dress", @"Pay venue desposit" , @"Pay florst desposit" , @"Pay caterer desposit"],
                  ];
    
    items2 = @[   @[@"Research and choose theme", @"Research Venue", @"Research florist", @"Research caterer ", @"Choose Invitations", @"Research wedding dresses" , @"Research makeup artits", @"Research hair stylists"],
                  @[ @"Send out invitations", @"Collect all RSVPs", @"Add attending guests to guest list", @"Book hair appointment", @"Book makeup appointmnet" , @"Book caterer ", @"Book Florist " , @"Book Venue ", @"Get fitted for wedding dress", @"Update venue with guest count"],
                  @[@"Confirm florist", @"Confirm caterer" , @"Get fitted for wedding dress" , @"Purchase wedding dress", @"Pay venue desposit" , @"Pay florst desposit" , @"Pay caterer desposit"],
                  ];
    
    items3 = @[  @[@"Research and choose theme", @"Research Venue", @"Research florist", @"Research caterer ", @"Choose Invitations", @"Research wedding dresses" , @"Research makeup artits", @"Research hair stylists"],
                 @[@"Send out invitations", @"Choose florist" , @"Choose caterer", @"Choose venue", @"Choose wedding dress"],
                 @[@"Collect all RSVPs", @"Add attending guests to guest list", @"Book hair appointment", @"Book makeup appointmnet" , @"Book caterer ", @"Book Florist " , @"Book Venue ", @"Get fitted for wedding dress", @"Update venue with guest count"],
                 @[@"Confirm florist", @"Confirm caterer" , @"Get fitted for wedding dress" , @"Purchase wedding dress", @"Pay venue desposit" , @"Pay florst desposit" , @"Pay caterer desposit"],
               ];
    
    items4 = @[  @[@"Research and choose theme", @"Research Venue", @"Research florist", @"Research caterer ", @"Choose Invitations", @"Research wedding dresses" , @"Research makeup artits", @"Research hair stylists"],
                 @[@"Choose caterer", @"Choose venue", @"Choose wedding dress"],
                 @[@"Send out invitations", @"Choose florist", @"Book hair appointment", @"Book makeup appointmnet" , @"Book caterer ", @"Book Florist " , @"Book Venue ", @"Get fitted for wedding dress", @"Update venue with guest count"],
                 @[@"Collect all RSVPs", @"Add attending guests to guest list", @"update venue with guest count"],
                 @[@"Confirm florist", @"Confirm caterer" , @"Get fitted for wedding dress" , @"Purchase wedding dress", @"Pay venue desposit" , @"Pay florst desposit" , @"Pay caterer desposit"],
                 ];
    
    items5 = @[  @[@"Research and choose theme", @"Research Venue"],
                 @[ @"Research florist", @"Research caterer ", @"Choose Invitations", @"Research wedding dresses" , @"Research makeup artits", @"Research hair stylists"],
                 @[@"Choose caterer", @"Choose venue", @"Choose wedding dress"],
                 @[@"Send out invitations", @"Choose florist", @"Book hair appointment", @"Book makeup appointmnet" , @"Book caterer ", @"Book Florist " , @"Book Venue ", @"Get fitted for wedding dress", @"Update venue with guest count"],
                 @[@"Collect all RSVPs", @"Add attending guests to guest list", @"update venue with guest count"],
                 @[@"Confirm florist", @"Confirm caterer" , @"Get fitted for wedding dress" , @"Purchase wedding dress", @"Pay venue desposit" , @"Pay florst desposit" , @"Pay caterer desposit"],
                 ];
    
    items6 = @[  @[@"Research and choose theme", @"Research Venue"],
                 @[@"Research florist", @"Research caterer ", @"Research Invitations", @"Research wedding dresses" , @"Research makeup artits", @"Research hair stylists"],
                 @[@"Make list of caterers", @"Make list of venues ", @"Make list of florits" @"choose wedding dress style"],
                 @[@"Choose caterer", @"Choose venue", @"Choose wedding dress", @"Send out invitations", @"Choose florist"],
                 @[ @"Book hair appointment", @"Book makeup appointmnet" , @"Book caterer ", @"Book Florist " , @"Book Venue ", @"Get fitted for wedding dress", @"Update venue with guest count"],
                 @[@"Collect all RSVPs", @"Add attending guests to guest list", @"update venue with guest count"],
                 @[@"Confirm florist", @"Confirm caterer" , @"Get fitted for wedding dress" , @"Purchase wedding dress", @"Pay venue desposit" , @"Pay florst desposit" , @"Pay caterer desposit"],
                 ];
    
    items7 = @[  @[@"Research and choose theme"],
                 @[@"Research Venues"],
                 @[@"Research florist", @"Research caterer ", @"Research Invitations", @"Research wedding dresses" , @"Research makeup artits", @"Research hair stylists"],
                 @[@"Make guest list"],
                 @[@"Make list of caterers", @"Make list of venues ", @"Make list of florits" @"choose wedding dress style"],
                 @[@"Choose caterer", @"Choose venue", @"Choose wedding dress", @"Send out invitations", @"Choose florist", @"Book hair appointment", @"Book makeup appointmnet" , @"Book caterer ", @"Book Florist " , @"Book Venue ", @"Get fitted for wedding dress", @"Update venue with guest count"],
                 @[@"Collect all RSVPs", @"Add attending guests to guest list", @"update venue with guest count"],
                 @[@"Confirm florist", @"Confirm caterer" , @"Get fitted for wedding dress" , @"Purchase wedding dress", @"Pay venue desposit" , @"Pay florst desposit" , @"Pay caterer desposit"],
                 ];
    
    items8 = @[  @[@"Research and choose theme"],
                 @[@"Research Venues"],
                 @[@"Research florist", @"Research caterer ", @"Research Invitations", @"Research wedding dresses" , @"Research makeup artits", @"Research hair stylists"],
                 @[@"Make guest list"],
                 @[@"Make list of caterers", @"Make list of venues ", @"Make list of florits" @"choose wedding dress style"],
                 @[@"Call vendors", @"Meet with vendors"],
                 @[@"Choose caterer", @"Choose venue", @"Choose wedding dress", @"Send out invitations", @"Choose florist", @"Book hair appointment", @"Book makeup appointmnet" , @"Book caterer ", @"Book Florist " , @"Book Venue ", @"Get fitted for wedding dress", @"Update venue with guest count"],
                 @[@"Collect all RSVPs", @"Add attending guests to guest list", @"update venue with guest count",  @"Get fitted for wedding dress" , @"Purchase wedding dress"],
                 @[@"Confirm florist", @"Confirm caterer" , @"Pay venue desposit" , @"Pay florst desposit" , @"Pay caterer desposit"],
                 ];
    
    items9 = @[  @[@"Research and choose theme"],
                 @[@"Research Venue"],
                 @[@"Research florist", @"Research caterer ", @"Research Invitations", @"Research wedding dresses" , @"Research makeup artits", @"Research hair stylists"],
                 @[@"Make guest list"],
                 @[@"Make list of caterers", @"Make list of venues ", @"Make list of florits" @"choose wedding dress style"],
                 @[@"Call vendors", @"Meet with vendors"],
                 @[@"Choose caterer", @"Choose venue", @"Choose wedding dress", @"Send out invitations", @"Choose florist"],
                 @[@"Book hair appointment", @"Book makeup appointmnet" , @"Book caterer ", @"Book Florist " , @"Book Venue ", @"Get fitted for wedding dress", @"Update venue with guest count"],
                 @[@"Collect all RSVPs", @"Add attending guests to guest list", @"update venue with guest count",  @"Get fitted for wedding dress" , @"Purchase wedding dress"],
                 @[@"Confirm florist", @"Confirm caterer" , @"Get fitted for wedding dress" , @"Purchase wedding dress", @"Pay venue desposit" , @"Pay florst desposit" , @"Pay caterer desposit"],
                 ];
    
    items10 = @[ @[@"Research and choose theme"],
                 @[@"Research Venue"],
                 @[@"Research florist", @"Research caterer ", @"Research Invitations", @"Research wedding dresses" , @"Research makeup artits", @"Research hair stylists"],
                 @[@"Make guest list"],
                 @[@"Make list of caterers", @"Make list of venues ", @"Make list of florits" @"choose wedding dress style"],
                 @[@"Call vendors", @"Meet with vendors"],
                 @[@"Book Venue"],
                 @[@"Choose caterer", @"Choose venue", @"Choose wedding dress", @"Send out invitations", @"Choose florist"],
                 @[@"Book hair appointment", @"Book makeup appointmnet" , @"Book caterer ", @"Book Florist " , @"Book Venue ", @"Get fitted for wedding dress", @"Update venue with guest count"],
                 @[@"Collect all RSVPs", @"Add attending guests to guest list", @"update venue with guest count",  @"Get fitted for wedding dress" , @"Purchase wedding dress"],
                 @[@"Confirm florist", @"Confirm caterer" , @"Get fitted for wedding dress" , @"Purchase wedding dress", @"Pay venue desposit" , @"Pay florst desposit" , @"Pay caterer desposit"],
                 ];
    
    items11 = @[  @[@"Research and choose theme"],
                  @[@"Research Venue"],
                  @[@"Research florist", @"Research caterer ", @"Research Invitations", @"Research wedding dresses" , @"Research makeup artits", @"Research hair stylists"],
                  @[@"Make guest list"],
                  @[@"Make list of caterers", @"Make list of venues ", @"Make list of florits", @"choose wedding dress style"],
                  @[@"Call vendors", @"Meet with vendors"],
                  @[@"Book Venue"],
                  @[@"Choose caterer", @"Choose venue", @"Choose wedding dress", @"Send out invitations", @"Choose florist"],
                  @[@"Book hair appointment", @"Book makeup appointmnet" , @"Book caterer ", @"Book Florist " , @"Book Venue ", @"Get fitted for wedding dress", @"Update venue with guest count"],
                  @[@"Collect all RSVPs", @"Add attending guests to guest list", @"update venue with guest count",  @"Get fitted for wedding dress" , @"Purchase wedding dress"],
                  @[@"Confirm florist", @"Confirm caterer"],
                  @[@"Get fitted for final wedding dress" , @"Purchase wedding dress", @"Pay venue desposit" , @"Pay florst desposit" , @"Pay caterer desposit"],
                  ];
    
    items12 = @[  @[@"Research and choose theme"],
                  @[@"Research Venue"],
                  @[@"Research florist", @"Research caterer ", @"Research Invitations", @"Research wedding dresses" , @"Research makeup artits", @"Research hair stylists"],
                  @[@"Make guest list"],
                  @[@"Make list of caterers", @"Make list of venues ", @"Make list of florits", @"choose wedding dress style"],
                  @[@"Call vendors", @"Meet with vendors"],
                  @[@"Book Venue"],
                  @[@"Choose caterer", @"Choose venue", @"Choose wedding dress", @"Send out invitations", @"Choose florist"],
                  @[@"Book hair appointment", @"Book makeup appointmnet" , @"Book caterer ", @"Book Florist " , @"Book Venue ", @"Get fitted for wedding dress"],
                  @[@"Update venue with guest count"],
                  @[@"Collect all RSVPs", @"Add attending guests to guest list", @"update venue with guest count",  @"Get fitted for wedding dress" , @"Purchase wedding dress"],
                  @[@"Confirm florist", @"Confirm caterer"],
                  @[@"Get fitted for final wedding dress" , @"Purchase wedding dress", @"Pay venue desposit" , @"Pay florst desposit" , @"Pay caterer desposit"],
                  ];


    numSections= self.durration;
    
  
    // Start date is now
    // End date - wedding date
    
    // EndDate - Start Date (April)
    // duration (seconds) -> (months) (March)
    // From today to wedding date in months (11 months /sections)
    
   // 4 + 1 = 5 % 12 = 5
   // 4 + 2 = 6 % 12 = 6
   // 4 + 3 = 7 % 12 = 7
   // 4 + 11 = 15 % 12 = 3 (March)
    
        NSLog(@"%@",items);
    
    //make section title white
    [[UILabel appearanceWhenContainedIn:[UITableViewHeaderFooterView class], nil] setTextColor:[UIColor whiteColor]];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    // 12 - 2 = 10
   
    return self.durration +1 ;
       

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    NSString *sectionTitle = [listOfMonths objectAtIndex:section];
    //[listOfMonths objectAtIndex:section + self.startMonth]
//    NSArray *sectionItems= items2 [section];

    NSArray *sectionItems;
    
    if (numSections  == 1){
        sectionItems= items1 [section];
    }
    
    if (numSections  == 2){
        sectionItems= items2 [section];
    }
    
    if (numSections  == 3){
        sectionItems= items3 [section];
    }
    
    if (numSections  == 4){
        sectionItems= items4 [section];
    }
    
    if (numSections  == 5){
        sectionItems= items5 [section];
    }
    
    if (numSections  == 6){
       sectionItems= items6 [section];
    }
    
    if (numSections  == 7){
        sectionItems= items7 [section];
    }
    
    if (numSections  == 8){
        sectionItems= items8 [section];
    }
    
    if (numSections  == 9){
        sectionItems= items9 [section];
    }
    
    if (numSections  == 10){
        sectionItems= items10 [section];
    }
    
    if (numSections  == 11){
        sectionItems= items11 [section];
    }
    
    if (numSections  == 12){
        sectionItems= items12 [section];
    }

    return [sectionItems count];
}


- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    // April , May
    return [listOfMonths objectAtIndex:(section + self.startMonth) % 12];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    self->cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell...
    // indexPath: 0, 1, 2, 3, 4
    // start month is 2
    // 2, 3, 4
 //   NSArray *sectionItems= items2 [indexPath.section];
    
    NSArray *sectionItems;
    
    if (numSections  == 1){
        sectionItems= items1 [indexPath.section];
    }
    
    if (numSections  == 2){
       sectionItems= items2 [indexPath.section];
    }
    
    if (numSections  == 3){
         sectionItems= items3 [indexPath.section];
    }
    
    if (numSections  == 4){
        sectionItems= items4 [indexPath.section];
    }
    
    if (numSections  == 5){
        sectionItems= items5 [indexPath.section];
    }
    
    if (numSections  == 6){
        sectionItems= items6 [indexPath.section];
    }
    
    if (numSections  == 7){
        sectionItems= items7 [indexPath.section];
    }
    
    if (numSections  == 8){
        sectionItems= items8 [indexPath.section];
    }
    
    if (numSections  == 9){
        sectionItems= items9 [indexPath.section];
    }
    
    if (numSections  == 10){
        sectionItems= items10 [indexPath.section];
    }
    
    if (numSections  == 11){
        sectionItems= items11 [indexPath.section];
    }
    
    if (numSections  == 12){
        sectionItems= items12 [indexPath.section];
    }

    //[indexPath.section + self.startMonth]
    NSString *item = [sectionItems objectAtIndex:indexPath.row];
    cell.itemLabel.text = item;
    
    
    return cell;
}





@end
