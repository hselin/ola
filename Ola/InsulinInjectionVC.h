//
//  InsulinInjectionVC.h
//  Ola
//
//  Created by Albert Chen on 11/25/14.
//  Copyright (c) 2014 cs147. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InsulinInjectionVC : UIViewController <UIAlertViewDelegate, UINavigationControllerDelegate>

@property (nonatomic) NSUInteger carbCount;
@property (nonatomic) NSUInteger insulinCount;
@property (nonatomic) NSString *waveFormSelectionName;
@end
