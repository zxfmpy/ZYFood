//
//  ZYMapWeexComponent.m
//  ZYFood_iPhone
//
//  Created by 左晓峰 on 2018/7/5.
//  Copyright © 2018年 zxfmpy. All rights reserved.
//

#import "ZYMapWeexComponent.h"
#import <MapKit/MapKit.h>
#import <WeexSDK/WeexSDK.h>

@interface ZYMapWeexComponent()<MKMapViewDelegate>
@end

@implementation ZYMapWeexComponent
{
    BOOL _mapLoaded;
}
WX_EXPORT_METHOD(@selector(focus)) // 暴露该方法给js

- (void)dealloc{
    [self removeEvent:@"mapLoaded"];
}

- (instancetype)initWithRef:(NSString *)ref type:(NSString *)type styles:(NSDictionary *)styles attributes:(NSDictionary *)attributes events:(NSArray *)events weexInstance:(WXSDKInstance *)weexInstance
{
    if (self = [super initWithRef:ref type:type styles:styles attributes:attributes events:events weexInstance:weexInstance]) {
        // handle your attributes
        // handle your styles
    }
    
    return self;
}


- (UIView *)loadView {
    return [MKMapView new];
}

- (void)viewDidLoad {
    ((MKMapView*)self.view).delegate = self;
}

- (void)addEvent:(NSString *)eventName {
    if ([eventName isEqualToString:@"mapLoaded"]) {
        _mapLoaded = YES;
    }
}

- (void)removeEvent:(NSString *)eventName
{
    if ([eventName isEqualToString:@"mapLoaded"]) {
        _mapLoaded = NO;
    }
}

- (void)mapViewDidFinishLoadingMap:(MKMapView *)mapView {
    if (_mapLoaded) {
        [self fireEvent:@"mapLoaded" params:@{@"customKey":@"customValue"} domChanges:nil];
    }
}

//js回调
- (void)focus
{
    NSLog(@"you got it");
}

@end
