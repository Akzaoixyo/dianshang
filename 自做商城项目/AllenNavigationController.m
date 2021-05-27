//
//  AllenNavigationController.m
//  自做商城项目
//
//  Created by allenL on 2017/6/20.
//  Copyright © 2017年 tam. All rights reserved.
//

#import "AllenNavigationController.h"

@interface AllenNavigationController ()

@end

@implementation AllenNavigationController

+ (void) initialize{
    //获取navigationbar
    UINavigationBar *navBar = [UINavigationBar appearance];
    [navBar setBackgroundImage:[UIImage imageNamed:@"nav_backImage"]  forBarMetrics:(UIBarMetricsDefault)];
    
    [navBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor blackColor] , NSFontAttributeName:[UIFont boldSystemFontOfSize:20.0f]}];

}

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

@end
