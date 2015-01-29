//
//  IWSettingSwitchItem.h
//  示例-ItcastWeibo
//
//  Created by MJ Lee on 14-5-4.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "IWSettingItem.h"

@interface IWSettingSwitchItem : IWSettingItem
@property (assign, nonatomic, getter = isDefaultOn) BOOL defaultOn;
@end