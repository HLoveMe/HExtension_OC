//
//  ViewController.m
//  HExtension
//
//  Created by space on 16/1/8.
//  Copyright © 2016年 Space. All rights reserved.
//

#import "ViewController.h"
#import "oneViewController.h"
#import "twoViewController.h"
#import "thereController.h"
#import "fourViewController.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong)UITableView *tableView;
@property(nonatomic,strong)NSArray<NSString *> *titles;

@end

@implementation ViewController
-(UITableView *)tableView{
    if (nil == _tableView) {
        _tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.dataSource = self;
        _tableView.delegate = self;
    }
    return _tableView;
}
-(NSArray<NSString *> *)titles{
    if (nil == _titles) {
        _titles = @[@"基本使用",@"嵌套（返回的json 数据包含其他Model）",@"序列化",@"自带请求网络数据"];
    }
    return _titles;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.tableView];
    
}
#pragma -mark TableView代理
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.titles.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *HID=@"HCell";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:HID];
    if (nil==cell) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:HID];
    }
    cell.textLabel.text = self.titles[indexPath.row];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    int row = indexPath.row;
    if (row == 0) {
        [self.navigationController pushViewController:        [oneViewController new] animated:YES];
    }else if(row == 1){
          [self.navigationController pushViewController:        [twoViewController new] animated:YES];
    }else if(row == 2){
        [self.navigationController pushViewController:        [thereController new] animated:YES];
        
    }else if(row == 3){
        [self.navigationController pushViewController:        [fourViewController new] animated:YES];
        
    }

}


@end
