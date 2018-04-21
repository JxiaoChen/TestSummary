//
//  drawView.m
//  summary
//
//  Created by NewBoy on 2018/3/23.
//  Copyright © 2018年 LX. All rights reserved.
//

#import "drawView.h"

@implementation drawView

/*
 1.UIImage对象直接draw      drawInRect
 2.label有文本直接draw      drawTextInRect
 */
-(void)drawRect:(CGRect)rect
{
    [super drawRect:rect];

    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(context, [[UIColor redColor] colorWithAlphaComponent:1.0].CGColor);
    CGContextStrokeRectWithWidth(context, self.bounds, 1);

}


//UIImage对象直接画
- (void)drawRectWithImageObj{
    UIImage *iamge = [UIImage imageNamed:@"22.jpeg"];
    [iamge drawInRect:self.bounds];
}

//label有文本直接draw
- (void)drawRectWithLableObj{
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 20, 100, 20)];
    label.backgroundColor = [UIColor redColor];
    label.text = @"这是画上去的";
    label.font = [UIFont systemFontOfSize:9];
    [label drawTextInRect:label.frame];
}

@end
