//
//  ChartViewController.h
//  WP
//
//  Created by Sabrina Yamin on 4/6/17.
//  Copyright © 2017 Sabrina Yamin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XYPieChart.h"

@interface ChartViewController : UIViewController < XYPieChartDelegate , XYPieChartDataSource >

@property (weak, nonatomic) IBOutlet XYPieChart *pieChart;
@property (weak, nonatomic) IBOutlet UITextField *amountField;
@property (weak, nonatomic) IBOutlet UIButton *updateButton;
@property (weak, nonatomic) IBOutlet UITextField *spentField;


@end
