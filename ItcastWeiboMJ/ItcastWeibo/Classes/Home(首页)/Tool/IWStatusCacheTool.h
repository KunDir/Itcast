//
//  IWStatusCacheTool.h
//  ItcastWeibo
//
//  Created by apple on 14-5-23.
//  Copyright (c) 2014年 itcast. All rights reserved.
//  管理微博的缓存数据

#import <Foundation/Foundation.h>
#import "IWHomeStatusesParam.h"
@class IWStatus;

@interface IWStatusCacheTool : NSObject

/**
 *  缓存一条微博
 *
 *  @param status 需要缓存的微博数据
 */
+ (void)addStatus:(IWStatus *)status;

/**
 *  缓存N条微博
 *
 *  @param statusArray 需要缓存的微博数据
 */
+ (void)addStatuses:(NSArray *)statusArray;

/**
 *  根据请求参数获得微博数据
 *
 *  @param param 请求参数
 *
 *  @return 模型数组
 */
+ (NSArray *)statuesWithParam:(IWHomeStatusesParam *)param;
@end
