//
//  ZYImgLoaderDefaultImpl.m
//  ZYFood_iPhone
//
//  Created by 左晓峰 on 2018/7/5.
//  Copyright © 2018年 zxfmpy. All rights reserved.
//

#import "ZYImgLoaderDefaultImpl.h"
#import <SDWebImage/SDWebImageManager.h>
#import <SDWebImage/SDWebImageDownloader.h>

@implementation ZYImgLoaderDefaultImpl
- (id<WXImageOperationProtocol>)downloadImageWithURL:(NSString *)url imageFrame:(CGRect)imageFrame userInfo:(NSDictionary *)options completed:(void(^)(UIImage *image,  NSError *error, BOOL finished))completedBlock
{
    if ([url hasPrefix:@"//"]) {
        url = [@"http:" stringByAppendingString:url];
    }
    return (id<WXImageOperationProtocol>)[[SDWebImageDownloader sharedDownloader] downloadImageWithURL:[NSURL URLWithString:url] options:0 progress:^(NSInteger receivedSize, NSInteger expectedSize, NSURL * _Nullable targetURL) {
        
    } completed:^(UIImage * _Nullable image, NSData * _Nullable data, NSError * _Nullable error, BOOL finished) {
        if (completedBlock) {
            completedBlock(image, error, finished);
        }
    }];
    
}
@end
