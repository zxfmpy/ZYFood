//
//  ZYBaseView.h
//  ZYFood_iPhone
//
//  Created by 左晓峰 on 16/4/29.
//  Copyright © 2016年 zxfmpy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZYBaseView : UIView

@property (nonatomic,copy)NSString *title;
@property (nonatomic,copy)dispatch_block_t backBlock;
@property (nonatomic,copy)dispatch_block_t nextBlock;

-(void)hideleft:(BOOL)leftHide andRight:(BOOL)rightHide;
@end
