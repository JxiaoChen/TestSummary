//
//  LXGuideViewController.m
//  summary
//
//  Created by NewBoy on 2018/2/27.
//  Copyright © 2018年 LX. All rights reserved.
//


#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

#import "Masonry.h"
#import "LXGuideViewController.h"
#import "ViewController.h"

#define GuidePageV 1     //轮播图的版本号，当更换轮播的时候，此值可累计往上加1。  1.2.3.4.....

@interface LXGuideViewController ()<UIScrollViewDelegate>
@property (nonatomic,strong) UIPageControl *pageControl;

@end

@implementation LXGuideViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.view.backgroundColor = [UIColor lightGrayColor];
    NSArray *images = @[@"yindaoye-01",@"yindaoye-02",@"yindaoye-03",];

    UIScrollView *scrollView = [[UIScrollView alloc] init];
    scrollView.contentSize = CGSizeMake(images.count * SCREEN_WIDTH,0);
    scrollView.delegate = self;
    scrollView.backgroundColor = [UIColor redColor];
    scrollView.showsHorizontalScrollIndicator = NO;
    scrollView.pagingEnabled = YES;
    scrollView.bounces = NO;
    [self.view addSubview:scrollView];
   
    [scrollView mas_makeConstraints:^(MASConstraintMaker *make) {

//        if (@available(iOS 11.0, *)) {
//            make.top.equalTo(self.view.mas_safeAreaLayoutGuideTop);
//            make.left.equalTo(self.view.mas_safeAreaLayoutGuideLeft);
//            make.right.equalTo(self.view.mas_safeAreaLayoutGuideRight);
//            make.bottom.equalTo(self.view.mas_safeAreaLayoutGuideBottom);
//        } else {
            make.edges.equalTo(self.view);
//        }
    }];

    for (int i = 0; i < images.count; i ++) {
        UIImageView *imageView = [[UIImageView alloc]init];
        imageView.frame = CGRectMake(i * SCREEN_WIDTH, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
        imageView.image = [UIImage imageNamed:images[i]];
        imageView.userInteractionEnabled = YES;
        UIButton *button = [[UIButton alloc]init];
        button.frame = CGRectMake(150, 600, 150, 50);
        [button setTitle:[NSString stringWithFormat:@"第%zd个引导页",i] forState:UIControlStateNormal];
        button.titleLabel.textColor = [UIColor redColor];
        button.backgroundColor = [UIColor blueColor];
        if (i == images.count - 1) {
            [button addTarget:self action:@selector(clickLastBtn) forControlEvents:UIControlEventTouchUpInside];
        }
        [imageView addSubview:button];
        [scrollView addSubview:imageView];
    }


    //如果要自定义图片，使用kVC替换图片
    /*
     [self.pageControl setValue:[UIImage imageNamed:@"point-cycle"] forKeyPath:@"pageImage"];
     [self.pageControl setValue:[UIImage imageNamed:@"point"] forKeyPath:@"currentPageImage"];
     */
    self.pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 700, SCREEN_WIDTH, 20)];
    self.pageControl.enabled = NO;
    self.pageControl.numberOfPages = images.count;
    self.pageControl.currentPageIndicatorTintColor = [UIColor redColor];
    self.pageControl.pageIndicatorTintColor = [UIColor blueColor];
    [self.view addSubview:self.pageControl];

    //右上角一直有个跳过的按钮
    UIButton *rightBtn = [[UIButton alloc]init];
    rightBtn.frame = CGRectMake(SCREEN_WIDTH-50, 40, 40, 30);
    [rightBtn setTitle:@"跳过" forState:UIControlStateNormal];
    rightBtn.titleLabel.textColor = [UIColor redColor];
    rightBtn.backgroundColor = [UIColor blueColor];
    [rightBtn addTarget:self action:@selector(clickLastBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:rightBtn];

}


- (void)clickLastBtn{
    NSLog(@"引导页最后一个按钮点击.... 切换到首页");
    [[[[UIApplication sharedApplication] delegate] window] setRootViewController:[[ViewController alloc] init]];
}

#pragma mark - scrollview delegate
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    int page = scrollView.contentOffset.x / SCREEN_WIDTH;

    self.pageControl.currentPage = page;
}


/***相关知识点******************************************************/
// 1> 判断app首次打开或者更新新版之后显示引导页的条件
// 2> 用引导页的版本号判定:只要用户看过以后就永远不要看了，与app版本无关。 theSecondShowLogic

-(void)showGuidePage{
    //第一次打开该app或者版本更新之后，出现引导页
    NSString *currentVersion = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"];

    //本地保存的版本号
    NSUserDefaults *userDe = [NSUserDefaults standardUserDefaults];
    NSString *localVersion = [userDe objectForKey:@"kAPP_Version"];
    if ([currentVersion isEqualToString:localVersion]) {
        //已经运行过该版本
        [[[[UIApplication sharedApplication] delegate] window] setRootViewController:[[ViewController alloc] init]];
    } else {
        //更新本地存储的版本
        [userDe setObject:currentVersion forKey:@"kAPP_Version"];
        [userDe synchronize];
    //已经运行过该版本
    [[[[UIApplication sharedApplication] delegate] window] setRootViewController:[[LXGuideViewController alloc] init]];
    }
}

    - (void)theSecondShowLogic{
        NSUserDefaults *userDe = [NSUserDefaults standardUserDefaults];
        NSString *saveVersion = [userDe objectForKey:@"GuidePageVersion"];
        if ([saveVersion intValue] == GuidePageV) {//已经运行过该版本
            [[[[UIApplication sharedApplication] delegate] window] setRootViewController:[[ViewController alloc] init]];
        }else{
            //    更新本地存储的版本
            [userDe setObject:@(GuidePageV) forKey:@"GuidePageVersion"];
            [userDe synchronize];

            [[[[UIApplication sharedApplication] delegate] window] setRootViewController:[[LXGuideViewController alloc] init]];
        }

    }

@end
