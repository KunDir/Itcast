//
//  IWGeneralViewController.m
//  示例-ItcastWeibo
//
//  Created by MJ Lee on 14-5-4.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "IWGeneralViewController.h"
#import "IWSettingArrowItem.h"
#import "IWSettingSwitchItem.h"
#import "IWSettingGroup.h"


@interface IWGeneralViewController ()

@end

@implementation IWGeneralViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setupGroup0];
    [self setupGroup1];
    [self setupGroup2];
    [self setupGroup3];
    [self setupGroup4];
}

- (void)setupGroup0
{
    IWSettingGroup *group = [self addGroup];
    
    IWSettingArrowItem *read = [IWSettingArrowItem itemWithTitle:@"阅读模式" destVcClass:nil];
   
    
    IWSettingArrowItem *font = [IWSettingArrowItem itemWithTitle:@"字号大小" destVcClass:nil];
    
    IWSettingSwitchItem *mark = [IWSettingSwitchItem itemWithTitle:@"显示备注"];
    
    group.items = @[read, font, mark];
}

- (void)setupGroup1
{
    IWSettingGroup *group = [self addGroup];
    
    IWSettingArrowItem *picture = [IWSettingArrowItem itemWithTitle:@"图片质量设置" destVcClass:nil];
    group.items = @[picture];
}

- (void)setupGroup2
{
    IWSettingGroup *group = [self addGroup];
    
    IWSettingSwitchItem *voice = [IWSettingSwitchItem itemWithTitle:@"声音"];
    group.items = @[voice];
}

- (void)setupGroup3
{
    IWSettingGroup *group = [self addGroup];
    
    IWSettingSwitchItem *language = [IWSettingSwitchItem itemWithTitle:@"多语言环境"];
    
    group.items = @[language];
}

- (void)setupGroup4
{
    IWSettingGroup *group = [self addGroup];
    
    IWSettingArrowItem *clearCache = [IWSettingArrowItem itemWithTitle:@"清除图片缓存"];
    IWSettingArrowItem *clearHistory = [IWSettingArrowItem itemWithTitle:@"清空搜索历史"];
    group.items = @[clearCache, clearHistory];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self.tableView reloadData];
}

@end
