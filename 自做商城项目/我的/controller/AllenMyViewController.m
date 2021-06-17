//
//  AllenMyViewController.m
//  自做商城项目
//
//  Created by allenL on 2017/6/20.
//  Copyright © 2017年 tam. All rights reserved.
//

#import "AllenMyViewController.h"
#import "AllenMyMessageTableViewCell.h"//列表中自定义cell

/*--
 顶部登陆与注册
 --AllenL*/
@interface AllenMyViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (strong , nonatomic) UIView *headView;
@property (strong , nonatomic) UIImageView *headBackImage;
@property (strong ,nonatomic) UIButton *loginBtn;
@property (strong ,nonatomic) UIButton *landingBtn;
@property (strong , nonatomic) UITableView *messageTable;


//message列表需要展示的数据源 --AllenL
@property (strong ,nonatomic) NSArray *messageTableSource;
@end

@implementation AllenMyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.edgesForExtendedLayout = 0;
    self.view.backgroundColor = MainColor;
    
    
    
    [self.view addSubview:self.headView];
    [self.headView addSubview:self.headBackImage];
    [self.headView addSubview:self.loginBtn];
    [self.headView addSubview: self.landingBtn];
    [self.view addSubview:self.messageTable];
    
    
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
    
    [_messageTable mas_makeConstraints:^(MASConstraintMaker *make){
        make.left.right.equalTo(weakSelf.view);
        make.height.mas_equalTo(176);
        make.top.equalTo(weakSelf.headView.mas_bottom).offset(35);
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


- (NSArray *)messageTableSource{
    if (!_messageTableSource) {
        _messageTableSource = @[@{@"image":@"我的界面我的收藏图标",@"title":@"我的收藏"},
  @{@"image":@"我的界面意见反馈图标",@"title":@"意见反馈"},
  @{@"image":@"我的界面关于我们图标",@"title":@"关于我们"},
  @{@"image":@"我的界面客服热线图标",@"title":@"客服热线"},
  @{@"image":@"我的界面我的优惠券图标",@"title":@"我的优惠券"},
  @{@"image":@"我的界面邀请好友图标",@"title":@"邀请好友，立刻赚钱"}];
    }
    return _messageTableSource;
}


- (UITableView *)messageTable{
    if (!_messageTable) {
        _messageTable = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, 0, 0) style:(UITableViewStylePlain)];
        _messageTable.delegate = self;
        _messageTable.dataSource = self;
        _messageTable.bounces = NO;
    }
    return _messageTable;

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 4;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 44.0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    AllenMyMessageTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[AllenMyMessageTableViewCell alloc]initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:@"cell"];
    }
//    cell.textLabel.text = [NSString stringWithFormat:@"%li" , indexPath.row];
    cell.sourceDic = self.messageTableSource[indexPath.row];
    
    if (indexPath.row == 3) {
        UIImageView *nextImage = [cell valueForKey:@"nextImage"];

        nextImage.hidden = YES;
        UILabel *phoneNum = [[UILabel alloc]init];
        phoneNum.textColor = RGB(123, 124, 128);
        phoneNum.text = @"400-100-1111";
        [cell addSubview:phoneNum];
        
        __weak typeof  (cell) weakSelf = cell;
        [phoneNum mas_makeConstraints:^(MASConstraintMaker *make){
            make.right.equalTo(weakSelf.mas_right).offset(-15);
            make.centerY.equalTo(weakSelf.mas_centerY);
            make.size.mas_equalTo(CGSizeMake(110, 15));
            
        }];
    }
    return cell;
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    AllenLog(@"我选中的是第%li",indexPath.row);
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
