//
//  IWAccountTool.h
//  ItcastWeibo
//
//  Created by apple on 14-5-8.
//  Copyright (c) 2014年 itcast. All rights reserved.
//  账号管理工具类

#import <Foundation/Foundation.h>
#import "IWAccessTokenParam.h"
#import "IWAccessTokenResult.h"
@class IWAccount;

@interface IWAccountTool : NSObject
/**
 *  存储账号信息
 *
 *  @param account 需要存储的账号
 */
+ (void)saveAccount:(IWAccount *)account;

/**
 *  返回存储的账号信息
 */
+ (IWAccount *)account;

/**
 *  获得accessToken
 *
 *  @param param   请求参数
 *  @param success 请求成功后的回调
 *  @param failure 请求失败后的回调
 */
+ (void)accessTokenWithParam:(IWAccessTokenParam *)param success:(void (^)(IWAccessTokenResult *result))success failure:(void (^)(NSError *error))failure;

@end
