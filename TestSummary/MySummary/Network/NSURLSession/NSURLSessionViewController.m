//
//  NSURLSessionViewController.m
//  summary
//
//  Created by NewBoy on 2018/3/8.
//  Copyright © 2018年 LX. All rights reserved.
//

#import "NSURLSessionViewController.h"
#import <netdb.h>
#import <arpa/inet.h>

@interface NSURLSessionViewController ()

@end

@implementation NSURLSessionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// 把域名解析成ip地址
- (void)transferComToIp{
    /*
     getaddrinfo 把域名解析为ip地址 ret==0 成功。非0 失败
     域名与ip映射关系：
     多个域名可以映射一个ip
     一个域名可以映射多个ip 负载均衡
     */
    struct addrinfo *answer, hint, *curr;
    char ipstr[INET6_ADDRSTRLEN+1];
    bzero(ipstr, sizeof(ipstr));
    bzero(&hint, sizeof(hint));
    hint.ai_family = AF_UNSPEC;
    hint.ai_socktype = SOCK_STREAM;
    answer = NULL;
    int ret = getaddrinfo(@"www.sina.com".UTF8String, NULL, &hint, &answer);
    if (ret == 0) {
        for (curr = answer; curr != NULL; curr = curr->ai_next) {
            if (curr->ai_family == AF_INET) {
                inet_ntop(AF_INET,
                          &(((struct sockaddr_in *)(curr->ai_addr))->sin_addr),
                          ipstr, INET_ADDRSTRLEN);
            }
            else if (curr->ai_family == AF_INET6) {
                inet_ntop(AF_INET6,
                          &(((struct sockaddr_in *)(curr->ai_addr))->sin_addr),
                          ipstr, INET6_ADDRSTRLEN);
            }

            NSLog(@"解析的ip地址----%s",ipstr);
        }

        if (answer != NULL)
            freeaddrinfo(answer);

    }else{
        NSLog(@"解析地址失败-----");
    }

}

@end
