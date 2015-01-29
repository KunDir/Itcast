//
//  IWUserUnreadCountParam.h
//  ItcastWeibo
//
//  Created by apple on 14-5-20.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "IWBaseParam.h"

@interface IWUserUnreadCountParam : IWBaseParam
/**
 *  需要查询的用户ID。
 */
@property (nonatomic, strong) NSNumber *uid;
@end
