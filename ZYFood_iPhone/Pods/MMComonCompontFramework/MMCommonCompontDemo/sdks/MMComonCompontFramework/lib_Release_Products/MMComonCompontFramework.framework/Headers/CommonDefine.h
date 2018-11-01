//
//  CommonDefine.h
//  ZYFood-iPhone
//
//  Created by 左晓峰 on 15/10/19.
//  Copyright © 2015年 zxfmpy. All rights reserved.
//

#ifndef CommonDefine_h
#define CommonDefine_h

const static int intWhite       = 0xf5f5f5;
const static int intGray        = 0x999999;



#define IS_IPHONE ((int)(MAX([UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)) == 480)
#define IS_IPHONE5 ((int)(MAX([UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)) == 568)
#define IS_IPHONE6 ((int)(MAX([UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)) == 667)
#define IS_IPHONE6PLUS ((int)(MAX([UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)) == 736)
#define IS_IPHONEX (CGSizeEqualToSize(CGSizeMake(375.f, 812.f), [UIScreen mainScreen].bounds.size) || CGSizeEqualToSize(CGSizeMake(812.f, 375.f), [UIScreen mainScreen].bounds.size))

#define KUpdateTableView @"KUpdateTableView"
#define kTagBtn 100

//kAppFont

#ifdef DEBUG

#else

#endif

#define kAppFontSize 14


#define SCREEN_WIDTH [[UIScreen mainScreen] bounds].size.width
#define SCREEN_HEIGHT [[UIScreen mainScreen] bounds].size.height

//color from rgb
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#define UI_COLOR_RGB(r,g,b) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:1.0f]
#define UI_COLOR_RGBA(r,g,b,a) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]

#define UI_COLOR_RANDOM [UIColor colorWithHue:( arc4random() % 256 / 256.0 ) saturation:(( arc4random() % 128 / 256.0 ) + 0.5) brightness:(( arc4random() % 128 / 256.0 ) + 0.5) alpha:1]


//--常用颜色
#define kAppThemeGreenColor [UIColor colorWithRed:0.03f green:0.73f blue:0.03f alpha:1.00f]
#define kWhiteColor UIColorFromRGB(intWhite)
#define kGrayColor UIColorFromRGB(intGray)

#define kFoodColor [UIColor colorWithRed:0.16f green:0.17f blue:0.21f alpha:1.00f]

//系统类型
#define IOS7 ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0f)
#define IOS8 ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0f)

#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self;

// Valid define.
#define VALID_STRING(string) ((string) && ([(string) isKindOfClass:[NSString class]]) && ([(string) length] > 0))
#define VALID_ARRAY(array) ((array) && ([(array) isKindOfClass:[NSArray class]]) && ([(array) count] > 0))
#define VALID_DICTIONARY(dictionary) ((dictionary) && ([(dictionary) isKindOfClass:[NSDictionary class]]) && ([(dictionary) count] > 0))


#define single_interface(class)  + (class *)shared##class;

#define single_implementation(class) \
static class *_instance; \
\
+ (class *)shared##class \
{ \
if (_instance == nil) { \
_instance = [[self alloc] init]; \
} \
return _instance; \
} \
\
+ (id)allocWithZone:(NSZone *)zone \
{ \
static dispatch_once_t onceToken; \
dispatch_once(&onceToken, ^{ \
_instance = [super allocWithZone:zone]; \
}); \
return _instance; \
}


#endif /* CommonDefine_h */
