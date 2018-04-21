//
//  testCoreAnimantionViewController.m
//  summary
//
//  Created by NewBoy on 2018/4/2.
//  Copyright © 2018年 LX. All rights reserved.
//

#import "testCoreAnimantionViewController.h"

@interface testCoreAnimantionViewController ()

@end

@implementation testCoreAnimantionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.


    UIButton *button = [[UIButton alloc]init];
    button.frame = CGRectMake(100, 100, 100, 50);
    [button setTitle:@"按钮" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor redColor];
    //    [button addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    button.exclusiveTouch = YES;
    [self.view addSubview:button];


    UILabel *label = [UILabel new];
    label.frame = CGRectMake(80, 200, 100, 30);
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"label xxx";
    label.backgroundColor = [UIColor blueColor];
    [self.view addSubview:label];

    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"返回" style:UIBarButtonItemStyleDone target:self action:@selector(GoBackClick)];

}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];

    CGSize sz = self.view.bounds.size;
    if (sz.height > sz.width)
    {
        CGFloat temp = sz.height;
        sz.height = sz.width;
        sz.width = temp;
    }


    self.view.bounds = CGRectMake(0, 0, sz.width, sz.height);

    self.view.backgroundColor = [UIColor lightGrayColor];

    self.view.transform = CGAffineTransformMakeRotation(1 * M_PI_2);

}
- (void)GoBackClick{

    [self dismissViewControllerAnimated:YES completion:nil];
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
