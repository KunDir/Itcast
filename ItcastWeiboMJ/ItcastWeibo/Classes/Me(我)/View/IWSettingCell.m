//
//  IWSettingCell.m
//  ItcastWeibo
//
//  Created by kun on 15/1/29.
//  Copyright (c) 2015年 itcast. All rights reserved.
//

#import "IWSettingCell.h"
#import "IWSettingItem.h"
#import "IWSettingArrowItem.h"
#import "IWSettingLabelItem.h"
#import "IWSettingSwitchItem.h"
#import "IWBadgeButton.h"

@interface IWSettingCell ()

@property (nonatomic, strong) UIImageView *arrowView;

@property (nonatomic, strong) UISwitch *switchView;

@property (nonatomic, strong) IWBadgeButton *badgeButton;

@end

@implementation IWSettingCell

- (UISwitch *)switchView
{
    if(_switchView == nil)
    {
        _switchView = [[UISwitch alloc] init];
//        [_switchView addTarget:self action:@selector(switchChange) forControlEvents:UIControlEventValueChanged];
    }
    return _switchView;
}

- (UIImageView *)arrowView
{
    if(_arrowView == nil)
    {
        _arrowView = [[UIImageView alloc] initWithImage:[UIImage imageWithName:@"common_icon_arrow"]];
    }
    return _arrowView;
}

- (IWBadgeButton *)badgeButton
{
    if(_badgeButton == nil)
    {
        _badgeButton = [[IWBadgeButton alloc] init];
    }
    return _badgeButton;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString *ID = @"setting";
    IWSettingCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if(cell == nil)
    {
        cell = [[IWSettingCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    return cell;
}

- (void)setItem:(IWSettingItem *)item
{
    _item = item;
    
    // 设置数据
    [self setupData];
    
    // 设置右边的控件
    [self setupRightView];
}

- (void)setupData
{
    // 1.图标
    if(self.item.icon)
    {
        self.imageView.image = [UIImage imageWithName:self.item.icon];
    }
    
    // 2.标题
    self.textLabel.text = self.item.title;
}

- (void)setupRightView
{
    if(self.item.badgeValue)
    {
        self.badgeButton.badgeValue = self.item.badgeValue;
        self.accessoryView = self.badgeButton;
    }
    else if([self.item isKindOfClass:[IWSettingSwitchItem class]])
    {
        // 右边是开关
//        IWSettingSwitchItem *switchItem = (IWSettingSwitchItem *)self.item;
        self.accessoryView = self.switchView;
    }
    else if ([self.item isKindOfClass:[IWSettingArrowItem class]])
    {
        // 右边是箭头
        self.accessoryView = self.arrowView;
    }
    else
    {
        // 右边没有东西
        self.accessoryView = nil;
    }
}

@end
