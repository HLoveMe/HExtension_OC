//
//  photo.m
//  HExtension
//
//  Created by space on 16/1/8.
//  Copyright © 2016年 Space. All rights reserved.
//

#import "photo.h"

@implementation photo
-(NSString *)description{
    return  [NSString stringWithFormat:@"name:%@  width:%f   heigt:%f",self.name,self.width,self.height];
}
@end
