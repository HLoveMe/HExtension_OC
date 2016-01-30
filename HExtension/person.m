//
//  person.m
//  HExtension
//
//  Created by space on 16/1/8.
//  Copyright © 2016年 Space. All rights reserved.
//

#import "person.h"

@implementation person
-(NSDictionary<NSString *,Class> *)classInArray{
    return @{@"photos":[photo class]};
}
-(NSString *)description{
    return  [NSString stringWithFormat:@"name:%@  address:%@   photo:%@",self.name,self.address,self.photos];
}
@end
