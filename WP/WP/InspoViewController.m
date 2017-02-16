//
//  InspoViewController.m
//  WP
//
//  Created by Sabrina Yamin on 2/16/17.
//  Copyright © 2017 Sabrina Yamin. All rights reserved.
//

#import "InspoViewController.h"

@interface InspoViewController ()



@end

@implementation InspoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)diyButton:(id)sender {
    

    NSLog(@"clicked");
    
    UIApplication *application = [UIApplication sharedApplication];
    
    NSURL *URL = [NSURL URLWithString:@"https://www.google.com/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=cat"];
    
    // checking for ios 10 or higher
    if([[UIDevice currentDevice].systemVersion floatValue] >= 10.0){
        
        if ([application respondsToSelector:@selector(openURL:options:completionHandler:)]) {
            [application openURL:URL options:@{}
               completionHandler:^(BOOL success) {
                   
               }];
        }
        
        else {
            BOOL success = [application openURL:URL];
        }
        
        
    }
    else{
        
        bool can = [application canOpenURL:URL];
        
        if(can){
            
            [application openURL:URL];
            
        }
        
    }
}

- (IBAction)cakesButton:(id)sender {
    NSLog(@"clicked");
}


- (IBAction)flowersButton:(id)sender {
    NSLog(@"clicked");
}

- (IBAction)photoButton:(id)sender {
    NSLog(@"clicked");
}

- (IBAction)brideButton:(id)sender {
    NSLog(@"clicked");
}

- (IBAction)dressButton:(id)sender {
    NSLog(@"clicked");
}

- (IBAction)decorButton:(id)sender {
    NSLog(@"clicked");
}

- (IBAction)makeupButton:(id)sender {
    NSLog(@"clicked");
}
- (IBAction)inviteButton:(id)sender {
    NSLog(@"clicked");
}
- (IBAction)diamondButton:(id)sender {
    NSLog(@"clicked");
}


@end
