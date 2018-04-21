//
//  GCDViewController.m
//  summary
//
//  Created by NewBoy on 2018/3/1.
//  Copyright © 2018年 LX. All rights reserved.
//

#import "GCDViewController.h"

@interface GCDViewController ()

@end

@implementation GCDViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    /**1.队列和线程的关系
     在一个线程内可能有多个队列，这些队列可能是串行的或者是并行的，按照同步或者异步的方式工作
     */

    /*
     2> 让任务顺序执行的四种方式:
     2.1 同步串行队列  <自己创建的队列>
     2.2 同步并行队列  <自己创建的队列>
     2.3 同步全局队列
     2.4 异步主队列
     2.5 异步串行队列
     2.6 信号量
     */
    



    
}

/**************************相关概念**************************/
/*
 1.主队列异步任务：现将任务放在主队列中，但是不是马上执行，等到主队列中的其它所有除我们使用代码添加到主队列的任务的任务都执行完毕之后才会执行我们使用代码添加的任务。
   主队列同步任务：容易阻塞主线程，所以不要这样写。原因：我们自己代码任务需要马上执行，但是主线程正在执行代码任务的方法体，因此代码任务就必须等待，而主线程又在等待代码任务的完成好去完成下面的任务，因此就形成了相互等待。整个主线程就被阻塞了。



 同步：就是在发出一个调用时，在没有得到结果之前，该调用就不返回。但是一旦调用返回，就得到返回值了。换句话说，就是由调用者主动等待这个调用的结果。
 异步：调用在发出之后，这个调用就直接返回了，所以没有返回结果。换句话说，当一个异步过程调用发出后，调用者不会立刻得到结果。而是在调用发出后，被调用者通过状态、通知来通知调用者，或通过回调函数处理这个调用.
 dispatch_async 是将block发送到指定线程去执行，当前线程不会等待，会继续向下执行。异步执行：可以在新的线程中执行任务，但不一定会开辟新的线程。dispatch函数会立即返回, 然后Block在后台异步执行。

 dispatch_sync 也是将block发送到指定的线程去执行，但是当前的线程会阻塞，等待block在指定线程执行完成后才会继续向下执行。同步执行：在当前线程执行任务，不会开辟新的线程。必须等到Block函数执行完毕后，dispatch函数才会返回。


 主队列:
 专门用来在主线程上调度任务的队列
 随着程序启动 系统创建的
 主队列只需要获取不用创建

 */


//任务顺序执行
-(void)shunxuzhixing{
    //一 顺序执行的情况
    //1.在主线程同步任务，无论什么队列(除了主队列，主队列在这里使用死循环)都是顺序执行
    //1.1 全局队列
    //    dispatch_sync(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
    //        NSLog(@"111----%@",[NSThread currentThread]);
    //    });
    //
    //    dispatch_sync(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
    //        NSLog(@"222----%@",[NSThread currentThread]);
    //    });
    //
    //    dispatch_sync(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
    //        NSLog(@"333----%@",[NSThread currentThread]);
    //    });

    //1.2 自己创建的串行队列
    //    dispatch_queue_t queue = dispatch_queue_create("com.dispatch.serial", DISPATCH_QUEUE_SERIAL);
    //    dispatch_sync(queue, ^{
    //        NSLog(@"111----%@",[NSThread currentThread]);
    //    });
    //
    //    dispatch_sync(queue, ^{
    //        NSLog(@"222----%@",[NSThread currentThread]);
    //    });
    //
    //    dispatch_sync(queue, ^{
    //        NSLog(@"333----%@",[NSThread currentThread]);
    //    });

    //1.3 自己创建的并行队列
    //    dispatch_queue_t queue = dispatch_queue_create("com.dispatch.serial", DISPATCH_QUEUE_CONCURRENT);
    //    dispatch_sync(queue, ^{
    //        NSLog(@"111----%@",[NSThread currentThread]);
    //    });
    //
    //    dispatch_sync(queue, ^{
    //        NSLog(@"222----%@",[NSThread currentThread]);
    //    });
    //
    //    dispatch_sync(queue, ^{
    //        NSLog(@"333----%@",[NSThread currentThread]);
    //    });

    //1.4 异步执行放在主队列
    //    NSLog(@"000000");
    //    dispatch_async(dispatch_get_main_queue(), ^{
    //        NSLog(@"111----%@",[NSThread currentThread]);
    //    });
    //    dispatch_async(dispatch_get_main_queue(), ^{
    //        NSLog(@"222----%@",[NSThread currentThread]);
    //    });
    //    dispatch_async(dispatch_get_main_queue(), ^{
    //        NSLog(@"333----%@",[NSThread currentThread]);
    //    });
}

@end
