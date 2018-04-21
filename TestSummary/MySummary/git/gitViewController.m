//
//  gitViewController.m
//  summary
//
//  Created by NewBoy on 2018/3/27.
//  Copyright © 2018年 LX. All rights reserved.
//

#import "gitViewController.h"

@interface gitViewController ()

@end

@implementation gitViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    /*
     git 命令行相关:
     1.创建分支并拉取远程分支。然后切换到当前创建的分支
     git checkout -b xxx origin/xxx

     2.The following untracked working tree files would be overwritten by merge:
     .DS_Store

     git clean  -d  -fx "xxx"
     x  -----删除忽略文件已经对git来说不识别的文件
     d  -----删除未被添加到git的路径中的文件
     f  -----强制运行


     3.新建一个分支 关联到远程分支
     git branch xxx  新建一个分支
     git push -u origin xxx 关联到这个分支
     */
    /*
     1>>  设置gitignore 全局忽略DS_Store.等文件

     在git中如果想忽略掉某个文件，不让这个文件提交到版本库中，可以使用修改根目录中 .gitignore 文件的方法（如无，则需自己手工建立此文件）。这个文件每一行保存了一个匹配的规则例如：

     #          此为注释 – 将被 Git 忽略
     *.a        #忽略所有 .a 结尾的文件
     !lib.a     #但 lib.a 除外
     /TODO      #仅仅忽略项目根目录下的 TODO 文件，不包括 subdir/TODO
     build/     #忽略 build/ 目录下的所有文件
     doc/*.txt  #会忽略 doc/notes.txt 但不包括 doc/server/arch.txt
     规则很简单，不做过多解释，但是有时候在项目开发过程中，突然心血来潮想把某些目录或文件加入忽略规则，按照上述方法定义后发现并未生效，原因是.gitignore只能忽略那些原来没有被track的文件，如果某些文件已经被纳入了版本管理中，则修改.gitignore是无效的。那么解决方法就是先把本地缓存删除（改变成未track状态），

     忽略的文件格式：
     .DS_Store
     xcuserdata/
     ......
     ......
     ......
     ......

     然后再提交：
     git rm -r --cached
     git add -A
     git commit -m 'XXX'

     注意：
     不要误解了 .gitignore 文件的用途，该文件只能作用于 Untracked Files，也就是那些从来没有被 Git 记录过的文件（自添加以后，从未 add 及 commit 过的文件）。
     如果文件曾经被 Git 记录过，那么.gitignore 就对它们完全无效。
     如果一个文件已经被传到了远程仓库，可以手动删除或者使用命令行远程删除。
     */



    /*
     4.版本回退
     如果你的错误提交已经推送到自己的远程分支了，那么就需要回滚远程分支了。
     首先要回退本地分支
     git reset --hard Obfafd

     紧接着强制推送到远程分支：
     git push -f

     本地分支回滚后，版本将落后远程分支，必须使用强制推送覆盖远程分支，否则无法推送到远程分支

     */
}

- (void)noteWithGit{


    /*
     1.git工作流

     */

}


@end
