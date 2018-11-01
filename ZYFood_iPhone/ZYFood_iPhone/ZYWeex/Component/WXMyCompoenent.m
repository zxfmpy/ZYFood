//
//  WXMyCompoenent.m
//  ZYFood_iPhone
//
//  Created by 左晓峰 on 2018/7/5.
//  Copyright © 2018年 zxfmpy. All rights reserved.
//

#import "WXMyCompoenent.h"
#import <WeexSDK/WeexSDK.h>

@implementation WXMyCompoenent
WX_EXPORT_METHOD(@selector(focus:)) // 暴露该方法给js
- (instancetype)initWithRef:(NSString *)ref type:(NSString *)type styles:(NSDictionary *)styles attributes:(NSDictionary *)attributes events:(NSArray *)events weexInstance:(WXSDKInstance *)weexInstance
{
    if (self = [super initWithRef:ref type:type styles:styles attributes:attributes events:events weexInstance:weexInstance]) {
        // handle your attributes
        // handle your styles
    }
    
    return self;
}

- (void)focus:(id)dict
{
    NSLog(@"you got it %@",dict);
}
@end
