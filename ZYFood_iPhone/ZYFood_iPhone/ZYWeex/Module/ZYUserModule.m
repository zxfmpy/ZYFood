//
//  ZYUserModule.m
//  ZYFood_iPhone
//
//  Created by 左晓峰 on 2018/7/5.
//  Copyright © 2018年 zxfmpy. All rights reserved.
//

#import "ZYUserModule.h"

@implementation ZYUserModule

WX_EXPORT_METHOD(@selector(printMsg:))

- (void)printMsg:(NSString *)msg{
    if (!msg) {
        return;
    }
    NSLog(@"callMsg = %@",msg);
}

@end
