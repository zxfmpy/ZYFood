//
//  DWRemindModel.h
//  ZYFood_iPhone
//
//  Created by 左晓峰 on 2018/7/17.
//  Copyright © 2018年 zxfmpy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DWRemindModel : NSObject

@property (nonatomic, assign) NSInteger remindID;
@property (nonatomic, strong) NSString *content;
@property (nonatomic, strong) NSString *remindTime;

@end
