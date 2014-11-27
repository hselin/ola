//
//  InsulinInjectionVC.m
//  Ola
//
//  Created by Albert Chen on 11/25/14.
//  Copyright (c) 2014 cs147. All rights reserved.
//

#import "InsulinInjectionVC.h"
#import "FoodItemsTVC.h"

@interface InsulinInjectionVC ()
@property (weak, nonatomic) IBOutlet UITextField *insulinAmountInput;
@property (weak, nonatomic) IBOutlet UISegmentedControl *waveFormSelector;
@property (weak, nonatomic) IBOutlet UIStepper *insulinAmountStepper;

@property (weak, nonatomic) IBOutlet UIImageView *waveFormGraphImageView;
@end

@implementation InsulinInjectionVC




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.recommendedInsulinCount =(self.carbCount / 8) + 1;
    self.insulinCount = self.recommendedInsulinCount;
    
    self.waveFormSelectionName = @"Standard Wave";
    //self.insulinAmountInput.keyboardType = UIKeyboardTypeNumberPad;
    [self.insulinAmountInput setText:[NSString stringWithFormat: @"%lu", self.insulinCount]];
    [self.insulinAmountInput setDelegate:self];
    
    self.insulinAmountInput.enabled = NO;
    
    if(self.recommendedInsulinCount <= 11)
        self.minInsulinCount = 1;
    else
        self.minInsulinCount = self.recommendedInsulinCount - 10;

    self.maxInsulinCount = MIN(100, self.recommendedInsulinCount + 20);
    
    self.insulinAmountStepper.minimumValue = self.minInsulinCount;
    self.insulinAmountStepper.maximumValue = self.maxInsulinCount;
    
    [self.insulinAmountStepper setValue:self.recommendedInsulinCount];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string  {

    NSUInteger newLength = [textField.text length] + [string length] - range.length;
    NSCharacterSet *cs = [[NSCharacterSet decimalDigitCharacterSet] invertedSet];//[[NSCharacterSet characterSetWithCharactersInString:NUMBERS_ONLY] invertedSet];
    NSString *filtered = [[string componentsSeparatedByCharactersInSet:cs] componentsJoinedByString:@""];
    return (([string isEqualToString:filtered])&&(newLength <= 3));
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)waveFormSelectionChanged:(UISegmentedControl *)sender {
    
    switch(sender.selectedSegmentIndex)
    {
        case 0:
            self.waveFormGraphImageView.image = [UIImage imageNamed:@"std_wave"];
            self.waveFormSelectionName = @"Standard Wave";
            break;
        case 1:
            self.waveFormGraphImageView.image = [UIImage imageNamed:@"dual_wave"];
            self.waveFormSelectionName = @"Dual Wave";
            break;
        case 2:
            self.waveFormGraphImageView.image = [UIImage imageNamed:@"multi_wave"];
            self.waveFormSelectionName = @"Multi Wave";
            break;
    }
}

- (IBAction)startInjection:(UIButton *)sender {
    
    NSString *msg = [NSString stringWithFormat: @"%lu units using %@", self.insulinCount, self.waveFormSelectionName];
    
    UIAlertView * alert =[[UIAlertView alloc ] initWithTitle:@"Start Insulin Injection"
                                                     message:msg
                                                    delegate:self
                                           cancelButtonTitle:@"Cancel"
                                           otherButtonTitles: nil];
    
    alert.tag = 0;
    
    [alert addButtonWithTitle:@"Confirm"];
    [alert show];

}

- (void)handleStartInsulinDeliveryConfirmationAlertView:(UIAlertView *)alertView withButtonIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 0)
    {
        //cancel
    }
    
    if (buttonIndex == 1)
    {
        NSString *msg = [NSString stringWithFormat: @"%lu units using %@", self.insulinCount, self.waveFormSelectionName];
        UIAlertView * alert =[[UIAlertView alloc ] initWithTitle:@"Insulin Delivery Success"
                                                         message:msg
                                                        delegate:self
                                               cancelButtonTitle:@"OK"
                                               otherButtonTitles: nil];
        
        alert.tag = 1;
        [alert show];
    }
    
}

- (void)handleInsulinDeliveryConfirmationAlertView:(UIAlertView *)alertView withButtonIndex:(NSInteger)buttonIndex
{
    FoodItemsTVC *fitvc = (FoodItemsTVC *)[self.navigationController.viewControllers objectAtIndex:0];
    [fitvc removeAllFoodItems];
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    if(alertView.tag == 0)
        [self handleStartInsulinDeliveryConfirmationAlertView:alertView withButtonIndex:buttonIndex];
    
    if(alertView.tag == 1)
        [self handleInsulinDeliveryConfirmationAlertView:alertView withButtonIndex:buttonIndex];
}

- (IBAction)insulinAmountStepperValueChanged:(UIStepper *)sender {
    self.insulinCount = sender.value;
    [self.insulinAmountInput setText:[NSString stringWithFormat: @"%lu", self.insulinCount]];
}

@end
