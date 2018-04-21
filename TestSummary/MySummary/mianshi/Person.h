//
//  Person.h
//  summary
//
//  Created by ZhuLuxi on 2018/4/7.
//  Copyright © 2018年 LX. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    @public
    NSString *_level;
    NSString *_isLevel;
    NSString *isLevel;
    
    NSString *_name;
    NSString *_isName;
    NSString *isName;
}
//@property(nonatomic,copy)    NSString *level;
@property(nonatomic,copy)    NSString *name;
@property(nonatomic,assign)  int  age;



@end
