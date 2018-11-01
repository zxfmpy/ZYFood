//
//  ZYTableBarController.m
//  ZYFood_iPhone
//
//  Created by 左晓峰 on 16/4/29.
//  Copyright © 2016年 zxfmpy. All rights reserved.
//

#import "ZYTableBarController.h"

@import LibMMFoodFramework;

@interface ZYTableBarController ()

@end

@implementation ZYTableBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSFontAttributeName : [UIFont fontWithName:@"HelveticaNeue-Bold" size:10.0F], NSForegroundColorAttributeName : [UIColor colorWithRed:0.13f green:0.11f blue:0.19f alpha:1.00f]} forState:UIControlStateSelected];
    
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSFontAttributeName : [UIFont systemFontOfSize:10.0F],  NSForegroundColorAttributeName:[UIColor colorWithRed:0.75f green:0.75f blue:0.75f alpha:1.00f]} forState:UIControlStateNormal];
    
}

- (void)configureUIAppearance{
    
    LibMMTabBarModel *foodModel = [LibMMFoodRouterManager shareManager].foodTabBarModel;
    LibMMTabBarModel *addFoodModel = [LibMMFoodRouterManager shareManager].addFoodTabBarModel;
    
    
    self.viewControllers = @[foodModel.showViewController,addFoodModel.showViewController];
    
    [LibMMFoodRouterManager shareManager].toAddFoodViewControllerCallBack = ^{
        self.selectedViewController = addFoodModel.showViewController;;
    };
}



@end
