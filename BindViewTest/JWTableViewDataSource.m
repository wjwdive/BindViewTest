//
//  JWTableViewDataSource.m
//  BindViewTest
//
//  Created by wjw on 2018/7/2.
//  Copyright © 2018年 wjw. All rights reserved.
//

#import "JWTableViewDataSource.h"

@implementation JWTableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellID = @"cellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"index : %ld",indexPath.row];
    return cell;
}
@end
