//
//  AddGuestViewController.m
//  WP
//
//  Created by Sabrina Yamin on 2/1/17.
//  Copyright © 2017 Sabrina Yamin. All rights reserved.
//

#import "AddGuestViewController.h"

@interface AddGuestViewController ()

//@property (weak, nonatomic) IBOutlet UIBarButtonItem *cancelButton;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;
@property (weak, nonatomic) IBOutlet UITextField *nameText;
@property (weak, nonatomic) IBOutlet UITextField *notesText;

@end

@implementation AddGuestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //self.saveButton.enabled = NO;
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.nameText resignFirstResponder];
    [self.notesText resignFirstResponder];
}


- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.notesText becomeFirstResponder];
   

}


// MARK: - Actions

- (IBAction)saveDidTapped:(UIBarButtonItem *)sender {
    
   // [self.navigationController popViewControllerAnimated:YES];

    
    
    if (self.completionHandler){
        self.completionHandler(self.nameText.text, self.notesText.text);
    }
    
 
}

//- (IBAction)cancelDidTapped:(UIBarButtonItem *)sender {
//    
//    if (self.onCancelHandler){
//        self.onCancelHandler();
//    }
//}


// MARK: - UITextFieldDelegate methods

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    [self.nameText becomeFirstResponder];
    return YES;

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//// This will be called every time the user types on the text view
//- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
//    
//    if ([self.nameText.text isEqualToString:@""]){
//        
//        self.saveButton.enabled = NO;
//        
//    }
//    
//    else{
//        self.saveButton.enabled = YES;
//    }
//    
//    
//    return YES;
//    
//}
//
//// This will be called every time the user types on the text field
//- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
//    
//    if ([self.nameText.text isEqualToString:@""]){
//        
//        self.saveButton.enabled = NO;
//        
//    }
//    
//    else{
//        self.saveButton.enabled = YES;
//    }
//    
//    
//    return YES;
//    
//    
//}


//- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
//    UITouch * touch = [touches anyObject];
//    if(touch.phase == UITouchPhaseBegan) {
//        [self.nameText resignFirstResponder];
//        [self.notesText resignFirstResponder];
//      
//
//    }
//
//}

@end
