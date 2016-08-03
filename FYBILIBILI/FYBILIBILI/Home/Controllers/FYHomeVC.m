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
#pragma mark - 生命周期 -

-(void)viewDidAppear:(BOOL)animated{
    
    [super viewDidAppear:animated];
    
    self.navigationController.navigationBar.alpha = 0.0;
}

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
    
    //字体渐变效果
    [self setUpTitleGradient:^(BOOL *isShowTitleGradient, YZTitleColorGradientStyle *titleColorGradientStyle, CGFloat *startR, CGFloat *startG, CGFloat *startB, CGFloat *endR, CGFloat *endG, CGFloat *endB) {
        // 字体是否渐变
        *isShowTitleGradient = YES;
        // 颜色渐变样式
        *titleColorGradientStyle = YZTitleColorGradientStyleRGB;
        //开始颜色,取值范围0~1
        *startR = 0.66;
        *startG = 0.65;
        *startB = 0.66;
        
        //完成颜色
        *endR = 0.89f;
        *endG = 0.49f;
        *endB = 0.61f;
    }];
    
    //下划线设置
    [self setUpUnderLineEffect:^(BOOL *isShowUnderLine, BOOL *isDelayScroll, CGFloat *underLineH, UIColor *__autoreleasing *underLineColor) {
        
        *isShowUnderLine = YES;
        
        *underLineH = 3;
        
        *underLineColor = FYMainColor;
    }];
    
    /**
     如果_isfullScreen = Yes，这个方法就不好使。
     
     设置整体内容的frame,包含（标题滚动视图和内容滚动视图）
     */
    [self setUpContentViewFrame:^(UIView *contentView) {
        
        contentView.frame = CGRectMake(0, 20, FYScreenW, FYScreenH-20);
    }];
    
    //下划线平均分割
    self.isBisectedWidthUnderLineAndTitle = YES;
    
    @weakify(self);
    
//    [FYNotifiationCenter rac_addObserverForName:kBannerViewWillBeginDraggingNotification object:nil].
    
    
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
