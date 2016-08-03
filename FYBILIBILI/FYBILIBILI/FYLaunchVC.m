//
//  FYLaunchVC.m
//  FYBILIBILI
//
//  Created by fy on 16/8/2.
//  Copyright © 2016年 LY. All rights reserved.
//

#import "FYLaunchVC.h"

#import "FYTabbarVC.h"

@interface FYLaunchVC ()

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *ConSplashHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *ConSplashWidth;
@property (weak, nonatomic) IBOutlet UIImageView *View_splash;
@end

@implementation FYLaunchVC

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self initSplash];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        [self splashviewAnimate];
    });
    
   

}
//初始化
-(void)initSplash{
    
    self.ConSplashWidth.constant = 0;
    
    self.ConSplashHeight.constant = 0;
    
    [self.view layoutIfNeeded];
}
//中间动画
-(void)splashviewAnimate{
    
    self.View_splash.hidden = NO;
    
    self.ConSplashWidth.constant = 320;
    
    self.ConSplashHeight.constant = 420;
    
    [UIView animateWithDuration:1.5 delay:0.5 usingSpringWithDamping:0.2 initialSpringVelocity:8.0 options:0 animations:^{
        
        [self.view layoutIfNeeded];
        
    } completion:^(BOOL finished) {
//判断网络连接情况
        if ([YYReachability reachability].status == YYReachabilityStatusWWAN) {
            //连接流量
            
        } else if ([YYReachability reachability].status == YYReachabilityStatusWiFi){
            //连接wifi
            
            [self replaceTabbar];
            
        }else{
            //无网络
        }
    }];
}

-(void)replaceTabbar{
    
    FYTabbarVC * tabbarVC = [[FYTabbarVC alloc]init];
    
    [UIApplication sharedApplication].keyWindow.rootViewController =tabbarVC;
    
    [[UIApplication sharedApplication].keyWindow sendSubviewToBack:[UIApplication sharedApplication].keyWindow.rootViewController.view];
}

@end
