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
    NSArray *itemSectionTitles;
    NSArray *listOfMonths;
    SectionsTableViewCell *cell;
    
    NSDate* weddingDate;

}

@property (nonatomic, strong) SharedProfileInfo *sharedProfile;

@end

@implementation SectionsTableViewController


- (void)viewDidLoad
{
    [super viewDidLoad];

    self.sharedProfile = [SharedProfileInfo sharedObject];
    
    weddingDate= [self.sharedProfile theDate];
    
   
    NSLog(@"%@",weddingDate);

    int weddingMonth= [self.sharedProfile theMonth];
//    NSLog(@"***the wedding month:");
//    NSLog(@"%@",weddingMonth);
    
    //if(weddingMonth == 10){
        listOfMonths= @[@"Jannn", @"Febbbbbbbbb", @"March", @"aprl", @"May", @"june"];
    //}
    
    
//    listOfMonths = @[
//                  
//    ]
//    
//    items = @[
//              
//              @[@"Item 1", @"Item 2", @"Item 3"], // Jan
//              @[@"Item 1", @"Item 2", @"Item 3"], // Feb
//              @[@"Item 1", @"Item 2", @"Item 3"], //Mar
//   ]
    
  
    
        items = @{listOfMonths[0] : @[@"1", @"Item 2", @"Item 3", @"Item 4"],
                    listOfMonths[1] : @[@"2", @"Item 2", @"Item 3", @"Item 4"],
                    listOfMonths[2] : @[@"3", @"Item 2", @"Item 3", @"Item 4"],
                    listOfMonths[3] : @[@"4", @"Item 2", @"Item 3", @"Item 4"],
                    listOfMonths[4] : @[@"5", @"Item 2", @"Item 3", @"Item 4"],
                    listOfMonths[5] : @[@"6", @"Item 2", @"Item 3", @"Item 4"],
                    };
    
     NSLog(@"hey");
   NSLog(@"%@",items);
    
//    items = @{@"test" : @[@"Item 1", @"Item 2", @"Item 3", @"Item 4"],
//                listOfMonths[0] : @[@"Item 1", @"Item 2", @"Item 3", @"Item 4"],
//                @"test2" : @[@"Item 1", @"Item 2", @"Item 3", @"Item 4"],
//                listOfMonths[2] : @[@"Item 1", @"Item 2", @"Item 3", @"Item 4"],
//                listOfMonths[1] : @[@"Item 1", @"Item 2", @"Item 3", @"Item 4"],
//                };
//    
    itemSectionTitles = [[items allKeys] sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    
    //make section title white
    [[UILabel appearanceWhenContainedIn:[UITableViewHeaderFooterView class], nil] setTextColor:[UIColor whiteColor]];

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return [itemSectionTitles count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    NSString *sectionTitle = [itemSectionTitles objectAtIndex:section];
    NSArray *sectionItems = [items objectForKey:sectionTitle];
    return [sectionItems count];
}


- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [itemSectionTitles objectAtIndex:section];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    self->cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell...
    NSString *sectionTitle = [itemSectionTitles objectAtIndex:indexPath.section];
    NSArray *sectionItems = [items objectForKey:sectionTitle];
    NSString *item = [sectionItems objectAtIndex:indexPath.row];
    cell.itemLabel.text = item;
    
    
    return cell;
}





@end
