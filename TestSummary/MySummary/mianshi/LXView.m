//
//  LXView.m
//  summary
//
//  Created by NewBoy on 2018/4/16.
//  Copyright © 2018年 LX. All rights reserved.
//

#import "LXView.h"

@implementation LXView
-(instancetype)init
{
    NSLog(@"11111");
    if (self = [super init]) {
        NSLog(@"LXView----init");
    }

    return self;
}

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        NSLog(@"LXView----initWithFrame");

    }
    return self;
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    NSLog(@"LXView-----layoutSubviews");
}


@end
