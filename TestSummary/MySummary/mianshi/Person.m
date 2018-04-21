//
//  Person.m
//  summary
//
//  Created by ZhuLuxi on 2018/4/7.
//  Copyright © 2018年 LX. All rights reserved.
//

#import "Person.h"
@interface Person()

@end
@implementation Person
//-(void)setLevel:(NSString *)level
//{
//    NSLog(@"内部外界传值----%@",level);
//    _level = level; 
//
//}
+(void)load
{
    NSLog(@"Person----load");
}
+(void)initialize
{
    NSLog(@"Person----initialize");

}
-(NSString *)name
{
    NSLog(@"name的get方法");
    return _name;
}
//默认是YES.如果返回NO，找不到key直接调用setValue:forUndefinedKey方法
+(BOOL)accessInstanceVariablesDirectly
{
    NSLog(@"accessInstanceVariablesDirectly");
    return YES;
}

-(void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    NSLog(@"找不到这个key---forUndefinedKey");
}

-(id)valueForUndefinedKey:(NSString *)key{
    NSLog(@"找不到这个key--valueForUndefinedKey");
    return nil;
}

-(void)setNilValueForKey:(NSString *)key
{
    NSLog(@"setNilValueForKey");
}


@end
