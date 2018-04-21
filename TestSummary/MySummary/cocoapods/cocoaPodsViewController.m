//
//  cocoaPodsViewController.m
//  summary
//
//  Created by NewBoy on 2018/3/7.
//  Copyright © 2018年 LX. All rights reserved.
//

#import "cocoaPodsViewController.h"

@interface cocoaPodsViewController ()

@end

@implementation cocoaPodsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.


    //0. 官方地址: https://guides.cocoapods.org

    /*1.pod install 和 pod update 区别
        官方地址:https://guides.cocoapods.org/using/pod-install-vs-update.html
     区别：
     pod install :下载并安装pod

     1> 当pod file文件中有“增加pod，删除pod，修改pod”的操作之后使用
     2> pod install执行完之后会将已下载的依赖库的版本号添加进podfile.lock文件
     3> pod install根据podfile.lock文件列出的已安装的pod的版本信息，只负责下载安装podfile.lock中不存在的pod，不会自动更新已安装的pod的版本

     pod update: 更新已存在的pod
     1> 按规则将podfile文件中的pod更新到最新版本。并将pod版本信息写入podfile.lock.会遍历.lock所列的pod，一个一个更新。找到
     2> 也可以使用 pod update xxx  :只更新某一个库。

     举例子：
     工程里引用：pod A ---> 1.0.0
               pod B ---> 1.0.0
               pod C ---> 1.0.0

     podfile.lock 限制的版本号为1.0.0,  1.0.0 , 1.0.0
     实际A，B，C 版本号分别为    1.0.2,  1.0.0 , 1.2.0  (A,C版本有更新)

     这时候如果运行 pod update 命令
     cocoapods 会在.lock的列表里，找A，B，C的对应版本
     最后结果变为:
     pod A ---> 1.0.2 （更新一个小的版本）
     pod B ---> 1.0.0
     pod C ---> 1.0.0  (版本变更太大，有限制，所以还是1.0.0)

     */




}


@end
