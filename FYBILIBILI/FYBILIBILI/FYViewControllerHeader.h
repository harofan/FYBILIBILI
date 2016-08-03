//
//  FYViewControllerHeader.h
//  FYBILIBILI
//
//  Created by fy on 16/8/3.
//  Copyright © 2016年 LY. All rights reserved.
//

#import "FYViewController.h"

// 导航条高度
static CGFloat const FYNavBarH = 64;

// 标题滚动视图的高度
static CGFloat const FYTitleScrollViewH = 44;

// 标题缩放比例
static CGFloat const FYTitleTransformScale = 1.3;

// 下划线默认高度
static CGFloat const FYUnderLineH = 2;


// 默认标题字体
#define FYTitleFont [UIFont systemFontOfSize:15]

// 默认标题间距
static CGFloat const margin = 20;

static NSString * const ID = @"cell";

// 标题被点击或者内容滚动完成，会发出这个通知，监听这个通知，可以做自己想要做的事情，比如加载数据
static NSString * const FYDisplayViewClickOrScrollDidFinshNote = @"FYDisplayViewClickOrScrollDidFinshNote";

// 重复点击通知
static NSString * const FYDisplayViewRepeatClickTitleNote = @"FYDisplayViewRepeatClickTitleNote";

