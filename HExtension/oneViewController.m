//
//  oneViewController.m
//  HExtension
//
//  Created by space on 16/1/8.
//  Copyright © 2016年 Space. All rights reserved.
//

#import "oneViewController.h"
#import "newsModel.h"
@interface oneViewController ()
@property(nonatomic,strong)NSMutableArray *dataArr;
@end

@implementation oneViewController
-(NSMutableArray *)dataArr{
    if (nil==_dataArr) {
        _dataArr=[NSMutableArray array];
    }
    return _dataArr;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *str = @"http://app.api.autohome.com.cn/autov5.0.0/news/newslist-pm1-c0-nt0-p1-s30-l0.json";
    NSURL *url = [[NSURL alloc]initWithString:str];
    [[[NSURLSession sharedSession] dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
         /**解析数据*/
        NSDictionary * JsonDic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
        NSDictionary *result=JsonDic[@"result"];
         /**一步解析*/
        self.dataArr = [newsModel modelsWithArray:result[@"newslist"]];
//        [newsModel modelWithDictionary:<#(NSDictionary *)#>]
        
        
        
         /**刷新UI*/
        dispatch_sync(dispatch_get_main_queue(), ^{
            [self.tableView reloadData];
        });
        NSLog(@"%@",self.dataArr.lastObject);
        
    }] resume];
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
    newsModel *model = self.dataArr[indexPath.row];
    cell.textLabel.text = model.title;
    return cell;
    
}

@end
