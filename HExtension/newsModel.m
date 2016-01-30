//
//  newsModel.m
//  HExtension
//
//  Created by space on 16/1/8.
//  Copyright © 2016年 Space. All rights reserved.
//

#import "newsModel.h"

@implementation newsModel
-(NSDictionary *)PropertyNameForKey{
    return @{@"ID":@"id"};
}
-(NSString *)description{
    return [NSString stringWithFormat:@"id:%@--title:%@---time:%@",self.ID,self.title,self.time];
}
@end
