//
//  FYFlowlayout.m
//  FYBILIBILI
//
//  Created by fy on 16/8/3.
//  Copyright © 2016年 LY. All rights reserved.
//

#import "FYFlowlayout.h"

@implementation FYFlowlayout

- (void)prepareLayout
{
    [super prepareLayout];
    self.minimumInteritemSpacing = 0;
    self.minimumLineSpacing = 0;
    if (self.collectionView.bounds.size.height) {
        
        self.itemSize = self.collectionView.bounds.size;
    }
    
    
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    
}

@end
