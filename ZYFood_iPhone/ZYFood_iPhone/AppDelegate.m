//
//  AppDelegate.m
//  ZYFood_iPhone
//
//  Created by 左晓峰 on 16/4/29.
//  Copyright © 2016年 zxfmpy. All rights reserved.
//

#import "AppDelegate.h"
#import "AppDelegate+DWPromise.h"
#import "AppDelegate+DWWeex.h"
#import "AppDelegate+DWNotification.h"
#import "ZYRootNavigationController.h"
#import "Masonry.h"
#import "ZYTableBarController.h"
#import <CTMediator/CTMediator.h>

@import MMComonCompontFramework;
@import LibMMFoodFramework;


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    ZYTableBarController *tabbarViewController = [[ZYTableBarController alloc] init];
    [tabbarViewController configureUIAppearance];
    
    ZYRootNavigationController *rootNav = [[ZYRootNavigationController alloc] initWithRootViewController:tabbarViewController];
    self.window.rootViewController = rootNav;
    [self.window makeKeyAndVisible];
    self.window.backgroundColor = [UIColor whiteColor];
    
    [LibMMFoodRouterManager shareManager].navigationController = rootNav;
    
    return YES;
}

@end
