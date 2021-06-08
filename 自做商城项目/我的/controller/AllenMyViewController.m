//
//  AllenMyViewController.m
//  自做商城项目
//
//  Created by allenL on 2017/6/20.
//  Copyright © 2017年 tam. All rights reserved.
//

#import "AllenMyViewController.h"
#import <Masonry.h>
/*--
 顶部登陆与注册
 --AllenL*/
@interface AllenMyViewController ()
@property (strong , nonatomic) UIView *headView;
@property (strong , nonatomic) UIImageView *headBackImage;
@property (strong ,nonatomic) UIButton *loginBtn;
@property (strong ,nonatomic) UIButton *landingBtn;
@end

@implementation AllenMyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.edgesForExtendedLayout = 0;
    self.view.backgroundColor = [UIColor orangeColor];
    
    [self.view addSubview:self.headView];
    [self.headView addSubview:self.headBackImage];
    [self.headView addSubview:self.loginBtn];
    [self.headView addSubview: self.landingBtn];
    
    
    __weak typeof (self) weakSelf = self;
    [_headView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.equalTo(weakSelf.view);
        make.height.mas_equalTo(150);
    }];

    [_headBackImage mas_makeConstraints:^(MASConstraintMaker *make){
        make.edges.equalTo(weakSelf.headView);
    }];
    
    [_loginBtn mas_makeConstraints:^(MASConstraintMaker *make){
        make.centerX.equalTo(weakSelf.headView.mas_centerX).offset(60);
        make.centerY.equalTo(weakSelf.headView.mas_centerY);
        make.size.mas_equalTo(CGSizeMake(45, 23));
    }];
    [_landingBtn mas_makeConstraints:^(MASConstraintMaker *make){
        make.centerX.equalTo(weakSelf.headView.mas_centerX).offset(-60);
        make.centerY.equalTo(weakSelf.headView.mas_centerY);
        make.size.mas_equalTo(CGSizeMake(45, 23));
    }];
    
    // Do any additional setup after loading the view.
}



- (UIView *)headView{
    if (!_headView) {
        _headView = [[UIView alloc]init];
    }
    return _headView;
}

- (UIImageView *)headBackImage{
    if (!_headBackImage) {
        _headBackImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"我的背景"]];
    }
    return _headBackImage;

}

- (UIButton *)loginBtn{
    if (!_loginBtn) {
        _loginBtn = [UIButton buttonWithType:(UIButtonTypeCustom)];
        [_loginBtn setTitle:@"登陆" forState:(UIControlStateNormal)];
        _loginBtn.titleLabel.font = [UIFont systemFontOfSize:18.0f];
        _loginBtn.titleLabel.textColor = [UIColor whiteColor];
    }
    return _loginBtn;

}


- (UIButton *)landingBtn{
    if (!_landingBtn) {
        _landingBtn = [UIButton buttonWithType:(UIButtonTypeCustom)];
        [_landingBtn setTitle:@"注册" forState:(UIControlStateNormal)];
        _landingBtn.titleLabel.font = [UIFont systemFontOfSize:18.0f];
        _landingBtn.titleLabel.textColor = [UIColor whiteColor];
    }
    return _landingBtn;
    
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
