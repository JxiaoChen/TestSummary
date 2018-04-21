//
//  NSArray+Extension.m
//  summary
//
//  Created by NewBoy on 2018/4/4.
//  Copyright © 2018年 LX. All rights reserved.
//

#import "NSArray+Extension.h"

@implementation NSArray (Extension)

+ (NSArray *)removeTheSameElementInArray:(NSArray *)originArray{
    
    return [[[self alloc]init] removeTheSameElementInArrayWithNSSet:originArray];
}

//1.使用containObject去重
- (NSArray *)removeTheSameElementInArrayWithContainObject:(NSArray *)array{

    NSMutableArray *newArray = [NSMutableArray array];
    for (int i = 0; i < array.count; i ++ ) {
        if (![newArray containsObject:array[i]]) {
            [newArray addObject:array[i]];
        }
    }
    return newArray;
}

//2.使用KVC去重
- (NSArray *)removeTheSameElementInArrayWithKVC:(NSArray *)array{
    NSArray *distinctArray = [array valueForKeyPath:@"@distinctUnionOfObjects.self"];
    return distinctArray;
}

//3.使用字典去重
- (NSArray *)removeTheSameElementInArrayWithMutableDict:(NSArray *)array{
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    for (NSString *value in array) {
        [dict setValue:value forKey:value];
    }
    return dict.allKeys;
}

//4.使用NSSet去重
- (NSArray *)removeTheSameElementInArrayWithNSSet:(NSArray *)array{
    NSSet *set = [NSSet setWithArray:array];
    return set.allObjects;
}
 
@end
