//
//  singletonClass.h
//  summary
//
//  Created by NewBoy on 2018/3/2.
//  Copyright © 2018年 LX. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface singletonClass : NSObject


+(instancetype)shareInstance;





/*
   1.这里只是ARC模式下的单例，MRC模式下还要实现retainCount retain release方法。
   2.单例模式潜在的问题
   2.1>内存问题
         单例模式实际上延长了对象的生命周期。那么就存在内存问题。因为这个对象在程序的整个生命都存在。所以当这个单例比较大的时候，总是hold住那么多内存，就需要考虑这件事了。另外，可能单例本身并不大，但是它如果强引用了另外的比较大的对象，也算是一个问题。别的对象因为单例对象不释放而不释放。
         当然这个问题也有一定的办法。比如对于一些可以重新加载的对象，在需要的时候加载，用完之后，单例对象就不再强引用，从而把原先hold住的对象释放掉。下次需要再加载回来。

     2.2. 循环依赖问题
     在开发过程中，单例对象可能有一些属性，一般会放在init的时候创建和初始化。这样，比如如果单例A的m属性依赖于单例B，单例B的属性n依赖于单例A，初始化的时候就会出现死循环依赖。死在dispatch_once里。


 */
@end
