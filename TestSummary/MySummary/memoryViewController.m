//
//  memoryViewController.m
//  summary
//
//  Created by ZhuLuxi on 2018/3/8.
//  Copyright © 2018年 LX. All rights reserved.
//

#import "memoryViewController.h"

@interface memoryViewController ()

@end

@implementation memoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //1.一个NSObject对象占用内存大小
    
    NSObject *obj = [[NSObject alloc]init];
    NSLog(@"obj----%@",obj);
    
}


@end
