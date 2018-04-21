//
//  drawViewController.m
//  summary
//
//  Created by NewBoy on 2018/3/23.
//  Copyright © 2018年 LX. All rights reserved.
//

#import "drawViewController.h"
#import "drawView.h"

@interface drawViewController ()

@end

@implementation drawViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    drawView *view = [drawView new];
    view.frame = CGRectMake(30, 100, 300, 100);
    view.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:view];




}




@end
