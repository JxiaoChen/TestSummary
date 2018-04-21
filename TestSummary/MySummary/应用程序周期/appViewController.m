//
//  appViewController.m
//  summary
//
//  Created by NewBoy on 2018/2/11.
//  Copyright © 2018年 LX. All rights reserved.
//

#import "appViewController.h"

@interface appViewController ()

@end

@implementation appViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    /*
     ios sdk中对应用状态的枚举如下
     1
     2
     3
     4
     5
     typedef NS_ENUM(NSInteger, UIApplicationState) {
     UIApplicationStateActive,
     UIApplicationStateInactive,
     UIApplicationStateBackground
     } NS_ENUM_AVAILABLE_IOS(4_0);


     当然，应用不在运行状态，不在考虑之列。只要应用运行起来了，存在以上三种状态。

     1.UIApplicationStateActive
     这个基本没什么疑问，应用在前台运行时就是这个状态。

     2.UIApplicationStateInactive
     待激活状。在应用运行状态下，可能引起这种状态的情况有
     a.下接状态栏，看通知
     b.双击home键，下面弹出任务运行栏
     c.锁屏。应该程序也非后台状态。

     3.UIApplicationStateBackground
     应用在后台状。引起这种状态的情况有：
     a.按home键
     b.启动其它应用，把当前应用挤入后台。

     以上是我对应用状态的一些理解，如果不同意处，欢迎交流。
     */

     

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
