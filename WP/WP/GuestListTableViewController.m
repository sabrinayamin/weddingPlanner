//
//  GuestListTableViewController.m
//  WP
//
//  Created by Sabrina Yamin on 2/1/17.
//  Copyright © 2017 Sabrina Yamin. All rights reserved.
//

#import "GuestListTableViewController.h"
#import "GuestListModel.h"
#import "AddGuestViewController.h"
#import "GuestTableViewCell.h"

@interface GuestListTableViewController ()

@property (nonatomic, strong) GuestListModel *guestListModel;
@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end

@implementation GuestListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.guestListModel = [GuestListModel sharedModel];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    //self.navigationItem.leftBarButtonItem = self.editButtonItem;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

// # of sections in table
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    // Return the number of sections.
    return 1;
}

// # of rows
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    // Return the number of rows in the section.
    return self.guestListModel.numberOfGuests;
}

// table cell...
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *tableIdentifier = @"guestTableViewCell";//variable for cell identifier
    GuestTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:tableIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    // Get the name at index
    Guest * someGuest  = [self.guestListModel guestAtIndex:indexPath.row];
   
    //set title texts in cell
    cell.nameLabel.text= someGuest.name;
    cell.notesLabel.text= someGuest.notes;
    
    return cell;
    
}



// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        // Delete the row from the model
        [self.guestListModel removeGuestAtIndex:indexPath.row];
        
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
        
    }
    
}



#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    AddGuestViewController *agvc = (AddGuestViewController *)segue.destinationViewController;
    
    agvc.completionHandler = ^(NSString *name, NSString *notes){
        NSLog(@"NAMEEE");
        NSLog(@"%@", name);
        
        if (name != nil && notes != nil){
            [self.guestListModel insertWithName:name notes:notes];
            
            NSLog(@"CURRENT #");
            NSLog(@"%d", self.guestListModel.numberOfGuests);
            [self.tableView reloadData];
            
          
        }
        
        [self.navigationController popViewControllerAnimated:YES];
        
        //[self dismissViewControllerAnimated:YES completion:nil];
        
    };
    
    agvc.onCancelHandler = ^{
        [self.navigationController popViewControllerAnimated:YES];

//        [self dismissViewControllerAnimated:YES completion:nil];
        
    };
    
      NSLog(@"prepare for segue");
    
}




@end
