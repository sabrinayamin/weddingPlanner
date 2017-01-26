//
//  CountdownViewController.m
//  WP
//
//  Created by Sabrina Yamin on 1/25/17.
//  Copyright © 2017 Sabrina Yamin. All rights reserved.
//

#import "CountdownViewController.h"


@interface CountdownViewController ()

@end

@implementation CountdownViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // make date picker color white
    [_datePicker setValue:[UIColor whiteColor] forKeyPath:@"textColor"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//countdown functionality
- (IBAction)startCountdown:(id)sender {
    
    //setting up date picker dates/calender
    NSCalendar *calendar = [NSCalendar autoupdatingCurrentCalendar];
    NSUInteger preservedComponents = (NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit);
    self.datePicker.date = [calendar dateFromComponents:[calendar components:preservedComponents fromDate:self.datePicker.date]];
    
    //timer that calls the updateTime method every second to update the label
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                                      target:self
                                                    selector:@selector(updateTime)
                                                    userInfo:nil
                                                    repeats:YES];
}

// method to update label with current time status
-(void)updateTime
{
    //Geting the time left until the specified date
    NSInteger ti = ((NSInteger)[self.datePicker.date timeIntervalSinceNow]);//get staus of countdown
    // setting the days, hrs, sec, and min
    NSInteger seconds = ti % 60;
    NSInteger minutes = (ti / 60) % 60;
    NSInteger hours = (ti / 3600) % 24;
    NSInteger days = (ti / 86400);
    
    
    //update label to display remaing time until chosen date
    // added extra spacing bewteen values
    self.countdownLabel.text = [NSString stringWithFormat:@"%02i  %02i  %02i  %02i ", days, hours, minutes, seconds];

    
    
}



@end
