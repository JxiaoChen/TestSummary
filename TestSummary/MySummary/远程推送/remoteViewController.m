//
//  remoteViewController.m
//  summary
//
//  Created by NewBoy on 2018/2/5.
//  Copyright © 2018年 LX. All rights reserved.
//

#import "remoteViewController.h"

@interface remoteViewController ()

@end

@implementation remoteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    //远程推送的网址：
    /*
     1>官方文档: 可能遇到的错误以及原因
     https://developer.apple.com/library/content/technotes/tn2265/_index.html#//apple_ref/doc/uid/DTS40010376

     2.关于远程通知和本地通知，
     解释比较透彻的文章:
     https://www.cnblogs.com/66it/p/4784224.html
     */



}

/*******************************相关知识点**************************/
/*

 1.远程推送简要步骤:
  1.0> 🍎设备在联网的情况下，都会默认和苹果的服务器保持一个长连接
  1.1> 程序启动的时候，向苹果注册我们的设备
  1.2> 紧接着调用didRegisterForRemoteNotificationsWithDeviceToken方法，获取到deviceToken
https://images2015.cnblogs.com/blog/778724/201509/778724-20150905234340998-1314763558.png

 2.接收远程通知的三种情况
 2.1 在前台，不锁屏
   调用方法：didReceiveRemoteNotification
 2.2 在前台，锁屏
    调用方法：didReceiveRemoteNotification  applicationDidBecomeActive
 2.3 在后台，不锁屏
   调用方法：didReceiveRemoteNotification applicationDidBecomeActive
 2.4 在后台，锁屏
  调用方法：didReceiveRemoteNotification applicationDidBecomeActive
 2.5 程序被杀死
  调用方法：didFinishLaunchingWithOptions

 总结一句话：
 程序没有被杀死的情况，接收远程通知就会调用didReceiveRemoteNotification方法。
 程序被杀死的情况，接收远程通知就会调用didFinishLaunchingWithOptions方法。

 这时，didFinishLaunchingWithOptions方法里这样处理：
  如果是正常启动应用程序,那么launchOptions参数是null，如果是通过其他方式启动应用程序,那么launchOptions就有值，里面存储的是通知的内容
 if (launchOptions[UIApplicationLaunchOptionsLocalNotificationKey]) {
   //主动调用一下远程接收方法
   [self application:application didReceiveRemoteNotification:launchOptions[@"UIApplicationLaunchOptionsLocalNotificationKey"]];
 }



 */
@end
