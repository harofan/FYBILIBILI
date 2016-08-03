//
//  FYTabbarVC.m
//  FYBILIBILI
//
//  Created by fy on 16/8/2.
//  Copyright © 2016年 LY. All rights reserved.
//

#import "FYTabbarVC.h"

#import "FYMeVC.h"

#import "FYHomeVC.h"

#import "FYNavigationController.h"

@interface FYTabbarVC ()

@end

@implementation FYTabbarVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.tintColor = FYMainColor;
    
    [self addChildVC];
}

-(void)addChildVC{
//首页
    FYHomeVC * homeVC = [[FYHomeVC alloc]init];
    
    //我
    FYMeVC * meVC = [[FYMeVC alloc]init];
    
//    self.viewControllers=@[homeVC,meVC];
    
    [self addChildVc:homeVC andTitle:@"首页" andImage:@"home_home_tab"  andSelectedImage:@"home_home_tab_s"];
    
    [self addChildVc:meVC andTitle:@"我" andImage:@"home_mine_tab"  andSelectedImage:@"home_mine_tab_s"];
}

- (void)addChildVc:(UIViewController*)childVc andTitle:(NSString*)title andImage:(NSString*)image andSelectedImage:(NSString*)selectedImage
{
    childVc.tabBarItem.title = title;
    
    childVc.tabBarItem.image = [[UIImage imageNamed:image] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    childVc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    
    FYNavigationController* nav = [[FYNavigationController alloc] initWithRootViewController:childVc];
    [self addChildViewController:nav];
}


@end
