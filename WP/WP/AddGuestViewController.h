//
//  AddGuestViewController.h
//  WP
//
//  Created by Sabrina Yamin on 2/1/17.
//  Copyright © 2017 Sabrina Yamin. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^CompletionHandler)(NSString *name, NSString *notes);
typedef void(^OnCancel)();

@interface AddGuestViewController : UIViewController

@property (copy, nonatomic) CompletionHandler completionHandler;
@property (copy, nonatomic) OnCancel onCancelHandler;

@end

