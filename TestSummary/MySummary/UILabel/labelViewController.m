//
//  labelViewController.m
//  summary
//
//  Created by NewBoy on 2018/4/19.
//  Copyright © 2018年 LX. All rights reserved.
//

#import "labelViewController.h"
#import <Masonry.h>

@interface labelViewController ()

@end

@implementation labelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    //1.单行:控件有多宽显示多宽,但限定宽度。文字过多，设置adjustFont
    UILabel *reasonLabel = [[UILabel alloc]init];
    reasonLabel.text = @"案件司法案件司案件司法案件司案件司法案件司案件司法案件司案件司法案件司案件司法案件司";
    reasonLabel.backgroundColor = [UIColor redColor];
    reasonLabel.adjustsFontSizeToFitWidth = YES;
    reasonLabel.minimumScaleFactor = 0.6;
    reasonLabel.baselineAdjustment = UIBaselineAdjustmentAlignCenters;
    [self.view addSubview:reasonLabel];
    [reasonLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view.mas_top).offset(64);
        make.left.mas_equalTo(self.view.mas_left).offset(10);
        make.width.mas_lessThanOrEqualTo(@(self.view.frame.size.width - 10 - 15));
    }];

//    //2.控件有多宽显示多宽，一行的时候实际多宽就显示多宽，多行可以可以折行)
//    UILabel *reasonLabel1 = [[UILabel alloc]init];
//    reasonLabel1.numberOfLines = 0; //比着1多了这句
//    reasonLabel1.text = @"案件司法案件司法案件司法案件司法";
//    reasonLabel1.backgroundColor = [UIColor redColor];
//    [self.view addSubview:reasonLabel1];
//    [reasonLabel1 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.mas_equalTo(self.view.mas_top).offset(64);
//        make.left.mas_equalTo(self.view.mas_left).offset(10);
//        make.width.mas_lessThanOrEqualTo(@(self.view.frame.size.width - 10 - 15));
//    }];



//
//
//    // 3.想在原有宽度的基础上，宽度和高度都比原来多一点(考虑多行)
//    UILabel *reasonLabel3 = [[UILabel alloc]init];
//    reasonLabel3.numberOfLines = 0;
//    reasonLabel3.text = @"案件司法案件案件司法案件案件司法案件案件司法案件案件司法案件";
//    reasonLabel3.backgroundColor = [UIColor redColor];
//    [self.view addSubview:reasonLabel3];
//    [reasonLabel3 sizeToFit];
//    [reasonLabel3 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.mas_equalTo(self.view.mas_top).offset(64);
//        make.left.mas_equalTo(self.view.mas_left).offset(10); //加上判断，如果sizeToFit计算的宽度超过指定范围
//        CGFloat width = (reasonLabel3.frame.size.width + 10) > (self.view.frame.size.width - 10 - 15) ? (self.view.frame.size.width - 10 - 15):(reasonLabel3.frame.size.width + 10);
//        make.size.mas_equalTo(CGSizeMake(width, reasonLabel3.frame.size.height+20));
//    }];


}



@end
