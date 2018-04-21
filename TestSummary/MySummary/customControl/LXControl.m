//
//  LXControl.m
//  summary
//
//  Created by ZhuLuxi on 2018/4/3.
//  Copyright © 2018年 LX. All rights reserved.
//
#import <Masonry.h>
#import "LXControl.h"

@implementation LXControl

-(instancetype)initWithImageHeight:(CGFloat)imageHeight imageName:(NSString *)imageName labelText:(NSString *)labelText
{
    if (self = [super init]) {
        
        self.backgroundColor = [UIColor redColor];
        
        UIImageView *imageView = [[UIImageView alloc]init];
        imageView.image = [UIImage imageNamed:imageName];
        imageView.contentMode = UIViewContentModeScaleAspectFit;
        [self addSubview:imageView];
        
        __weak typeof(self) weakSelf = self;
        [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.left.right.mas_equalTo(weakSelf);
            make.height.mas_equalTo(@(imageHeight));
            make.width.mas_equalTo(@(weakSelf.frame.size.width));
        }];
        
        UILabel *label = [[UILabel alloc]init];
        label.numberOfLines = 0;
        label.textAlignment = NSTextAlignmentCenter;
        label.text = labelText;
        [self addSubview:label];
        [label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(imageView.mas_bottom);
            make.left.right.mas_equalTo(weakSelf);
          make.width.mas_lessThanOrEqualTo(@(weakSelf.frame.size.width - 10));
        }];
        
        [self mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.mas_equalTo(label.mas_bottom);
        }];
        
        
    }
    return self;
}

@end
