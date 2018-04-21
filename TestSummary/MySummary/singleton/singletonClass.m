//
//  singletonClass.m
//  summary
//
//  Created by NewBoy on 2018/3/2.
//  Copyright © 2018年 LX. All rights reserved.
//

#import "singletonClass.h"

@implementation singletonClass

static singletonClass *_instance = nil;

+(instancetype)shareInstance{

    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc]init];
    });

    return _instance;
}

+(instancetype)allocWithZone:(struct _NSZone *)zone
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [super allocWithZone:zone];
    });

    return _instance;
}

+ (id)copyWithZone:(struct _NSZone *)zone{

    return _instance;
}
@end
