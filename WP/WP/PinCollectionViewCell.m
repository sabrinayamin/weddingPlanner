//
//  PinCollectionViewCell.m
//  WP
//
//  Created by Sabrina Yamin on 4/5/17.
//  Copyright © 2017 Sabrina Yamin. All rights reserved.
//

#import "PinCollectionViewCell.h"

#import "PinViewController.h"
#import <PinterestSDK/PDKBoard.h>
#import "PDKClient.h"

@implementation PinCollectionViewCell
- (IBAction)btnLinkAction:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:self.urlString ]];
}

@end
