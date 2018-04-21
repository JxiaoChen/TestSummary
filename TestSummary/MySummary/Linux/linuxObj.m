//
//  linuxObj.m
//  summary
//
//  Created by ZhuLuxi on 2018/3/18.
//  Copyright © 2018年 LX. All rights reserved.
//

#import "linuxObj.h"

@implementation linuxObj

/*
 1.
 /bin,/sbin,/usr/bin,/usr/sbin区别
 / : this is root directory             root 用户根目录
 /bin : commandsin this dir are all system installed user commands   系统的一些指令
 /sbin: commands in this dir are all system installedsuper user commands  超级用户指令系统管理命令，这里存放的是系统管理员使用的管理程序
 /usr/bin: usercommands for applications 后期安装的一些软件的运行脚本
 /usr/sbin:super user commands for applications 超级用户的一些管理程序
 /usr/X11R6/bin: X application user commands
 /usr/X11R6/sbin: X application super usercommands
 •主目录：/root、/home/username
 •用户可执行文件：/bin、/usr/bin、/usr/local/bin
 •系统可执行文件：/sbin、/usr/sbin、/usr/local/sbin
 •其他挂载点：/media、/mnt
 •配置：/etc
 •临时文件：/tmp
 •内核和Bootloader：/boot
 •服务器数据：/var、/srv
 •系统信息：/proc、/sys
 •共享库：/lib、/usr/lib、/usr/local/lib
 
 
 
 */
@end
