//
//  ZYWeexViewController.m
//  ZYFood_iPhone
//
//  Created by 左晓峰 on 2018/7/5.
//  Copyright © 2018年 zxfmpy. All rights reserved.
//

#import "ZYWeexViewController.h"
#import <WeexSDK/WeexSDK.h>

@import MMComonCompontFramework;

@interface ZYWeexViewController ()
@property (nonatomic, strong) UIView *weexView;
@property (nonatomic, strong) NSURL *sourceURL;
@end

@implementation ZYWeexViewController {
    WXSDKInstance *_instance;
}

- (void)dealloc {
    [_instance destroyInstance];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self _renderWithURL:self.sourceURL];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(10, 40, 100, 40);
    [btn setTitle:@"back" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor blueColor]];
    [btn addTarget:self action:@selector(popAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)popAction:(UIButton *)sender{
    [self.navigationController popViewControllerAnimated:YES];
}

- (instancetype)initWithSourceURL:(NSURL *)sourceURL
{
    return [self initWithSourceURL:sourceURL Params:nil];
}

- (instancetype)initWithSourceURL:(NSURL *)sourceURL Params:(NSDictionary *)params
{
    if ((self = [super init])) {
        self.sourceURL = sourceURL;
        self.hidesBottomBarWhenPushed = YES;
        if (params && [params allKeys].count) {
            [self configureParamsUrlTag:params];
        }
    }
    return self;
}

- (void)configureParamsUrlTag:(NSDictionary *)params
{
    NSString *params_url_string = @"";
    
    for (NSString *key in [params allKeys]) {
        if ([params[key] isKindOfClass:[NSString class]]
            || [params[key] isKindOfClass:[NSNumber class]]
            || [params[key] isKindOfClass:[NSArray class]]
            || [params[key] isKindOfClass:[NSDictionary class]]) {
            NSString *lastTagString = [[[params allKeys] lastObject] isEqualToString:key] ? @"" : @"&";
            params_url_string = [NSString stringWithFormat:@"%@%@=%@%@", params_url_string, key, params[key], lastTagString];
        }
    }
    
    if (params_url_string.length) {
        params_url_string = [params_url_string stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
        _sourceURL = [NSURL URLWithString:[NSString stringWithFormat:@"%@?%@", [_sourceURL absoluteString], params_url_string]];
    }
}

- (void)_renderWithURL:(NSURL *)sourceURL
{
    if (!sourceURL) {
        return;
    }
    
    [_instance destroyInstance];
    _instance = [[WXSDKInstance alloc] init];
    _instance.frame = CGRectMake(0.0f, [self navHeight], self.view.bounds.size.width, self.view.bounds.size.height-[self navHeight]);
    _instance.pageObject = self;
    _instance.pageName = [[WXUtility urlByDeletingParameters:sourceURL] absoluteString];
    _instance.viewController = self;
    
//    NSString *newURL = [sourceURL.absoluteString URLDecodedString];
//    NSMutableString *baseUrl=[NSMutableString stringWithFormat:@"%@?random=%d",[[newURL componentsSeparatedByString:@"?"] firstObject],arc4random()];
//    NSMutableDictionary *parameters = [NSMutableDictionary getURLParameters:newURL];
//    [parameters enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
//        [baseUrl appendFormat:@"&%@=%@",key,[obj URLEncodedString]];
//        
//    }];
//    
//    [_instance renderWithURL:[NSURL URLWithString:baseUrl] options:@{@"bundleUrl":[sourceURL.absoluteString URLDecodedString]} data:nil];
    
    __weak typeof(self) weakSelf = self;
    _instance.onCreate = ^(UIView *view) {
        [weakSelf.weexView removeFromSuperview];
        weakSelf.weexView = view;
        [weakSelf.view addSubview:weakSelf.weexView];
    };
    
    _instance.onFailed = ^(NSError *error) {
        
    };
    
    _instance.renderFinish = ^(UIView *view) {
        
    };
}

- (CGFloat)navHeight
{
//    if ([UIDevice isRunningOniPhoneX]) {
//        return 88;
//    }else {
        return 64;
//    }
}

@end
