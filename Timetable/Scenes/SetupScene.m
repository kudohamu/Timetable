//
//  SetupScene.m
//  Timetable
//
//  Created by 裕悟 on 12/11/07.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "SetupScene.h"
#import "TimeSelectScene.h"
#import "TableSelectScene.h"
#import "WeekSelectScene.h"
#import "ChangeTableTimeScene.h"
#import "NotifySetScene.h"
#import "AllorIndividual.h"
#import "AAMFeedbackViewController.h"

@interface SetupScene ()

@end

@implementation SetupScene

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationController.navigationBarHidden = NO;
    self.navigationController.toolbarHidden = YES;

}

-(void)viewWillAppear:(BOOL)animated{
    [self.tableView reloadData];
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 5;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return 4;
    }else if (section == 1) {
        return 1;
    }else if (section == 2) {
        return 2;
    }else if (section == 3) {
        return 1;
    }else {
        return 4;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    //基礎となるセルができていなければ作成
    if (nil == cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier];
    }
    
    cell.imageView.image = [UIImage imageNamed:@""];
    
    //ユーザーデフォルト読み込み
    NSUserDefaults *userDefaults;
    userDefaults = [NSUserDefaults standardUserDefaults];
    
    if(indexPath.section == 0){
        cell.selectionStyle = UITableViewCellSelectionStyleBlue;
        if (indexPath.row == 0) {
            cell.textLabel.text = @"時刻設定";
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        }else if (indexPath.row == 1) {
            cell.textLabel.text = @"表示する時限数";
            cell.detailTextLabel.text = [[userDefaults objectForKey:@"TableNumber"] stringByAppendingFormat:@"限まで"];
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        }else if (indexPath.row == 2) {
            cell.textLabel.text = @"表示する曜日数";
            if ([[userDefaults objectForKey:@"WeekNumber"] intValue] == 0) {
                cell.detailTextLabel.text = @"月曜〜金曜まで";
            }else if ([[userDefaults objectForKey:@"WeekNumber"] intValue] == 1) {
                cell.detailTextLabel.text = @"月曜〜土曜まで";
            }else {
                cell.detailTextLabel.text = @"月曜〜日曜まで";
            }
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        }else if (indexPath.row == 3) {
            cell.textLabel.text = @"時限名変更";
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        }
        
    }else if (indexPath.section == 1) {
        cell.textLabel.text = @"";
        cell.textLabel.backgroundColor = [UIColor blackColor];
        cell.backgroundColor = [UIColor blackColor];
        NSArray *FirstOrSeconds = [[NSArray alloc] initWithObjects:@"前期",@"後期", nil];
        
        UISegmentedControl *segment = [[UISegmentedControl alloc] initWithItems:FirstOrSeconds];
        if ([[userDefaults objectForKey:@"FirstOrSecond"] intValue] == 0) {
            segment.selectedSegmentIndex = 0;
        }else {
            segment.selectedSegmentIndex = 1;
        }
        segment.frame = CGRectMake(10, 165+44, 300, 44);
        segment.segmentedControlStyle = UISegmentedControlStyleBar;
        segment.tintColor = [UIColor grayColor];
        [segment addTarget:self action:@selector(segmentDidChange:) forControlEvents:UIControlEventValueChanged];
        [self.view addSubview:segment];
        
    }else if (indexPath.section == 2) {
        if (indexPath.row == 0) {
            cell.textLabel.text = @"課題通知機能";
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            
            switch_ = [[UISwitch alloc] init];
            switch_.center = CGPointMake(262, 254+44);
            //デフォルトの選択
            if ([[userDefaults objectForKey:@"NotificationOn"] intValue] == 0) {
                switch_.on = YES;
            }else {
                switch_.on = NO;
            }
            
            [switch_ addTarget:self action:@selector(switchDidChange) forControlEvents:UIControlEventValueChanged];
            [self.view addSubview:switch_];
        }else {
            cell.textLabel.text = @"課題通知時間";
            cell.detailTextLabel.text = [@"(前日の)" stringByAppendingFormat:@"%@",[[userDefaults objectForKey:@"NotificationTime"] stringByAppendingFormat:@"時"]];
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        }
    }else if (indexPath.section == 3) {
        cell.textLabel.text = @"背景画像選択";
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }else if (indexPath.section == 4) {
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.detailTextLabel.text = @"";
        cell.accessoryType = UITableViewCellAccessoryNone;
        if (indexPath.row == 0) {
            cell.textLabel.text = @"アプリ名：多機能時間割";
        }else if (indexPath.row == 1) {
            cell.textLabel.text = @"Version：2.0.1";
        }else if(indexPath.row == 2) {
            cell.textLabel.text = @"開発元：KDHM.lab";
        }else if(indexPath.row == 3) {
            cell.selectionStyle = UITableViewCellSelectionStyleBlue;
            cell.textLabel.text = @"開発者に連絡";
            cell.imageView.image = [UIImage imageNamed:@"mail.jpg"];
        }
    }

    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //セル選択状態の解除
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            TimeSelectScene* timeSelectScene = [self.storyboard instantiateViewControllerWithIdentifier:@"timeselectscene"];
            [self.navigationController pushViewController:timeSelectScene animated:YES];
        }else if (indexPath.row == 1) {
            TableSelectScene *tableSelectScene = [self.storyboard instantiateViewControllerWithIdentifier:@"tableselectscene"];
            [self.navigationController pushViewController:tableSelectScene animated:YES];
        }else if (indexPath.row == 2) {
            WeekSelectScene *weekSelectScene = [self.storyboard instantiateViewControllerWithIdentifier:@"weekselectscene"];
            [self.navigationController pushViewController:weekSelectScene animated:YES];
        }else if (indexPath.row == 3) {
            ChangeTableTimeScene *changeTableTimeScene = [self.storyboard instantiateViewControllerWithIdentifier:@"changetabletimescene"];
            [self.navigationController pushViewController:changeTableTimeScene animated:YES];
        }
    }else if (indexPath.section == 2) {
        if (indexPath.row == 1) {
            NotifySetScene *notifySetScene = [self.storyboard instantiateViewControllerWithIdentifier:@"notifysetscene"];
            [self.navigationController pushViewController:notifySetScene animated:YES];
        }
    }else if (indexPath.section == 3) {
        AllorIndividual *allorIndividual = [self.storyboard instantiateViewControllerWithIdentifier:@"allorindividual"];
        [self.navigationController pushViewController:allorIndividual animated:YES];
    }else if (indexPath.section == 4) {
        if (indexPath.row == 3) {
            AAMFeedbackViewController *vc = [[AAMFeedbackViewController alloc]init];
            vc.toRecipients = [NSArray arrayWithObject:@"kdhm_app_feedback@yahoo.co.jp"];
            vc.ccRecipients = nil;
            vc.bccRecipients = nil;
            UINavigationController *nvc = [[UINavigationController alloc]initWithRootViewController:vc];
            [self presentViewController:nvc animated:YES completion:nil];
        }
    }
    
}

-(void)segmentDidChange:(id)sender{
    //ユーザーデフォルト読み込み
    NSUserDefaults *userDefaults;
    userDefaults = [NSUserDefaults standardUserDefaults];
    
    if ([sender isKindOfClass:[UISegmentedControl class]]) {
        UISegmentedControl *segment = sender;
        if (segment.selectedSegmentIndex == 0) {
            [userDefaults setObject:@"0" forKey:@"FirstOrSecond"];
        }else {
            [userDefaults setObject:@"1" forKey:@"FirstOrSecond"];
        }
    }
}

-(void)switchDidChange{
    //ユーザーデフォルト読み込み
    NSUserDefaults *userDefaults;
    userDefaults = [NSUserDefaults standardUserDefaults];
    
    if (switch_.on) {
        [userDefaults setObject:@"0" forKey:@"NotificationOn"];
    }else {
        [userDefaults setObject:@"1" forKey:@"NotificationOn"];
        //ローカル通知をすべて取り消し
        [[UIApplication sharedApplication] cancelAllLocalNotifications];
    }
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(BOOL)shouldAutorotate{
    return NO;
}

-(NSUInteger)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskPortrait;
}

@end
