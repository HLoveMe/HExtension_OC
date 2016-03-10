//
//  testModel.h
//  HExtension
//
//  Created by space on 16/3/10.
//  Copyright © 2016年 Space. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "person.h"
#import "photo.h"
#import "student.h"
#import "HKeyValueModel.h"
@interface testModel : HKeyValueModel
@property(nonatomic,assign)int  age;
@property(nonatomic,copy)NSString *name;
@property(nonatomic,strong)person *per;
@property(nonatomic,strong)photo *phone;
@property(nonatomic,strong)student *stu;
@end
