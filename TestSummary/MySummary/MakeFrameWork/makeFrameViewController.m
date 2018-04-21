//
//  makeFrameViewController.m
//  summary
//
//  Created by NewBoy on 2018/4/16.
//  Copyright © 2018年 LX. All rights reserved.
//

#import "makeFrameViewController.h"

@interface makeFrameViewController ()

@end

@implementation makeFrameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.







}

//制作framework常见的错误
- (void)commonError{

/*
 1.dyld: Library not loaded: @rpath/LXFrameWork.framework/LXFrameWork
 Referenced from: /Users/NewBoy/Library/Developer/CoreSimulator/Devices/A2133370-5454-472E-A57B-5A6C1DD67378/data/Containers/Bundle/Application/9968F5C0-5D44-4C45-9650-B7B62B1CF520/SDKTest.app/SDKTest
 Reason: image not found

 
 */
}
- (void)basicConcept{
    /*
     相关链接：
     https://www.jianshu.com/p/ef5a888e57f2?from=timeline&isappinstalled=0
     https://www.jianshu.com/p/87dbf57cfe4a

     1.基本概念：
     库: 共享程序代码的方式.库是源代码经过编译，形成的二进制代码.(比如：OC代码--->0101010)
     静态库: 在程序编译的时候会被直接拷贝一份，复制到目标程序里，这段代码在目标程序里就不会再改变了
     一般以.a 和 .framework为文件后缀名
     动态库: 动态库在编译时并不会被拷贝到目标程序中，目标程序中只会存储指向动态库的引用.等到程序运行时，动态库才      会被真正加载进来。
     动态库优点：不需要拷贝到目标程序中，不会影响目标程序的体积，而且同一份库可以被多个程序使用（因为这个原因，动态库也被称作共享库）。
     动态库带来的问题：动态载入会带来一部分性能损失，使用动态库也会使得程序依赖于外部环境。如果环境缺少动态库或者库的版本不正确，就会导致程序无法运行
     以 .tbd(之前叫.dylib) 和 .framework 为文件后缀名

     2.framework
     Framework只是一种打包方式，其本身和静态、动态无关

     3.系统的.framework是动态库，我们自己建立的.framework是静态库。

     4.a与.framework有什么区别？
     .a是一个纯二进制文件，.framework中除了有二进制文件之外还有资源文件。
     .a文件不能直接使用，至少要有.h文件配合，.framework文件可以直接使用。

     5.category是我们实际开发项目中经常用到的，把category打成静态库是没有问题的，但是在用这个静态库的工程中，调用category中的方法时会有找不到该方法的运行时错误（selector not recognized），解决办法是：在使用静态库的工程中配置other linker flags的值为-ObjC。
     */
}

//1.如果用分类单独作为一个framework时，调用方法会报unrecognized selector sent to class 0x1105b0d98'？？
//原因:
-(void)frameWorkWithCategory{

    /*
     解决方法：Xcode设置  Bulid Settings ---> Other Linker Flags----> -ObjC
      由于静态库,链接器,与OC语言的动态的特性之间的问题,OC语言并不是对每一个函数或者方法建立符号表,而只是对每一个类创建了符号表.如果一个类有了分类,那么链接器就不会将核心类与分类之间的代码完成进行合并,这就阻止了在最终的应用程序中的可执行文件缺失了分类中的代码,这样函数调用接失败了

     原因:::
     C代码到可执行文件经历的步骤是:
     源代码 > 预处理器 > 编译器 > 汇编器 > 机器码 > 链接器 > 可执行文件

     在最后一步需要把.o文件和C语言运行库链接起来，这时候需要用到ld命令。源文件经过一系列处理以后，会生成对应的.obj文件，然后一个项目必然会有许多.obj文件，并且这些文件之间会有各种各样的联系，例如函数调用。
     链接器做的事就是把这些目标文件和所用的一些库链接在一起形成一个完整的可执行文件

     -ObjC
     一般这个参数足够解决前面提到的问题,这个flag告诉链接器把库中定义的Objective-C类和Category都加载进来。这样编译之后的app会变大,因为加载了很多不必要的文件而导致可执行文件变大。但是如果静态库中有类和category的话只有加入这个flag才行,但是Objc也不是万能的,当静态库中只有分类而没有类的时候,Objc就失效了,这就需要使用-all_load或者-force_load了。

     -all_load
     -all_load会强制链接器把目标文件都加载进来，即使没有objc代码。但是这个参数也有一个弊端,那就是你使用了不止一个静态库文件，那么你很有可能会遇到ld: duplicate symbol错误，因为不同的库文件里面可能会有相同的目标文件 这里会有两种方法解决 1:用命令行就行拆包. 2:就是用下面的这个参数

     -force_load
     这个flag所做的事情跟-all_load其实是一样的，只是-force_load需要指定要进行全部加载的库文件的路径，这样的话，你就只是完全加载了一个库文件，不影响其余库文件的按需加载 .

     */


}


@end
