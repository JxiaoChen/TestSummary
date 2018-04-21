//
//  responderChainViewController.m
//  summary
//
//  Created by NewBoy on 2018/4/2.
//  Copyright © 2018年 LX. All rights reserved.
//

#import "responderChainViewController.h"

@interface responderChainViewController ()

@end

@implementation responderChainViewController

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

    UILabel *label = [UILabel new];
    label.frame = CGRectMake(80, 100, 100, 30);
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"label xxx";
    label.backgroundColor = [UIColor blueColor];
    [self.view addSubview:label];





}

-(void)btnClick:(UIButton *)sender{
    NSLog(@"btnClick----");
}


- (void)motionBegan:(UIEventSubtype)motion withEvent:(nullable UIEvent *)event NS_AVAILABLE_IOS(3_0);{
    NSLog(@"motionBegan----");

}
- (void)motionEnded:(UIEventSubtype)motion withEvent:(nullable UIEvent *)event NS_AVAILABLE_IOS(3_0);{
    NSLog(@"motionEnded----");

}
- (void)motionCancelled:(UIEventSubtype)motion withEvent:(nullable UIEvent *)event NS_AVAILABLE_IOS(3_0);{
    NSLog(@"motionCancelled----");

}

@end
