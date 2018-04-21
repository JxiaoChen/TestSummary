//
//  FirstViewController.m
//  summary
//
//  Created by NewBoy on 2018/1/18.
//  Copyright © 2018年 LX. All rights reserved.
//

#import "NSInvocationViewController.h"
#import "DSYM.h"

@interface NSInvocationViewController ()

@end

@implementation NSInvocationViewController
/*
 1.NSInvocation是一个消息调用类，它包含了所有OC消息的成分：target、selector、参数以及返回值。NSInvocation可以将消息转换成一个对象，消息的每一个参数能够直接设定，而且当一个NSInvocation对象调度时返回值是可以自己设定的。

 2.使用步骤
  2.1> 根据方法创建签名对象(NSMethodSignature对象)
  2.2> 根据签名对象创建调用对象(NSInvocation对象)
  2.3> 设置调用对象(NSInvocation对象)的相关信息
  2.4> 调用方法
  2.5> 获取方法返回值

 */

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.


    //1.无参无返回值
//    NSMethodSignature  *signature = [[self class] instanceMethodSignatureForSelector:@selector(methodTest)];
//    NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:signature];
//    invocation.target = self;
//    invocation.selector = @selector(methodTest);
//    [invocation invoke];

    //2.有参无返回值
//    NSMethodSignature  *signature = [[self class] instanceMethodSignatureForSelector:@selector(methodTest:str2:str3:)];
//    NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:signature];
//    invocation.target = self;
//    invocation.selector = @selector(methodTest:str2:str3:);
//    NSString *str1 = @"111";
//    NSString *str2 = @"222";
//    NSString *str3 = @"333";
//
//    [invocation setArgument:&str1 atIndex:2];
//    [invocation setArgument:&str2 atIndex:3];
//    [invocation setArgument:&str3 atIndex:4];
//
//    [invocation invoke];

    //3.有参有返回值
//    NSMethodSignature  *signature = [[self class] instanceMethodSignatureForSelector:@selector(methodTest:num2:num3:)];
//    NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:signature];
//    invocation.target = self;
//    invocation.selector = @selector(methodTest:num2:num3:);
//    int num1 = 1;
//    int num2 = 3;
//    int num3 = 4;
//
//    [invocation setArgument:&num1 atIndex:2];
//    [invocation setArgument:&num2 atIndex:3];
//    [invocation setArgument:&num3 atIndex:4];
//
//    [invocation invoke];
//
//    int resulet = 0;
//    [invocation setReturnValue:&resulet];
//
//    NSLog(@"resulet------%d",resulet);


}

- (void)methodTest{
    NSLog(@"methodTest");
}

- (void)methodTest:(NSString *)str1 str2:(NSString *)str2 str3:(NSString *)str3{
    NSLog(@"methodTest--有参无返回值--%@--%@--%@",str1,str2,str3);
}

- (int )methodTest:(int)num1 num2:(int )num2 num3:(int)num3{

    NSLog(@"111111");
    return num1 + num2 + num3;
}

@end
