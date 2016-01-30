//
//  newNewsModel.h
//  汽车之家
//
//  Created by space on 15/11/23.
//  Copyright © 2015年 Space. All rights reserved.
//
#import "HKeyValueModel.h"
@interface focusimg : HKeyValueModel
@property(nonatomic,copy)NSString *updatetime;
@property(nonatomic,copy)NSString *ID;
@property(nonatomic,copy)NSString *imgurl;
@property(nonatomic,copy)NSString *title;
@property(nonatomic,copy)NSString *type;
@property(nonatomic,assign)int replycount;
@property(nonatomic,assign)int pageindex;
@property(nonatomic,assign)int JumpType;
@property(nonatomic,copy)NSString *jumpurl;
@property(nonatomic,assign)int mediatype;
@property(nonatomic,assign)int fromtype;
@end
