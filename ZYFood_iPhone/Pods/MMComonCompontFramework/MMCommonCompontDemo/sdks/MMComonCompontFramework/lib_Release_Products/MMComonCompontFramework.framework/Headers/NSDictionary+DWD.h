//
//  NSDictionary+DWD.h
//  Pods
//
//  Created by dianwoda on 2017/9/6.
//  Copyright © 2017年 dianwoda. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (DWD)

- (id)dwd_safeObjectForKey:(id)aKey;

@end

@interface NSMutableDictionary (DWD)

- (void)dwd_safeSetObject:(id)anObject forKey:(id)aKey;
+ (NSMutableDictionary*)getURLParameters:(NSString *)url;

- (void)dwd_safeRemoveObjectForKey:(id)aKey;

@end
