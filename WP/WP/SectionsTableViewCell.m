//
//  SectionsTableViewCell.m
//  WP
//
//  Created by Sabrina Yamin on 2/9/17.
//  Copyright © 2017 Sabrina Yamin. All rights reserved.
//

#import "SectionsTableViewCell.h"

@implementation SectionsTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)checkButtonAction:(id)sender {
    
    NSLog(@"button clicked");
    
    UIButton *btn = (UIButton *)sender;
    
    //check to see if button is inactive and change to active
    if( [[btn imageForState:UIControlStateNormal] isEqual:[UIImage imageNamed:@"check.png"]])
    {
        [btn setImage:[UIImage imageNamed:@"check_active.png"] forState:UIControlStateNormal];
       
    }
    else //if button is active change back to inactive
    {
        [btn setImage:[UIImage imageNamed:@"check.png"] forState:UIControlStateNormal];
       
    }
    
}


@end
