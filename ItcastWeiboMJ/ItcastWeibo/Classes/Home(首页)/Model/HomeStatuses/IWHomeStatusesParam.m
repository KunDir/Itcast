//
//  IWHomeStatusesParam.m
//  ItcastWeibo
//
//  Created by apple on 14-5-20.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "IWHomeStatusesParam.h"

@implementation IWHomeStatusesParam
- (NSNumber *)count
{
    return _count ? _count : @20;
}
@end
