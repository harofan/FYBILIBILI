//
//  FYHomeVC.m
//  FYBILIBILI
//
//  Created by fy on 16/8/2.
//  Copyright © 2016年 LY. All rights reserved.
//

#import "FYHomeVC.h"
//推荐
#import "FYRecommendVC.h"

//直播
#import "FYLiveVC.h"

//番剧
#import "FYBangumiVC.h"


@interface FYHomeVC ()

@end

@implementation FYHomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    self.view.autoresizingMask = YES;
    //避免滑动时下一个页面没tabbar时的卡顿现象
    self.fd_prefersNavigationBarHidden = NO;
    
    //添加所有子控制器
    [self addsubVC];
    
    [self setUpTitleGradient:^(BOOL *isShowTitleGradient, YZTitleColorGradientStyle *titleColorGradientStyle, CGFloat *startR, CGFloat *startG, CGFloat *startB, CGFloat *endR, CGFloat *endG, CGFloat *endB) {
        // 字体是否渐变
        *isShowTitleGradient = YES;
        // 颜色渐变样式
        *titleColorGradientStyle = YZTitleColorGradientStyleFill;
        //开始颜色,取值范围0~1
        
        //完成颜色
    }];
}

#pragma mark - 搭建子控制器 -
-(void)addsubVC{
    
    //推荐
    FYRecommendVC * recommendVC = [[FYRecommendVC alloc]init];
    
    recommendVC.title = @"推荐";
    
    [self addChildViewController:recommendVC];
    
    //直播
    FYLiveVC * liveVC = [[FYLiveVC alloc]init];
    
    liveVC.title = @"直播";
    
    [self addChildViewController:liveVC];
    
    //番剧
    FYBangumiVC * bangumiVC = [[FYBangumiVC alloc]init];
    
    bangumiVC.title = @"番剧";
    
    [self addChildViewController:bangumiVC];
    
}

@end
