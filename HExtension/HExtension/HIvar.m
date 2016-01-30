//
//  HIvar.m
//  我的模型字典
//
//  Created by space on 15/12/2.
//  Copyright © 2015年 Space. All rights reserved.
//

#import "HIvar.h"
@implementation HIvar
-(instancetype)initWithIvar:(Ivar)ivar{
    if (self=[super init]) {
        self.ivar=ivar;
    }
    return self;
}

-(void)setIvar:(Ivar)ivar{
    _ivar=ivar;
    NSString *name=[NSString stringWithUTF8String:ivar_getName(ivar)];
    if (![name containsString:@"_"]) {
        self.propertyName=name;
    }else{
        self.propertyName=[name substringFromIndex:1];
    }
    
    NSString *type=[NSString stringWithUTF8String:ivar_getTypeEncoding(ivar)];
    if ([type containsString:@"@"]) {
       type= [type substringFromIndex:2];
       type= [type substringToIndex:type.length-1];
    }
    self.type=type;
    
}
@end