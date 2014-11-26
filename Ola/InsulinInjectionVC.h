//
//  InsulinInjectionVC.h
//  Ola
//
//  Created by Albert Chen on 11/25/14.
//  Copyright (c) 2014 cs147. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InsulinInjectionVC : UIViewController <UIAlertViewDelegate, UINavigationControllerDelegate,
UITextFieldDelegate>

@property (nonatomic) NSUInteger carbCount;
@property (nonatomic) NSUInteger insulinCount;
@property (nonatomic) NSUInteger recommendedInsulinCount;

@property (nonatomic) NSUInteger minInsulinCount;
@property (nonatomic) NSUInteger maxInsulinCount;

@property (nonatomic) NSString *waveFormSelectionName;
@end
