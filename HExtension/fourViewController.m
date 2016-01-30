//
//  fourViewController.m
//  HExtension
//
//  Created by space on 16/1/8.
//  Copyright © 2016年 Space. All rights reserved.
//

#import "fourViewController.h"
#import "focusimg.h"
@interface fourViewController ()
@property(nonatomic,strong)NSMutableArray *dataArr;
@end

@implementation fourViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *str = @"http://app.api.autohome.com.cn/autov5.0.0/news/newslist-pm1-c0-nt0-p1-s30-l0.json";
     /**请求网络数据*/
    [focusimg GETdealDataByGetWithUrl:str handle:^id(NSDictionary *jsonDic, NSError *error) {
         NSDictionary *result=jsonDic[@"result"];
        return result[@"focusimg"];
    } completeInMainThread:^(NSMutableArray *modelArray) {
        self.dataArr = modelArray;
        [self.tableView reloadData];
    }];
}
#pragma -mark TableView代理
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *HID=@"HCell";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:HID];
    if (nil==cell) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:HID];
    }
    focusimg *model = self.dataArr[indexPath.row];
    cell.textLabel.text = [NSString stringWithFormat:@"%@",model];
    return cell;
    
}

@end
