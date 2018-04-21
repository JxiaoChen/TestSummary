//
//  NSObjectViewController.m
//  summary
//
//  Created by NewBoy on 2018/3/19.
//  Copyright © 2018年 LX. All rights reserved.
//

#import "NSObjectViewController.h"

@interface NSObjectViewController ()

@end

@implementation NSObjectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    /*
      1.load 和 initialize 相同点和不同点
     相同点:
      1.1> 如果没有子类，系统最多会调用一次。有子类的话，调用次数与子类个数有关。
      1.2> 如果父类和子类都被调用，父类的调用一定在子类之前


     不同点:
     2.1> 调用时机不同:
     load启动时加载，所有的类都有调用load方法
     initialize的自然调用是在第一次主动使用当前类的时候
     */


    


}

@end
