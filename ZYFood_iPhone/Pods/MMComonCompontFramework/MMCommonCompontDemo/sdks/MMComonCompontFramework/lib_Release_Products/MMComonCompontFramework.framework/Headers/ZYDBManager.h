//
//  ZYDBManager.h
//  ZYFood-iPhone
//
//  Created by 左晓峰 on 15/10/23.
//  Copyright © 2015年 zxfmpy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZYDBModel.h"
#import "DWRemindModel.h"

@interface ZYDBManager : NSObject

+(instancetype)shareManager;

-(void)insertFoodModel:(ZYDBModel *)model
             completed:(void(^)())callback
                failed:(void(^)(NSString *err)) failed;
//查询所有食物
-(NSMutableArray *)fetchAllFood;

//更新菜品信息
-(void)updateFoodModel:(ZYDBModel *)model
             completed:(void(^)())callback
                failed:(void(^)(NSString *str)) failed;

//加入收藏
-(void)collectionFood:(ZYDBModel *)model
            completed:(void(^)()) callback
               failed:(void(^)(NSString *err))failed;

//查询加入收藏的食物
-(NSMutableArray *)fetchCollectionFoods;
//查询未加入收藏的食物
-(NSMutableArray *)fetchNotCollectionFoods;

//删除食物
-(void)deleteFood:(ZYDBModel *)model
        completed:(void(^)()) callback
           failed:(void(^)(NSString *err))failed;

-(NSMutableArray *)fetchFoodName:(NSString *)foodName;

#pragma mark Reminds
//查询所有提醒
-(NSMutableArray *)fetchAllReminds;

//更新RemindModel
-(void)updateRemindModel:(DWRemindModel *)model
             completed:(void(^)())callback
                failed:(void(^)(NSString *str)) failed;

-(void)insertRemindModel:(DWRemindModel *)model
             completed:(void(^)())callback
                failed:(void(^)(NSString *err)) failed;
//删除食物
-(void)deleteRemind:(DWRemindModel *)model
        completed:(void(^)()) callback
           failed:(void(^)(NSString *err))failed;
@end
