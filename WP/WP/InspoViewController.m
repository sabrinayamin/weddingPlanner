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




- (IBAction)buttonDidTap:(UIButton*)sender{
    
    NSURL *URL;
    
    if (sender.tag==100){
        URL = [NSURL URLWithString:@"https://www.google.com/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=cat"];

    }
    
    else if (sender.tag==200){
        URL = [NSURL URLWithString:@"https://www.google.com/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=cat"];
    }
    
    
    else if (sender.tag==300){
        URL = [NSURL URLWithString:@"https://www.google.com/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=cat"];

    }
    
    else if (sender.tag==400){
        URL = [NSURL URLWithString:@"https://www.google.com/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=cat"];

    }
    
    else if (sender.tag==500){
        URL = [NSURL URLWithString:@"https://www.google.com/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=cat"];

    }
    
    else if (sender.tag==600){
        URL = [NSURL URLWithString:@"https://www.google.com/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=cat"];

    }
    
    else if (sender.tag==700){
        URL = [NSURL URLWithString:@"https://www.google.com/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=cat"];

    }
    
    else if (sender.tag==800){
        URL = [NSURL URLWithString:@"https://www.google.com/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=cat"];

    }
    
    else if (sender.tag==900){
        URL = [NSURL URLWithString:@"https://www.google.com/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=cat"];

    }
    
    else if (sender.tag==1000){
        URL = [NSURL URLWithString:@"https://www.google.com/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=cat"];

    }
    
    
    
    NSLog(@"clicked");
    
    UIApplication *application = [UIApplication sharedApplication];
    
  
    
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



@end
