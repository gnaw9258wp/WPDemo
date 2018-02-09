//
//  OneViewController.m
//  WPDemo
//
//  Created by 王鹏 on 2018/2/9.
//  Copyright © 2018年 王鹏. All rights reserved.
//

#import "OneViewController.h"
//#import <MJRefresh.h>

@interface OneViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong)UITableView *tabView;
@end

@implementation OneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    MJRefreshHeader *header = [MJRefreshHeader headerWithRefreshingBlock:^{
//        [self performSelector:@selector(refresh) withObject:nil afterDelay:2];
//    }];
//    self.tabView.mj_header = header;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor colorWithRed:arc4random() % 256/255.0 green:arc4random() % 256/255.0 blue:arc4random() % 256/255.0 alpha:1];
    return cell;
}
- (void)refresh{
//    [self.tabView.mj_header endRefreshing];
}
- (UITableView *)tabView
{
    if (!_tabView) {
        _tabView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tabView.delegate = self;
        _tabView.dataSource = self;
        [_tabView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
        [self.view addSubview:_tabView];
    }
    return _tabView;
}
@end
