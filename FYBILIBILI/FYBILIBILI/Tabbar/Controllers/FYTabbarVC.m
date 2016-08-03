//
//  FYTabbarVC.m
//  FYBILIBILI
//
//  Created by fy on 16/8/2.
//  Copyright © 2016年 LY. All rights reserved.
//

#import "FYTabbarVC.h"
//我的
#import "FYMeVC.h"
//首页
#import "FYHomeVC.h"
//关注
#import "FYAttensionVC.h"
//发现
#import "FYDiscoverVC.h"
//分区
#import "FYCategoryVC.h"


@interface FYTabbarVC ()

@end

@implementation FYTabbarVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.tintColor = FYMainColor;
    
    [self addChildVC];
}

#pragma mark - 添加子控制器 -
-(void)addChildVC{
    //首页
    FYHomeVC * homeVC = [[FYHomeVC alloc]init];
    
    //我
    FYMeVC * meVC = [[FYMeVC alloc]init];
    
    //分区
    FYCategoryVC * categoryVC =[[FYCategoryVC alloc]init];
    
    //发现
    FYDiscoverVC * discoverVC = [[FYDiscoverVC alloc]init];
    
    //关注
    FYAttensionVC * attensionVC = [[FYAttensionVC alloc]init];
    
    //依照顺序加入Tabbar
    [self addChildVc:homeVC andTitle:@"" andImage:@"home_home_tab"  andSelectedImage:@"home_home_tab_s"];
    
    [self addChildVc:categoryVC andTitle:@"" andImage:@"home_category_tab" andSelectedImage:@"home_category_tab_s"];
    
    [self addChildVc:attensionVC andTitle:@"" andImage:@"home_attention_tab" andSelectedImage:@"home_attention_tab_s"];
    
    [self addChildVc:discoverVC andTitle:@"" andImage:@"home_discovery_tab" andSelectedImage:@"home_discovery_tab_s"];
    
    [self addChildVc:meVC andTitle:@"" andImage:@"home_mine_tab"  andSelectedImage:@"home_mine_tab_s"];
}

- (void)addChildVc:(UIViewController*)childVc andTitle:(NSString*)title andImage:(NSString*)image andSelectedImage:(NSString*)selectedImage
{
    childVc.tabBarItem.title = title;
    
    childVc.tabBarItem.imageInsets = UIEdgeInsetsMake(FYTabbarImageInset, 0, -FYTabbarImageInset, 0);
    
    childVc.tabBarItem.image = [[UIImage imageNamed:image] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    childVc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    FYNavigationController* nav = [[FYNavigationController alloc] initWithRootViewController:childVc];
    
    [self addChildViewController:nav];
}


@end
