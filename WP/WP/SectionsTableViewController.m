//
//  SectionsTableViewController.m
//  WP
//
//  Created by Sabrina Yamin on 2/7/17.
//  Copyright © 2017 Sabrina Yamin. All rights reserved.
//

#import "SectionsTableViewController.h"
#import "SectionsTableViewCell.h"

@interface SectionsTableViewController (){

    NSDictionary *items;
    NSArray *itemSectionTitles;
    SectionsTableViewCell *cell;


}
@end

@implementation SectionsTableViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    items = @{@"Month 1" : @[@"Item 1", @"Item 2", @"Item 3", @"Item 4"],
                @"Month 2" : @[@"Item 1", @"Item 2", @"Item 3", @"Item 4"],
                @"Month 3" : @[@"Item 1", @"Item 2", @"Item 3", @"Item 4"],
                @"Month 4" : @[@"Item 1", @"Item 2", @"Item 3", @"Item 4"],
                @"Month 5" : @[@"Item 1", @"Item 2", @"Item 3", @"Item 4"],
                };
    
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
