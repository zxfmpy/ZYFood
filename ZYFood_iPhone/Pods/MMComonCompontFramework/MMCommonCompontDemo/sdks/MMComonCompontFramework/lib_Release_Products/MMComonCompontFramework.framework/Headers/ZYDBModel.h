//
//  ZYDBModel.h
//  ZYFood-iPhone
//
//  Created by 左晓峰 on 15/10/23.
//  Copyright © 2015年 zxfmpy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZYDBModel : NSObject

@property (nonatomic,assign)NSInteger foodID;
@property (nonatomic,copy) NSString *name;  //名称
@property (nonatomic,copy) NSString *detail; //详细制作步骤
@property (nonatomic,copy) NSString *ingredients; //食材
@property (nonatomic,copy) NSString *seasoning; //调味料
@property (nonatomic,copy) NSString *other; //备注
@property (nonatomic,copy) NSString *isSave; //是否收藏

@end
