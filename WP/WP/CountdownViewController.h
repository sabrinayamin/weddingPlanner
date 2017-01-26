//
//  CountdownViewController.h
//  WP
//
//  Created by Sabrina Yamin on 1/25/17.
//  Copyright © 2017 Sabrina Yamin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CountdownViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (weak, nonatomic) IBOutlet UILabel *countdownLabel;
@property (weak, nonatomic) IBOutlet UIButton *startCountdown;

@end
