//
//  singleton.h
//  singleton
//
//  Created by Sunny on 16/7/20.
//  Copyright © 2016年 Sunny. All rights reserved.
//

/**
 *  定义宏  代替单例
    (1) \表示此行跟下面一行是一起的
    (2) ## 表示后面是参数
 */
@interface singleton : NSObject

#define singleton_interface(className)   +(instancetype)share##className;


# define singleton_implementation(className) \
\
static id _instance;\
\
+(instancetype)allocWithZone:(struct _NSZone *)zone\
{\
static dispatch_once_t onceToken;\
dispatch_once(&onceToken, ^{\
_instance = [super allocWithZone:zone];\
});\
\
return _instance;\
}\
\
+ (instancetype)share##className{\
\
static dispatch_once_t onceToken;\
dispatch_once(&onceToken, ^{\
\
_instance = [[self alloc]init];\
});\
\
return _instance;\
}\
\
+ (id)copyWithZone:(struct _NSZone *)zone{\
\
return _instance;\
}


@end
