//
//  VCView.m
//  BindViewTest
//
//  Created by wjw on 2018/7/2.
//  Copyright © 2018年 wjw. All rights reserved.
//

#import "VCView.h"

@implementation VCView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self configUI];
    }
    return self;
}

- (void)configUI {
    
    self.backgroundColor = [UIColor whiteColor];
    
    UILabel *titleLabel = [[UILabel alloc] init];
    titleLabel.text = @"bindView";
    titleLabel.font = [UIFont systemFontOfSize:20];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.numberOfLines = 0;
    titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    _titleLabel = titleLabel;
    [self addSubview:_titleLabel];
    
    [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(44);
        make.centerX.equalTo(self);
        make.width.equalTo(self);
        make.height.mas_equalTo(100);
    }];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"OK" forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor blueColor]];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _submitBtn = button;
    [self addSubview:button];
    
    [_submitBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.mas_bottom);
        make.centerX.equalTo(self);
        make.width.equalTo(self);
        make.height.mas_equalTo(50);
    }];
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectZero];
    _tableView = tableView;
    [self addSubview:_tableView];
    
    [_tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self->_titleLabel.mas_bottom);
        make.bottom.equalTo(self->_submitBtn.mas_top);
        make.centerX.equalTo(self);
        make.width.equalTo(self);
    }];

}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
