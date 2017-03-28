//
//  TestCollectionViewController.h
//  WP
//
//  Created by Sabrina Yamin on 3/27/17.
//  Copyright © 2017 Sabrina Yamin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TestCollectionViewController : UICollectionViewController
<UICollectionViewDataSource, UICollectionViewDelegate>
@property (strong, nonatomic) NSMutableArray *myImages;
@end
