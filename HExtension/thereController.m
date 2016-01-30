//
//  thereController.m
//  HExtension
//
//  Created by space on 16/1/8.
//  Copyright © 2016年 Space. All rights reserved.
//

#import "thereController.h"
#import "student.h"
@interface thereController ()
@property(nonatomic,strong)NSData *data;
@property(nonatomic,strong)UILabel *lab;
@end

@implementation thereController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *button1 = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 80, 40)];
    [button1 setTitle:@"序列化" forState:UIControlStateNormal];
    button1.backgroundColor = [UIColor redColor];
    [button1 addTarget:self action:@selector(begin) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
    
    UIButton *button2 = [[UIButton alloc]initWithFrame:CGRectMake(100, 150, 80, 40)];
    [button2 setTitle:@"反序列化" forState:UIControlStateNormal];
    button2.backgroundColor = [UIColor blueColor];
    [button2 addTarget:self action:@selector(getData) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];
    
    self.lab = [[UILabel alloc]initWithFrame:CGRectMake(50, 200,200, 40)];
    [self.view addSubview:self.lab];
    self.lab.backgroundColor = [UIColor orangeColor];
    
    
}
-(void)begin{
    student *stu = [student modelWithDictionary:@{@"name":@"zzh",@"age":@23}];
      self.data = [NSKeyedArchiver archivedDataWithRootObject:stu];
}
-(void)getData{
   student *stu = [NSKeyedUnarchiver unarchiveObjectWithData:self.data];
    self.lab.text = [NSString stringWithFormat:@"name:%@  --  age:%d",stu.name,stu.age];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
