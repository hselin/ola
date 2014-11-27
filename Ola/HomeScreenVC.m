//
//  HomeScreenVC.m
//  Ola
//
//  Created by Albert Chen on 11/26/14.
//  Copyright (c) 2014 cs147. All rights reserved.
//

#import "HomeScreenVC.h"

@interface HomeScreenVC ()
@property (weak, nonatomic) IBOutlet UIImageView *chartImageView;

@end

@implementation HomeScreenVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //self.graphImageView.contentMode = UIViewContentModeScaleAspectFit;
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
- (IBAction)chartTypeSelector:(UISegmentedControl *)sender {
    switch(sender.selectedSegmentIndex)
    {
        case 0:
            self.chartImageView.image = [UIImage imageNamed:@"glucose_breakdown"];
            break;
        case 1:
            self.chartImageView.image = [UIImage imageNamed:@"glucose_level"];
            break;
    }
}

@end
