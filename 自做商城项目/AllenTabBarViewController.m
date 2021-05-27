//
//  AllenTabBarViewController.m
//  自做商城项目
//
//  Created by allenL on 2017/6/20.
//  Copyright © 2017年 tam. All rights reserved.
//

#import "AllenTabBarViewController.h"
#import "AllenTimeViewController.h"
#import "AllenMyViewController.h"
#import "AllenClassViewController.h"
#import "AllenBuyCarViewController.h"
#import "AllenNavigationController.h"

@interface AllenTabBarViewController ()

@property (strong ,nonatomic) NSArray *tabBarMessageArray;

@end

@implementation AllenTabBarViewController

-(NSArray *)tabBarMessageArray{
    if (!_tabBarMessageArray) {
        _tabBarMessageArray = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"AllenTabBarViewController" ofType:@"plist"]];
    }
    return _tabBarMessageArray;
                               
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITabBarItem *item = [UITabBarItem appearance];
    [item setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:10.0f],NSForegroundColorAttributeName:[UIColor grayColor]} forState:(UIControlStateNormal)];
    [item setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:10.0f],NSForegroundColorAttributeName:[UIColor colorWithRed:57.0/255.0 green:167.0/255.0  blue:241.0/255.0  alpha:1]} forState:(UIControlStateSelected)];
    
    //添加自定义控制器
    for (NSDictionary *dic in self.tabBarMessageArray) {
        Class viewControllerClass = NSClassFromString(dic[@"tabbarChileController"]);
        UIViewController *viewController = [[viewControllerClass alloc]init];
        viewController.tabBarItem.image = [UIImage imageNamed:dic[@"tabbarImage"]];
        viewController.tabBarItem.selectedImage = [UIImage imageNamed:dic[@"tabbarSelectImage"]];
//        viewController.tabBarItem.title = dic[@"tabbarTitle"];
        viewController.title = dic[@"tabbarTitle"];
        AllenNavigationController *navgation = [[AllenNavigationController alloc]initWithRootViewController:viewController];
        [self addChildViewController:navgation];
    }
    

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
