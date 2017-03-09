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
        urlString = @"https://www.google.com/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#tbm=shop&q=ball+gown+wedding+dresses&*";
        
        [self.dressTypeLabel setText:@"Classic Wedding Dress"];
        
 
        
    }
    else if (sender.tag == 2)
    {
        urlString = @"https://www.google.com/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=mermaid+wedding+dress&tbm=shop&*";
        
        [self.dressTypeLabel setText:@"Mermaid Wedding Dress"];
        

        


    }
    
    else if (sender.tag == 3)
    {
        urlString = @"https://www.google.com/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#tbm=shop&q=flowy+wedding+dresses&*";
        
        [self.dressTypeLabel setText:@"Flowy Wedding Dress"];
        

        
    }
    

        NSURL *url = [NSURL URLWithString:urlString];
        NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
        [_webView loadRequest:urlRequest];
}




//- (IBAction)clasicDressButton:(id)sender {
//    
//    
//    
//    NSString *urlString = @"https://www.google.com/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#tbm=shop&q=ball+gown+wedding+dresses&*";
//    NSURL *url = [NSURL URLWithString:urlString];
//    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
//    [_webView loadRequest:urlRequest];
//    
//    [self.dressTypeLabel setText:@"Classic Wedding Dress"];
//    
//    //UIButton *btn = (UIButton *)sender;
//    //check to see if button is inactive and change to active
////    if( [[sender imageForState:UIControlStateNormal] isEqual:[UIImage imageNamed:@"poofDressInactive.png"]])
////    {
////        
////        [sender setImage:[UIImage imageNamed:@"poofDressInactive.png"] forState:UIControlStateNormal];
////
////    }
////    else //if button is active change back to inactive
////    {
//        [sender setImage:[UIImage imageNamed:@"poofDressInactive.png"] forState:UIControlStateNormal];
//        
////    }
//    
//
//    
//    
//}
//- (IBAction)mermaidDressButton:(id)sender {
//    
//    NSString *urlString = @"https://www.google.com/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=mermaid+wedding+dress&tbm=shop&*";
//    NSURL *url = [NSURL URLWithString:urlString];
//    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
//    [_webView loadRequest:urlRequest];
//    
//    [self.dressTypeLabel setText:@"Mermaid Wedding Dress"];
//    
//    //UIButton *btn = (UIButton *)sender;
//    //check to see if button is inactive and change to active
//    if( [[sender imageForState:UIControlStateNormal] isEqual:[UIImage imageNamed:@"mermaidInactive.png"]])
//    {
//        
//        [sender setImage:[UIImage imageNamed:@"mermaidInactive.png"] forState:UIControlStateNormal];
//        
//    }
//    else //if button is active change back to inactive
//    {
//        [sender setImage:[UIImage imageNamed:@"mermaidInactive.png"] forState:UIControlStateNormal];
//        
//    }
//    
//}
//- (IBAction)flowDressButton:(id)sender {
//    
//    NSString *urlString = @"https://www.google.com/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#tbm=shop&q=flowy+wedding+dresses&*";
//    NSURL *url = [NSURL URLWithString:urlString];
//    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
//    [_webView loadRequest:urlRequest];
//    
//    [self.dressTypeLabel setText:@"Flowy Wedding Dress"];
//    
//    //UIButton *btn = (UIButton *)sender;
//    //check to see if button is inactive and change to active
//    if( [[sender imageForState:UIControlStateNormal] isEqual:[UIImage imageNamed:@"flowDressInactive.png"]])
//    {
//        
//        [sender setImage:[UIImage imageNamed:@"flowDressInactive.png"] forState:UIControlStateNormal];
//        
//    }
//    else //if button is active change back to inactive
//    {
//        [sender setImage:[UIImage imageNamed:@"flowDressInactive.png"] forState:UIControlStateNormal];
//        
//    }
//    
//}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
