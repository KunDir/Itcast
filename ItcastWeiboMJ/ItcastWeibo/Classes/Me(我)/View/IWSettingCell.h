//
//  IWSettingCell.h
//  ItcastWeibo
//
//  Created by kun on 15/1/29.
//  Copyright (c) 2015年 itcast. All rights reserved.
//

#import <UIKit/UIKit.h>
@class IWSettingItem;

@interface IWSettingCell : UITableViewCell
@property (nonatomic, strong) IWSettingItem *item;

+ (instancetype)cellWithTableView:(UITableView *)tableView;
@end
