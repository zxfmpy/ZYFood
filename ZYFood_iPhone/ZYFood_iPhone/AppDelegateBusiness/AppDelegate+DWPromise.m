//
//  AppDelegate+DWPromise.m
//  ZYFood_iPhone
//
//  Created by 左晓峰 on 2018/7/16.
//  Copyright © 2018年 zxfmpy. All rights reserved.
//

#import "AppDelegate+DWPromise.h"
#import "FBLPromises.h"

@implementation AppDelegate (DWPromise)
- (FBLPromise<NSString *> *)work1:(NSString *)string {
    return [FBLPromise do:^id {
        return string;
    }];
}

- (FBLPromise<NSNumber *> *)work2:(NSString *)string {
    return [FBLPromise do:^id {
        NSInteger number = string.integerValue;
        return number > 0 ? @(number) : [NSError errorWithDomain:@"work2Error" code:0 userInfo:nil];
    }];
}

- (NSNumber *)work3:(NSNumber *)number {
    return @(number.integerValue * number.integerValue);
}

- (void)testPromiseFromCategoryDWPromise {
    
    [[[[[[self work1:@"abc"] then:^id _Nullable(NSString * _Nullable value) {
        return [self work2:value];
    }] then:^id _Nullable(id  _Nullable value) {
        return [self work3:value];
    }] then:^id _Nullable(id  _Nullable value) {
        NSLog(@"%@", value);  // 100
        return value;
    }] catch:^(NSError * _Nonnull error) {
        NSLog(@"error = %@",error);
    }] always:^{
        NSLog(@"finish");
    }];
    
    //    [[[[self work1:@"10"] then:^id(NSString *string) {
    //        return [self work2:string];
    //    }] then:^id(NSNumber *)number {
    //        return [self work3:number];
    //    }] then:^id(NSNumber* number) {
    //        NSLog(@"%@", number);  // 100
    //        return number;
    //    }];
}
@end
