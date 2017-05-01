//
//  makeupFinderViewController.m
//  WP
//
//  Created by Sabrina Yamin on 3/23/17.
//  Copyright © 2017 Sabrina Yamin. All rights reserved.
//

#import "makeupFinderViewController.h"

@interface makeupFinderViewController ()

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UILabel *makeupTypeLabel;
@property (weak, nonatomic) IBOutlet UIButton *faceButton;
@property (weak, nonatomic) IBOutlet UIButton *eyeButton;
@property (weak, nonatomic) IBOutlet UIButton *lipsButton;

@end

@implementation makeupFinderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonAction:(UIButton*)sender
{
    NSString *urlString;
    
    if (sender.selected)
        return;
    
    _faceButton.highlighted = true;
    _eyeButton.highlighted = true;
    _lipsButton.highlighted = true;
    
    if (sender.tag == 1)
    {
        urlString = @"https://www.google.com/search?q=best+hair+salons+for+down+hairstyles&oq=best+hair+salons+for+down+hairstyles&aqs=chrome..69i57j69i64.11359j0j4&sourceid=chrome&ie=UTF-8#tbm=shop&q=face+makeup";
        
        [self.makeupTypeLabel setText:@"Face Makeup"];
        
        
        
    }
    else if (sender.tag == 2)
    {
        urlString = @"https://www.google.com/search?q=best+hair+salons+for+down+hairstyles&oq=best+hair+salons+for+down+hairstyles&aqs=chrome..69i57j69i64.11359j0j4&sourceid=chrome&ie=UTF-8#tbm=shop&q=eye+makeup";
        
        [self.makeupTypeLabel setText:@"Eye Makeup"];
        
        
        
        
        
    }
    
    else if (sender.tag == 3)
    {
        urlString = @"https://www.google.com/search?q=best+hair+salons+for+down+hairstyles&oq=best+hair+salons+for+down+hairstyles&aqs=chrome..69i57j69i64.11359j0j4&sourceid=chrome&ie=UTF-8#tbm=shop&q=wedding+lipstick";
        
        [self.makeupTypeLabel setText:@"Lip Makeup"];
        
        
        
    }
    
    
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [_webView loadRequest:urlRequest];
}

@end
