//
//  notes.m
//  Ola
//
//  Created by Albert Chen on 11/26/14.
//  Copyright (c) 2014 cs147. All rights reserved.
//

#import <Foundation/Foundation.h>


/*
 
 - (IBAction)insulinAmountValueChange:(UITextField *)sender {
 self.insulinCount = [sender.text intValue];
 
 
 if(self.insulinCount > (self.recommendedInsulinCount + 20))
 {
 
 UIAlertView * alert =[[UIAlertView alloc ] initWithTitle:@"Error"
 message:@"Cannot exceed recommended dosage by more than 20 units of insulin"
 delegate:self
 cancelButtonTitle:@"OK"
 otherButtonTitles: nil];
 
 alert.tag = 3;
 [alert show];
 
 return;
 }
 
 
 
 
 
 
 if((self.insulinCount + 10) < self.recommendedInsulinCount)
 {
 
 UIAlertView * alert =[[UIAlertView alloc ] initWithTitle:@"Error"
 message:@"Cannot undercount recommended dosage by more than 10 units of insulin"
 delegate:self
 cancelButtonTitle:@"OK"
 otherButtonTitles: nil];
 
 alert.tag = 5;
 [alert show];
 
 return;
 }
 
 
 if(self.insulinCount > 100)
 {
 UIAlertView * alert =[[UIAlertView alloc ] initWithTitle:@"Error"
 message:@"Cannot exceed maximum dosage of 100 units of insulin"
 delegate:self
 cancelButtonTitle:@"OK"
 otherButtonTitles: nil];
 
 alert.tag = 2;
 [alert show];
 return;
 }
 
 if(self.insulinCount <= 0)
 {
 
 UIAlertView * alert =[[UIAlertView alloc ] initWithTitle:@"Error"
 message:@"At least 1 unit of insulin required"
 delegate:self
 cancelButtonTitle:@"OK"
 otherButtonTitles: nil];
 
 alert.tag = 4;
 [alert show];
 
 return;
 }
 }

 
 
 
 if(alertView.tag == 2)
 [self handleExceedMaxInsulinDosageAlertView:alertView withButtonIndex:buttonIndex];
 
 if(alertView.tag == 3)
 [self handleExceedRecommendedInsulinDosageAlertView:alertView withButtonIndex:buttonIndex];
 
 if(alertView.tag == 4)
 [self handleMinInsulinDosageAlertView:alertView withButtonIndex:buttonIndex];
 
 if(alertView.tag == 5)
 [self handleUndercountRecommendedInsulinDosageAlertView:alertView withButtonIndex:buttonIndex];
 
 if(sender.value >= 100)
 {
 return;
 }
 
 
 if(sender.value < self.minInsulinCount)
 {
 return;
 }
 
 if(sender.value < self.minInsulinCount)
 {
 return;
 }

 
 
 
 - (void)handleExceedMaxInsulinDosageAlertView:(UIAlertView *)alertView withButtonIndex:(NSInteger)buttonIndex
 {
 self.insulinCount = 100;
 [self.insulinAmountInput setText:@"100"];
 }
 
 - (void)handleExceedRecommendedInsulinDosageAlertView:(UIAlertView *)alertView withButtonIndex:(NSInteger)buttonIndex
 {
 self.insulinCount = self.recommendedInsulinCount + 20;
 [self.insulinAmountInput setText:[NSString stringWithFormat: @"%lu", self.insulinCount]];
 }
 
 - (void)handleMinInsulinDosageAlertView:(UIAlertView *)alertView withButtonIndex:(NSInteger)buttonIndex
 {
 self.insulinCount = 1;
 [self.insulinAmountInput setText:@"1"];
 }
 
 - (void)handleUndercountRecommendedInsulinDosageAlertView:(UIAlertView *)alertView withButtonIndex:(NSInteger)buttonIndex
 {
 self.insulinCount = self.recommendedInsulinCount - 10;
 [self.insulinAmountInput setText:[NSString stringWithFormat: @"%lu", self.insulinCount]];
 }
 
 //@synthesize carbCount = _carbCount; // because we provide setter AND getter
 //@synthesize insulinCount = _insulinCount; // because we provide setter AND getter
 

 - (NSUInteger)insulinCount
 {
 _insulinCount = (self.carbCount / 8) + 1;
 return _insulinCount;
 }
 
 - (void)setInsulinCount:(NSUInteger)val
 {
 _insulinCount = val;
 }

*/