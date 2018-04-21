//
//  NSArray+Extension.h
//  summary
//
//  Created by NewBoy on 2018/4/4.
//  Copyright © 2018年 LX. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (Extension)

//数组去重的4种方法
//4种方法中只有containObject去重 会按顺序输出。其他三种都是无序的
+ (NSArray *)removeTheSameElementInArray:(NSArray *)originArray;

@end
