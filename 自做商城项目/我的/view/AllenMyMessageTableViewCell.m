//
//  AllenMyMessageTableViewCell.m
//  自做商城项目
//
//  Created by allenL on 2017/6/21.
//  Copyright © 2017年 tam. All rights reserved.
//

#import "AllenMyMessageTableViewCell.h"

@interface  AllenMyMessageTableViewCell()

@property (strong,nonatomic)    UIImageView *iconImage;
@property (strong,nonatomic)    UILabel *titleLabel;
@property (strong,nonatomic)    UIImageView *nextImage;
@property (strong,nonatomic)    UILabel *lineLabel;

@end

@implementation AllenMyMessageTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self addSubview:self.iconImage];
        [self addSubview:self.titleLabel];
        [self addSubview:self.nextImage];
        [self addSubview:self.lineLabel];
    }
    return self;

}

- (void)layoutSubviews{
    [super layoutSubviews];
    __weak typeof (self) weakSelf = self;
    [_iconImage mas_makeConstraints:^(MASConstraintMaker *make){
        make.size.mas_offset(CGSizeMake(20, 20));
        make.left.equalTo(weakSelf.mas_left).offset(15);
        make.centerY.equalTo(weakSelf.mas_centerY);
    }];
    [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make){
        make.size.mas_equalTo(CGSizeMake(140, 15));
        make.centerY.equalTo(weakSelf.mas_centerY);
        make.left.equalTo(weakSelf.iconImage.mas_right).offset(15);
    }];
    [_nextImage mas_makeConstraints:^(MASConstraintMaker *make){
        make.size.mas_equalTo(CGSizeMake(10, 14));
        make.centerY.equalTo(weakSelf.mas_centerY);
        make.right.equalTo(weakSelf.mas_right).offset(-15);
    }];
    [_lineLabel mas_makeConstraints:^(MASConstraintMaker *make){
        make.height.mas_equalTo(1);
        make.left.equalTo(weakSelf.titleLabel.mas_left);
        make.right.equalTo(weakSelf.mas_right);
        make.bottom.equalTo(weakSelf.mas_bottom);
    }];

}

-(void)setSourceDic:(NSDictionary *)sourceDic{
    _titleLabel.text = sourceDic[@"title"];
    _iconImage.image = [UIImage imageNamed:sourceDic[@"image"]];

}

- (UIImageView *)iconImage{
    if (!_iconImage) {
        _iconImage = [[UIImageView alloc]init];
    }
    return _iconImage;
}

- (UILabel *)titleLabel{
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc]init];
        _titleLabel.font = [UIFont systemFontOfSize:15.0];
        _titleLabel.textColor = [UIColor blackColor];
    }
    return _titleLabel;

}

- (UIImageView *)nextImage{
    if (!_nextImage) {
        _nextImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"下一步"]];
    }
    return _nextImage;
}

- (UILabel *)lineLabel{
    if (!_lineLabel) {
        _lineLabel = [[UILabel alloc]init];
        _lineLabel.backgroundColor = MainColor;
    }
    return _lineLabel;

}

- (void)awakeFromNib {
    [super awakeFromNib];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
