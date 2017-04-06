//
//  PinCollectionViewCell.h
//  WP
//
//  Created by Sabrina Yamin on 4/5/17.
//  Copyright © 2017 Sabrina Yamin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PinCollectionViewCell : UICollectionViewCell
@property (nonatomic, strong) NSString *urlString;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIButton *linkButton;

@end
