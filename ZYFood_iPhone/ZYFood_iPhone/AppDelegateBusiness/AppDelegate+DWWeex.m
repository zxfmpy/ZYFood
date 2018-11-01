//
//  AppDelegate+DWWeex.m
//  ZYFood_iPhone
//
//  Created by 左晓峰 on 2018/7/16.
//  Copyright © 2018年 zxfmpy. All rights reserved.
//

#import "AppDelegate+DWWeex.h"
#import <WeexSDK/WeexSDK.h>
#import "ZYUserModule.h"
#import "ZYMapWeexComponent.h"
#import "ZYImgLoaderDefaultImpl.h"
#import "WXMyCompoenent.h"

@implementation AppDelegate (DWWeex)
- (void)weexConfigFromCategoryDWWeex {
    //business configuration
    [WXAppConfiguration setAppGroup:@"food"];
    [WXAppConfiguration setAppName:@"foodApp"];
    [WXAppConfiguration setAppVersion:@"1.0.0"];
    
    //init sdk environment
    [WXSDKEngine initSDKEnvironment];
    
    //register custom module and component，optional
    [WXSDKEngine registerComponent:@"map" withClass:[ZYMapWeexComponent class]];
    [WXSDKEngine registerComponent:@"mycomponent" withClass:[WXMyCompoenent class]];
    [WXSDKEngine registerModule:@"ZYUserModule" withClass:[ZYUserModule class]];
    
    //register the implementation of protocol, optional
    [WXSDKEngine registerHandler:[ZYImgLoaderDefaultImpl new] withProtocol:@protocol(WXImgLoaderProtocol)];
    
    //set the log level
    //    [WXLog setLogLevel: WXLogLevelAll];
}
@end
