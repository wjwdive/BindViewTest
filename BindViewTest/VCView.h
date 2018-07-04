//
//  VCView.h
//  BindViewTest
//
//  Created by wjw on 2018/7/2.
//  Copyright © 2018年 wjw. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol VCView

@optional
@property (nonatomic, weak) UILabel *titleLabel;
@property (nonatomic, weak) UIButton *submitBtn;
@property (nonatomic, weak) UITableView *tableView;

@end


@interface VCView : UIView

@property (nonatomic, weak) UILabel *titleLabel;
@property (nonatomic, weak) UIButton *submitBtn;
@property (nonatomic, weak) UITableView *tableView;

@end
