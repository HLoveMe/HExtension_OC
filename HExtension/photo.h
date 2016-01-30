//
//  photo.h
//  HExtension
//
//  Created by space on 16/1/8.
//  Copyright © 2016年 Space. All rights reserved.
//

#import "HKeyValueModel.h"

@interface photo : HKeyValueModel
@property(nonatomic,copy)NSString *name;
@property(nonatomic,assign) CGFloat width;
@property(nonatomic,assign)CGFloat height;
@end
