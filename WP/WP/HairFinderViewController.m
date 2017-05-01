//
//  HairFinderViewController.m
//  WP
//
//  Created by Sabrina Yamin on 3/23/17.
//  Copyright © 2017 Sabrina Yamin. All rights reserved.
//

#import "HairFinderViewController.h"

@interface HairFinderViewController ()

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UILabel *hairTypeLabel;
@property (weak, nonatomic) IBOutlet UIButton *downButton;
@property (weak, nonatomic) IBOutlet UIButton *bunButton;
@property (weak, nonatomic) IBOutlet UIButton *ponyButton;

@end

@implementation HairFinderViewController

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
    
    _downButton.highlighted = true;
    _bunButton.highlighted = true;
    _ponyButton.highlighted = true;
    
    if (sender.tag == 1)
    {
        urlString = @"https://www.google.com/search?q=best+hair+salons+for+down+hairstyles&oq=best+hair+salons+for+down+hairstyles&aqs=chrome..69i57j69i64.11359j0j4&sourceid=chrome&ie=UTF-8#tbm=shop&q=down+wedding+hairstyles";
        
        [self.hairTypeLabel setText:@"Down Hair Style"];
        
        
        
    }
    else if (sender.tag == 2)
    {
        urlString = @"https://www.google.com/search?q=best+hair+salons+for+down+hairstyles&oq=best+hair+salons+for+down+hairstyles&aqs=chrome..69i57j69i64.11359j0j4&sourceid=chrome&ie=UTF-8#tbm=shop&q=ponytail+wedding+hairstyles";
        
        [self.hairTypeLabel setText:@"Pony Tail Hair Style"];
        
        
        
        
        
    }
    
    else if (sender.tag == 3)
    {
        urlString = @"https://www.google.com/search?q=best+hair+salons+for+down+hairstyles&oq=best+hair+salons+for+down+hairstyles&aqs=chrome..69i57j69i64.11359j0j4&sourceid=chrome&ie=UTF-8#tbm=shop&q=bun+wedding+hairstyles";
        
        [self.hairTypeLabel setText:@"Bun Hair Style"];
        
        
        
    }
    
    
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [_webView loadRequest:urlRequest];
}


@end
