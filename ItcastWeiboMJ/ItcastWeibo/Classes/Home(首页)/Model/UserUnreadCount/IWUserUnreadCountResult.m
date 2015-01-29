//
//  IWUserUnreadCountResult.m
//  ItcastWeibo
//
//  Created by apple on 14-5-20.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "IWUserUnreadCountResult.h"

@implementation IWUserUnreadCountResult
- (int)messageCount
{
    return self.cmt + self.mention_cmt + self.mention_status + self.dm;
}

- (int)count
{
    return self.messageCount + self.status + self.follower;
}
@end
