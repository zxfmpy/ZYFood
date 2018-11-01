//
//  FAImageView.m
//  FrameworkAppStore
//
//  Created by 左晓峰 on 2018/10/22.
//  Copyright © 2018年 zxfmpy. All rights reserved.
//

#import "FAImageView.h"
#import "UIImageView+WebCache.h"

@implementation FAImageView
- (void)loadImageUrl:(NSString *)url {
    [self sd_setImageWithURL:[NSURL URLWithString:url]];
}
@end
