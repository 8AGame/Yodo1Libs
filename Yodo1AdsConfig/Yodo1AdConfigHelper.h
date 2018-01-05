//
//  Yodo1AdConfigHelper.h
//
//  Created by yixian huang on 2017/8/10.
//
//

#ifndef InterstitialHelper_h
#define InterstitialHelper_h
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, Yodo1ConfigType) {
    Yodo1ConfigTypeBanner,
    Yodo1ConfigTypeInterstitial,
    Yodo1ConfigTypeVideo
};

@interface Yodo1AdConfigHelper : NSObject

+ (id)instance;

///在线参数是否开启有效
- (BOOL)isAdEableWithType:(Yodo1ConfigType)type;

///是否已经初始化完
- (BOOL)isUpdated;

///在线参数是否已经配置有数据
- (BOOL)isOnlineParamsEableWithType:(Yodo1ConfigType)type;

///根据平台定义的键（key）和类型去获取值(value)
- (NSString*)appIdWithPlatform:(NSString*)platformKey configType:(Yodo1ConfigType)type;

///根据广告平台和类型去获取广告平台的占有比值
- (NSString*)percentWithPlatform:(NSString*)platform configType:(Yodo1ConfigType)type;

///获取权重数组
- (NSArray*)configWeightWithType:(Yodo1ConfigType)type;

///获取具体语言区域里的具体在线参数值
- (NSString*)configValueWithType:(NSString*)name configType:(Yodo1ConfigType)type;

///和JSONObjectWithString 方法成对出现
+ (NSString*)stringWithJSONObject:(id)obj error:(NSError**)error;

///和stringWithJSONObject 方法成对出现
+ (id)JSONObjectWithString:(NSString*)str error:(NSError**)error;

- (void)setLogEnable:(BOOL)enable;

- (BOOL)adsLogEnbale;

- (void)setAdsLog:(NSString*)log;

- (void)cleanAdsLog;

- (NSString*)adsLog;

@end

NS_ASSUME_NONNULL_END

#endif /* InterstitialHelper_h */