//
//  FoodItemsTVC.h
//  Ola
//
//  Created by Albert Chen on 11/21/14.
//  Copyright (c) 2014 cs147. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FoodItem.h"

@interface FoodItemsTVC : UITableViewController <UIAlertViewDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate,
UITextFieldDelegate>

@property (nonatomic, readonly) NSUInteger totalCarbs;

-(void)removeAllFoodItems;

@end
