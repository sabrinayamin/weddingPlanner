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
//@property int budget;
//@property int spent;
//@property int remainderBudget;

@property (nonatomic, strong) XYPieChart* XYPieChart;
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

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.amountField resignFirstResponder];
     [self.spentField resignFirstResponder];
    
    self.amountField.keyboardType = UIKeyboardTypeNumberPad;
     self.spentField.keyboardType = UIKeyboardTypeNumberPad;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)updateButtonAction:(id)sender {
    
    NSString *budgetStringValue = self.amountField.text;
    self.budget = [budgetStringValue doubleValue];
    
    NSString *spentStringValue = self.spentField.text;
    self.spent= [spentStringValue doubleValue];
    
     self.remainderBudget=  self.budget - self.spent ;
    self.remainderDisplay.text = [NSString stringWithFormat:@" $ %d left to spend ", self.remainderBudget];
    
    float viewWidth = self.pieChart.bounds.size.width / 2;
    float viewHeight = self.pieChart.bounds.size.height / 2;
    [self.pieChart setDelegate:self];
    [self.pieChart setDataSource:self];
    [self.pieChart setStartPieAngle:M_PI_2];
    [self.pieChart setAnimationSpeed:1.5];
    [self.pieChart setLabelColor:[UIColor clearColor]];
    [self.pieChart setLabelShadowColor:[UIColor blackColor]];
    [self.pieChart setShowPercentage:YES];
    [self.pieChart setPieBackgroundColor:[UIColor clearColor]];
    
    //To make the chart at the center of view
    [self.pieChart setPieCenter:CGPointMake(self.pieChart.bounds.origin.x + viewWidth, self.pieChart.bounds.origin.y + viewHeight)];
    
    //Method to display the pie chart with values.
    [self.pieChart reloadData];
    
    NSLog(@"bud %d", self.budget);
    NSLog(@"spnt %d", self.spent);
    NSLog(@"remain %d", self.remainderBudget);
}


//Specify the number of Sectors in the chart
- (NSUInteger)numberOfSlicesInPieChart:(XYPieChart *)pieChart
{
    return 2;
}
//Specify the Value for each sector
- (CGFloat)pieChart:(XYPieChart *)pieChart valueForSliceAtIndex:(NSUInteger)index
{
//    CGFloat value = 0.0;
//    if(index % 2 == 0)
//    {
//        value = self.spent;
//        // value = 40;
//        
//        NSLog(@"bud2 %d", self.budget);
//        NSLog(@"spnt2 %d", self.spent);
//        NSLog(@"remain2 %d", self.remainderBudget);
//    }
//    else
//    {
//        value = self.remainderBudget;
//        NSLog(@"bud3 %d", self.budget);
//        NSLog(@"spnt3 %d", self.spent);
//        NSLog(@"remain3 %d", self.remainderBudget);
//    }
//    return value;
    
    if (index== 0){
        return self.spent;
    }
    else{
        return self.remainderBudget;
    }
    

}

//Specify color for each sector
- (UIColor *)pieChart:(XYPieChart *)pieChart colorForSliceAtIndex:(NSUInteger)index
{
    UIColor *color;
    if(index%2 == 0)
    {
        color = [UIColor clearColor];
        
        
    }
    else
    {
       // color = [UIColor colorWithRed:0.36 green:0.33 blue:0.64 alpha:0.5];
          color = [UIColor colorWithWhite:1.0 alpha:0.5];
       
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
