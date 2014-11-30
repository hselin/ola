//
//  EmergencyVC.m
//  Ola
//
//  Created by Albert Chen on 11/29/14.
//  Copyright (c) 2014 cs147. All rights reserved.
//

#import "EmergencyVC.h"

@interface EmergencyVC ()

@end

@implementation EmergencyVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (void)handleCall911AlertView:(UIAlertView *)alertView withButtonIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 0)
    {
    }
    
    if (buttonIndex == 1)
    {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:16506465409"]];
    }
}

- (void)handleCallEmergencyContactAlertView:(UIAlertView *)alertView withButtonIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 0)
    {
    }
    
    if (buttonIndex == 1)
    {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:16506465409"]];
    }
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    if(alertView.tag == 0)
        [self handleCall911AlertView:alertView withButtonIndex:buttonIndex];
    
    if(alertView.tag == 1)
        [self handleCallEmergencyContactAlertView:alertView withButtonIndex:buttonIndex];
}


- (IBAction)call_911:(UIButton *)sender {
    UIAlertView * alert =[[UIAlertView alloc ] initWithTitle:@"Dial 911?"
                                                     message:@""
                                                    delegate:self
                                           cancelButtonTitle:@"Cancel"
                                           otherButtonTitles: nil];
    
    [alert addButtonWithTitle:@"Confirm"];
    alert.tag = 0;
    
    [alert show];
}
- (IBAction)call_emergency_contact:(id)sender {
    UIAlertView * alert =[[UIAlertView alloc ] initWithTitle:@"Dial Emergency Contact?"
                                                     message:@"650.646.5409"
                                                    delegate:self
                                           cancelButtonTitle:@"Cancel"
                                           otherButtonTitles: nil];
    
    [alert addButtonWithTitle:@"Confirm"];
    alert.tag = 0;
    
    [alert show];
}

@end
