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
        urlString = @"https://www.pinterest.com/search/pins/?q=wedding%20makeup&rs=typed&term_meta[]=wedding%7Ctyped&term_meta[]=makeup%7Ctyped";
        
        [self.makeupTypeLabel setText:@"Full Face Makeup Looks"];
        
        
        
    }
    else if (sender.tag == 2)
    {
        urlString = @"https://www.pinterest.com/search/pins/?q=wedding%20makeup%20eyes&rs=typed&term_meta[]=wedding%7Ctyped&term_meta[]=makeup%7Ctyped&term_meta[]=eyes%7Ctyped";
        
        [self.makeupTypeLabel setText:@"Eye Makeup Looks"];
        
        
        
        
        
    }
    
    else if (sender.tag == 3)
    {
        urlString = @"https://www.pinterest.com/search/pins/?q=wedding%20makeup%20lips&rs=typed&term_meta[]=wedding%7Ctyped&term_meta[]=makeup%7Ctyped&term_meta[]=lips%7Ctyped";
        
        [self.makeupTypeLabel setText:@"Lip Makeup Looks"];
        
        
        
    }
    
    
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [_webView loadRequest:urlRequest];
}

@end
