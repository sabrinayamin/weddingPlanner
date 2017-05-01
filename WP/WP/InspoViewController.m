//
//  InspoViewController.m
//  WP
//
//  Created by Sabrina Yamin on 2/16/17.
//  Copyright © 2017 Sabrina Yamin. All rights reserved.
//

#import "InspoViewController.h"
#import "PinViewController.h"
#import "SharedProfileInfo.h"

#import <PinterestSDK/PDKClient.h>
#import <PinterestSDK/PDKResponseObject.h>
#import <PinterestSDK/PDKUser.h>
#import <PinterestSDK/PDKBoard.h>
#import <PinterestSDK/PDKPin.h>
#import <PinterestSDK/PDKImageInfo.h>

@interface InspoViewController ()

@property (nonatomic, strong) SharedProfileInfo *sharedInfo;

@end

@implementation InspoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.sharedInfo = [SharedProfileInfo sharedObject];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (IBAction)buttonDidTap:(UIButton*)sender{
    
    NSURL *URL;
    
    if (sender.tag==100){
        
        self.sharedInfo.boardIdent=@"91620242358274089";
        
     

    }
    
    else if (sender.tag==200){
        
        self.sharedInfo.boardIdent=@"91620242358275148";
       
    }
    
    
    else if (sender.tag==300){
       
        self.sharedInfo.boardIdent=@"91620242358275146";
    }
    
    else if (sender.tag==400){
        
        self.sharedInfo.boardIdent=@"240661242526565028";

    }
    
    else if (sender.tag==500){
      
        self.sharedInfo.boardIdent=@"252342454060117570";

    }
    
    else if (sender.tag==600){
       self.sharedInfo.boardIdent=@"91620242358290629";

    }
    
    else if (sender.tag==700){
        
        self.sharedInfo.boardIdent=@"91620242358272220";
    }
    
    else if (sender.tag==800){
       self.sharedInfo.boardIdent=@"170433235837513524";
    }
    
    else if (sender.tag==900){
      
        self.sharedInfo.boardIdent=@"73957687569789368";
    }
    
    else if (sender.tag==1000){
        
        self.sharedInfo.boardIdent=@"86764799010055093";
    }
    
    else if (sender.tag==1100){
        
        self.sharedInfo.boardIdent=@"87327748963498617";
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
