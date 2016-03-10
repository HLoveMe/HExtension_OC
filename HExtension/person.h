//
//  person.h
//  HExtension
//
//  Created by space on 16/1/8.
//  Copyright © 2016年 Space. All rights reserved.
//

#import "HKeyValueModel.h"
#import "photo.h"
@interface person : HKeyValueModel
@property(nonatomic,copy)NSString *name;
@property(nonatomic,copy)NSString *address;
 /**保存photo对象*/
 /**实现*/
@property(nonatomic,strong)NSMutableArray *photos;
@property(nonatomic,strong)photo *one;
@end
