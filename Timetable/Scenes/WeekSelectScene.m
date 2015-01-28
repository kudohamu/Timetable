//
//  WeekSelectScene.m
//  Timetable
//
//  Created by 裕悟 on 12/11/13.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "WeekSelectScene.h"

@interface WeekSelectScene ()

@end

@implementation WeekSelectScene

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.view.backgroundColor = [UIColor grayColor];
    
    //ユーザーデフォルト読み込み
    NSUserDefaults *userDefaults;
    userDefaults = [NSUserDefaults standardUserDefaults];
    
    WeekArray = [[NSArray alloc] initWithObjects:@"月曜〜金曜",@"月曜〜土曜",@"月曜〜日曜", nil];
    
    //完了ボタン貼り付け
	UIBarButtonItem* Done = [[UIBarButtonItem alloc] initWithTitle:@"完了" style:UIBarButtonItemStyleDone target:self action:@selector(DonePush)];
    
    self.view.backgroundColor = [UIColor scrollViewTexturedBackgroundColor];
    
    self.navigationItem.rightBarButtonItem = Done;
    
    //ピッカーの表示
    picker = [[UIPickerView alloc] init];
    picker.delegate = self;
    picker.dataSource = self;
    picker.showsSelectionIndicator = YES;
    [picker selectRow:[[userDefaults objectForKey:@"WeekNumber"]intValue] inComponent:0 animated:NO];
    [self.view addSubview:picker];
}

//ピッカーの列数
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

//ピッカーの行数
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return 3;
}

//内容の表示
-(NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [WeekArray objectAtIndex:row];
}

-(IBAction)DonePush{
    //ユーザーデフォルト読み込み
    NSUserDefaults *userDefaults;
    userDefaults = [NSUserDefaults standardUserDefaults];
    
        [userDefaults setObject:[NSString stringWithFormat:@"%d",[picker selectedRowInComponent:0]] forKey:@"WeekNumber"];
    
    [userDefaults synchronize];
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
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
