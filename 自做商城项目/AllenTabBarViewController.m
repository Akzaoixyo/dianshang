//
//  AllenTabBarViewController.m
//  自做商城项目
//
//  Created by allenL on 2017/6/20.
//  Copyright © 2017年 tam. All rights reserved.
//

#import "AllenTabBarViewController.h"

@interface AllenTabBarViewController ()

@end

@implementation AllenTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITabBarItem *item = [UITabBarItem appearance];
    [item setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:10.0f],NSForegroundColorAttributeName:[UIColor grayColor]} forState:(UIControlStateNormal)];
    [item setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:10.0f],NSForegroundColorAttributeName:[UIColor colorWithRed:57.0/255.0 green:167.0/255.0  blue:241.0/255.0  alpha:1]} forState:(UIControlStateSelected)];
    
    //添加自定义控制器
    UIViewController *viewController1 = [[UIViewController alloc]init];
    viewController1.view.backgroundColor = [UIColor orangeColor];
    viewController1.tabBarItem.image = [UIImage imageNamed:@"菜单栏限时特卖按钮未选中状态"];
    viewController1.tabBarItem.selectedImage = [UIImage imageNamed:@"菜单栏限时特卖按钮选中状态"];
    viewController1.tabBarItem.title = @"限时购";
    [self addChildViewController:viewController1];
    
    UIViewController *viewController2 = [[UIViewController alloc]init];
    viewController2.view.backgroundColor = [UIColor redColor];
    viewController2.tabBarItem.image = [UIImage imageNamed:@"菜单栏分类按钮未选中状态"];
    viewController2.tabBarItem.selectedImage = [UIImage imageNamed:@"菜单栏分类按钮选中状态"];
    viewController2.tabBarItem.title = @"分类";
    [self addChildViewController:viewController2];
    
    UIViewController *viewController3 = [[UIViewController alloc]init];
    viewController3.view.backgroundColor = [UIColor blackColor];
    viewController3.tabBarItem.image = [UIImage imageNamed:@"菜单栏购物车按钮未选中状态"];
    viewController3.tabBarItem.selectedImage = [UIImage imageNamed:@"菜单栏购物车按钮选中状态"];
    viewController3.tabBarItem.title = @"购物车";
    [self addChildViewController:viewController3];
    
    UIViewController *viewController4 = [[UIViewController alloc]init];
    viewController4.view.backgroundColor = [UIColor grayColor];
    viewController4.tabBarItem.image = [UIImage imageNamed:@"菜单栏我的按钮未选中状态"];
    viewController4.tabBarItem.selectedImage = [UIImage imageNamed:@"菜单栏我的按钮选中状态"];
    viewController4.tabBarItem.title = @"我的";
    [self addChildViewController:viewController4];
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
