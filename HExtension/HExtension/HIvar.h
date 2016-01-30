//
//  HIvar.h
//  我的模型字典
//
//  Created by space on 15/12/2.
//  Copyright © 2015年 Space. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
@interface HIvar : NSObject
@property(nonatomic,assign)Ivar ivar;

 /**去掉下划线的属性名*/
@property(nonatomic,copy)NSString *propertyName;
 /**属性的类型*/
@property(nonatomic,copy)NSString *type;
-(instancetype)initWithIvar:(Ivar)ivar;
@end
