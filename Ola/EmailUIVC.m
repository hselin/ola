//
//  EmailUIVC.m
//  Ola
//
//  Created by Albert Chen on 11/19/14.
//  Copyright (c) 2014 cs147. All rights reserved.
//

#import "EmailUIVC.h"

@interface EmailUIVC ()
@property (weak, nonatomic) IBOutlet UITextView *emailtextinput;

@end

@implementation EmailUIVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.emailtextinput becomeFirstResponder];
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

- (IBAction)sendbutton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)cancelbutton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
