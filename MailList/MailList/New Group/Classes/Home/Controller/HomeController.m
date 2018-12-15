//
//  HomeController.m
//  MailList
//
//  Created by 李非非 on 2018/12/15.
//  Copyright © 2018年 Fly. All rights reserved.
//

#import "HomeController.h"
#import "HomeModel.h"

@interface HomeController ()<UITableViewDataSource,UITableViewDelegate>
#pragma mark - 表格
@property (nonatomic , strong ) UITableView *tableView;
@property (nonatomic , strong ) NSMutableArray *dataArray;
@end

@implementation HomeController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.tableView];

    [self getDatas];
}
#pragma mark - 获取数据
-(void)getDatas{
    HomeModel *m0 = [HomeModel modelWithDict:@{@"name":@"zhang"}];
    [self.dataArray addObject:m0];
    
}
#pragma mark - getter 方法
-(UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.dataSource = self;
        _tableView.delegate = self;
    }
    return _tableView;
}
-(NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [NSMutableArray array];
    }
    return _dataArray;
}

#pragma mark - <UITableViewDragDelegate,UITableViewDelegate>
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArray.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellID"];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cellID"];
    }
    HomeModel *m = self.dataArray[indexPath.row];
    cell.textLabel.text = m.name;
    return cell;
}


@end
