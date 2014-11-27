//
//  DocEmail2UIVC.m
//  Ola
//
//  Created by Albert Chen on 11/21/14.
//  Copyright (c) 2014 cs147. All rights reserved.
//

#import "DocEmail2UIVC.h"
#import "EmailUIVC.h"

@interface DocEmail2UIVC ()

@end

@implementation DocEmail2UIVC

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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"replyEmail"]) {
        if ([segue.destinationViewController isKindOfClass:[EmailUIVC class]]) {
            EmailUIVC *euivc = (EmailUIVC *)segue.destinationViewController;
            euivc.subject = @"RE: Low blood sugar";
            euivc.to = @"Dr. Holmes";
        }
    }
}

@end
