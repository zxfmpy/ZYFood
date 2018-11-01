//
//  LibMMFoodRouterManager.h
//  LibMMFoodFramework
//
//  Created by 左晓峰 on 2018/10/25.
//  Copyright © 2018年 zxfmpy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface LibMMTabBarModel : NSObject

@property (nonatomic, strong,readonly) UIViewController *showViewController;

@end

@interface LibMMFoodRouterManager : NSObject

@property (nonatomic, strong) UINavigationController *navigationController;

@property (nonatomic, strong) LibMMTabBarModel *foodTabBarModel;
@property (nonatomic, strong) LibMMTabBarModel *addFoodTabBarModel;

@property (nonatomic, copy) void (^toAddFoodViewControllerCallBack)(void);

+(instancetype)shareManager;

@end
