//
//  newsModel.h
//  HExtension
//
//  Created by space on 16/1/8.
//  Copyright © 2016年 Space. All rights reserved.
//

#import "HKeyValueModel.h"

@interface newsModel : HKeyValueModel
 /**返回的字典键为“id”*/
 /**实现-(NSDictionary *)PropertyNameForKey;*/
@property(nonatomic,copy)NSString *ID;
@property(nonatomic,copy)NSString *title;
@property(nonatomic,assign)int mediatype;
@property(nonatomic,copy)NSString *type;
@property(nonatomic,copy)NSString *time;
@property(nonatomic,copy)NSString *indexdetail;
@property(nonatomic,copy)NSString *smallpic;
@property(nonatomic,assign)int replycount;
@property(nonatomic,assign)int pagecount;
@property(nonatomic,assign)int jumppage;
@property(nonatomic,copy)NSString *lasttime;
@property(nonatomic,copy)NSString *updatetime;
@property(nonatomic,retain)NSMutableArray *coverimages;
@property(nonatomic,copy)NSString *newstype;
@property(nonatomic,strong)NSMutableArray *imgUrls;
@end
