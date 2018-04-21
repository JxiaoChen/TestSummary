//
//  CoreAnimationViewController.m
//  summary
//
//  Created by NewBoy on 2018/4/2.
//  Copyright © 2018年 LX. All rights reserved.
//

#import "CoreAnimationViewController.h"
#import "testCoreAnimantionViewController.h"


@interface CoreAnimationViewController ()

@end

@implementation CoreAnimationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    UIButton *button = [[UIButton alloc]init];
    button.frame = CGRectMake(100, 100, 100, 50);
    [button setTitle:@"按钮" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    button.exclusiveTouch = YES;
    [self.view addSubview:button];

}

- (void)btnClick:(UIButton *)button {

    [self presentViewController:[[UINavigationController alloc]initWithRootViewController:[testCoreAnimantionViewController new]] animated:YES completion:nil];
}


@end
