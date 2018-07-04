//
//  ViewController.m
//  BindViewTest
//
//  Created by wjw on 2018/7/2.
//  Copyright © 2018年 wjw. All rights reserved.
//

#import "ViewController.h"
#import "VCView.h"
#import "JWTableViewDataSource.h"

@interface ViewController ()<VCView, UITableViewDelegate>
@property (nonatomic, strong) AOMultiproxier <UITableViewDataSource> * multiproxyDelegate;
@property (nonatomic, strong) JWTableViewDataSource *tableViewDataSource;

@end

@implementation ViewController

BINDVIEW(VCView)

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.submitBtn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
    self.tableViewDataSource = [[JWTableViewDataSource alloc] init];
    self.multiproxyDelegate = AOMultiproxierForProtocol(UITableViewDataSource, self.tableViewDataSource);
    
    self.tableView.dataSource = self.multiproxyDelegate;
    self.tableView.delegate = self;
}
@synthesize <#property#>

- (void)btnAction:(id)sender {
    NSLog(@"----- btnAction -----");
}

#pragma tableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"select cell with index: %ld", indexPath.row);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
