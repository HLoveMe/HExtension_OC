//
//  twoViewController.m
//  HExtension
//
//  Created by space on 16/1/8.
//  Copyright © 2016年 Space. All rights reserved.
//

#import "twoViewController.h"
#import "person.h"

@interface twoViewController ()
@property(nonatomic,strong)NSMutableArray *arr;
@end

@implementation twoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     /**模拟数据*/
    NSDictionary *dic =@{@"persons":
                                    @[@{                                     //person
                                          @"name":@"ZZH",
                                          @"address":@"湖北",
                                          @"photos":@[                       //photo
                                                       @{@"name":@"photo1",
                                                        @"width":@23,
                                                        @"height":@24
                                                        }
                                                      ,
                                                        @{                     //photo
                                                        @"name":@"photo2",
                                                          @"width":@110,
                                                          @"height":@120
                                                        }]
                                          }
                                      ,
                                      
                                      @{                                      //person
                                          @"name":@"ZM",
                                          @"address":@"四川"
                                          }]
                         };
    _arr = [person modelsWithArray:dic[@"persons"]];
    [self.tableView reloadData];
}
#pragma -mark TableView代理
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.arr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *HID=@"HCell";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:HID];
    if (nil==cell) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:HID];
    }
    cell.textLabel.numberOfLines  = 0;
    cell.textLabel.text =[NSString stringWithFormat:@"%@",_arr[indexPath.row]];
    return cell;
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 220;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
