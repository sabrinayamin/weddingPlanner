//
//  ChartViewController.m
//  WP
//
//  Created by Sabrina Yamin on 4/6/17.
//  Copyright © 2017 Sabrina Yamin. All rights reserved.
//

#import "ChartViewController.h"
#import "XYPieChart.h"

@interface ChartViewController ()
@property int budget;
@property int spent;
@end

@implementation ChartViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    NSString *budgetStringValue = self.amountField.text;
//    self.budget= [budgetStringValue doubleValue];
//    
//    NSString *spentStringValue = self.spentField.text;
//    self.spent= [spentStringValue doubleValue];
    
    
//    float viewWidth = self.pieChart.bounds.size.width / 2;
//    float viewHeight = self.pieChart.bounds.size.height / 2;
//    [self.pieChart setDelegate:self];
//    [self.pieChart setDataSource:self];
//    [self.pieChart setStartPieAngle:M_PI_2];
//    [self.pieChart setAnimationSpeed:1.5];
//    [self.pieChart setLabelColor:[UIColor whiteColor]];
//    [self.pieChart setLabelShadowColor:[UIColor blackColor]];
//    [self.pieChart setShowPercentage:YES];
//    [self.pieChart setPieBackgroundColor:[UIColor whiteColor]];
//    
//    //To make the chart at the center of view
//    [self.pieChart setPieCenter:CGPointMake(self.pieChart.bounds.origin.x + viewWidth, self.pieChart.bounds.origin.y + viewHeight)];
//    
//    //Method to display the pie chart with values.
//    [self.pieChart reloadData];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)updateButtonAction:(id)sender {
    
    NSString *budgetStringValue = self.amountField.text;
    self.budget= [budgetStringValue doubleValue];
    
    NSString *spentStringValue = self.spentField.text;
    self.spent= [spentStringValue doubleValue];
    
    float viewWidth = self.pieChart.bounds.size.width / 2;
    float viewHeight = self.pieChart.bounds.size.height / 2;
    [self.pieChart setDelegate:self];
    [self.pieChart setDataSource:self];
    [self.pieChart setStartPieAngle:M_PI_2];
    [self.pieChart setAnimationSpeed:1.5];
    [self.pieChart setLabelColor:[UIColor whiteColor]];
    [self.pieChart setLabelShadowColor:[UIColor blackColor]];
    [self.pieChart setShowPercentage:YES];
    [self.pieChart setPieBackgroundColor:[UIColor whiteColor]];
    
    //To make the chart at the center of view
    [self.pieChart setPieCenter:CGPointMake(self.pieChart.bounds.origin.x + viewWidth, self.pieChart.bounds.origin.y + viewHeight)];
    
    //Method to display the pie chart with values.
    [self.pieChart reloadData];
    
    NSLog(@"bud %d", self.budget);
    NSLog(@"spnt %d", self.spent);
}


//Specify the number of Sectors in the chart
- (NSUInteger)numberOfSlicesInPieChart:(XYPieChart *)pieChart
{
    return 2;
}
//Specify the Value for each sector
- (CGFloat)pieChart:(XYPieChart *)pieChart valueForSliceAtIndex:(NSUInteger)index
{
    CGFloat value = 0.0;
    if(index % 2 == 0)
    {
        value = self.spent;
    }
    else
    {
        value = self.budget;
    }
    return value;
}

//Specify color for each sector
- (UIColor *)pieChart:(XYPieChart *)pieChart colorForSliceAtIndex:(NSUInteger)index
{
    UIColor *color;
    if(index%2 == 0)
    {
        color = [UIColor redColor];
    }
    else
    {
        color = [UIColor greenColor];
    }
    return color;
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
