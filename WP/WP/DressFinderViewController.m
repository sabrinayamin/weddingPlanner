//
//  DressFinderViewController.m
//  WP
//
//  Created by Sabrina Yamin on 3/8/17.
//  Copyright © 2017 Sabrina Yamin. All rights reserved.
//

#import "DressFinderViewController.h"

@interface DressFinderViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UILabel *dressTypeLabel;
@property (weak, nonatomic) IBOutlet UIButton *classicButton;
@property (weak, nonatomic) IBOutlet UIButton *mermaidButton;
@property (weak, nonatomic) IBOutlet UIButton *flowButton;

@end

@implementation DressFinderViewController

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
    
    _classicButton.highlighted = true;
    _mermaidButton.highlighted = true;
    _flowButton.highlighted = true;
    
    if (sender.tag == 1)
    {
        urlString = @"https://www.google.com/search?q=best+hair+salons+for+down+hairstyles&oq=best+hair+salons+for+down+hairstyles&aqs=chrome..69i57j69i64.11359j0j4&sourceid=chrome&ie=UTF-8#tbm=shop&q=puffy+wedding+dresses";
        
        [self.dressTypeLabel setText:@"Classic Wedding Dress"];
        
 
        
    }
    else if (sender.tag == 2)
    {
        urlString = @"https://www.google.com/search?q=best+hair+salons+for+down+hairstyles&oq=best+hair+salons+for+down+hairstyles&aqs=chrome..69i57j69i64.11359j0j4&sourceid=chrome&ie=UTF-8#tbm=shop&q=mermaid+wedding+dresses";
        
        [self.dressTypeLabel setText:@"Mermaid Wedding Dress"];
        

        


    }
    
    else if (sender.tag == 3)
    {
        urlString = @"https://www.google.com/search?q=best+hair+salons+for+down+hairstyles&oq=best+hair+salons+for+down+hairstyles&aqs=chrome..69i57j69i64.11359j0j4&sourceid=chrome&ie=UTF-8#tbm=shop&q=flowy+wedding+dresses";
        
        [self.dressTypeLabel setText:@"Flowy Wedding Dress"];
        

        
    }
    

        NSURL *url = [NSURL URLWithString:urlString];
        NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
        [_webView loadRequest:urlRequest];
}




@end
