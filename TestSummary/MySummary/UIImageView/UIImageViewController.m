//
//  UIImageViewController.m
//  summary
//
//  Created by NewBoy on 2018/3/8.
//  Copyright © 2018年 LX. All rights reserved.
//

#import "UIImageViewController.h"

@interface UIImageViewController ()

@end

@implementation UIImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    /*
     1.图片的contentmode
     https://www.cnblogs.com/Jenaral/p/5443842.html
     简单来说： 1.1> 默认是UIViewContentModeScaleToFill ,无论实际图片大小，最后和imageView设置的尺寸一样。
              1.2> UIViewContentModeScaleAspectFill。它将图片缩放到正好铺满整个UIImageView视图显示，且图片的宽度或者高度（至少一个）恰好与视图的宽度或者高度相等,等比例缩放,图片有可能会被裁剪
              1.3> UIViewContentModeScaleAspectFit 等比例缩放，且不对图片进行裁剪，显示效果比较协调
     
     */
}



@end
