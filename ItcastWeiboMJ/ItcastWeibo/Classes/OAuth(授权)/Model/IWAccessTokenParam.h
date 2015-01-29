//
//  IWAccessTokenParam.h
//  ItcastWeibo
//
//  Created by apple on 14-5-23.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IWAccessTokenParam : NSObject
@property (nonatomic, copy) NSString *client_id;
@property (nonatomic, copy) NSString *client_secret;
@property (nonatomic, copy) NSString *grant_type;
@property (nonatomic, copy) NSString *code;
@property (nonatomic, copy) NSString *redirect_uri;
@end
