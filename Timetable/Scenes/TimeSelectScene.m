//
//  TimeSelectScene.m
//  Timetable
//
//  Created by 裕悟 on 12/11/11.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "TimeSelectScene.h"
#import "TimeSetScene.h"

@interface TimeSelectScene ()

@end

@implementation TimeSelectScene

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationController.toolbarHidden = YES;

}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //セル選択状態の解除
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    TimeSetScene *timeSetScene = [self.storyboard instantiateViewControllerWithIdentifier:@"timesetscene"];
    
    timeSetScene.selectNumber = (NSNumber*)[NSString stringWithFormat:@"%d",indexPath.row + 1];
    [self.navigationController pushViewController:timeSetScene animated:YES];
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    //基礎となるセルができていなければ作成
    if (nil == cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier];
    }
    
    //ユーザーデフォルト読み込み
    NSUserDefaults *userDefaults;
    userDefaults = [NSUserDefaults standardUserDefaults];
    
    cell.textLabel.text = [@"" stringByAppendingFormat:@"%@（限）",[userDefaults objectForKey:[NSString stringWithFormat:@"TableTime%d", indexPath.row+1]]];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    if (indexPath.row == 0) {
        cell.detailTextLabel.text = [[userDefaults objectForKey:@"1StartTime"] stringByAppendingFormat:@" - %@", [userDefaults objectForKey:@"1EndTime"]];
    }else if (indexPath.row == 1) {
        cell.detailTextLabel.text = [[userDefaults objectForKey:@"2StartTime"] stringByAppendingFormat:@" - %@", [userDefaults objectForKey:@"2EndTime"]];
    }else if (indexPath.row == 2) {
        cell.detailTextLabel.text = [[userDefaults objectForKey:@"3StartTime"] stringByAppendingFormat:@" - %@", [userDefaults objectForKey:@"3EndTime"]];
    }else if (indexPath.row == 3) {
        cell.detailTextLabel.text = [[userDefaults objectForKey:@"4StartTime"] stringByAppendingFormat:@" - %@", [userDefaults objectForKey:@"4EndTime"]];
    }else if (indexPath.row == 4) {
        cell.detailTextLabel.text = [[userDefaults objectForKey:@"5StartTime"] stringByAppendingFormat:@" - %@", [userDefaults objectForKey:@"5EndTime"]];
    }else if (indexPath.row == 5) {
        cell.detailTextLabel.text = [[userDefaults objectForKey:@"6StartTime"] stringByAppendingFormat:@" - %@", [userDefaults objectForKey:@"6EndTime"]];
    }else if (indexPath.row == 6) {
        cell.detailTextLabel.text = [[userDefaults objectForKey:@"7StartTime"] stringByAppendingFormat:@" - %@", [userDefaults objectForKey:@"7EndTime"]];
    }else if (indexPath.row == 7) {
        cell.detailTextLabel.text = [[userDefaults objectForKey:@"8StartTime"] stringByAppendingFormat:@" - %@", [userDefaults objectForKey:@"8EndTime"]];
    }else if (indexPath.row == 8) {
        cell.detailTextLabel.text = [[userDefaults objectForKey:@"9StartTime"] stringByAppendingFormat:@" - %@", [userDefaults objectForKey:@"9EndTime"]];
    }else if (indexPath.row == 9) {
        cell.detailTextLabel.text = [[userDefaults objectForKey:@"10StartTime"] stringByAppendingFormat:@" - %@", [userDefaults objectForKey:@"10EndTime"]];
    }
    
    return cell;
}

-(void)viewWillAppear:(BOOL)animated{
    [self.tableView reloadData];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
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
