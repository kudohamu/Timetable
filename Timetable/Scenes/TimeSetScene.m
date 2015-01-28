//
//  TimeSetScene.m
//  Timetable
//
//  Created by 裕悟 on 12/11/11.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "TimeSetScene.h"

@interface TimeSetScene ()

@end

@implementation TimeSetScene
@synthesize selectNumber;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.navigationController.toolbarHidden = YES;
    
    //ユーザーデフォルト読み込み
    NSUserDefaults *userDefaults;
    userDefaults = [NSUserDefaults standardUserDefaults];
    
    hourArray = [[NSArray alloc] initWithObjects:@"0",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"11",@"12",@"13",@"14",@"15",@"16",@"17",@"18",@"19",@"20",@"21",@"22",@"23", nil];
    
    minuteArray = [[NSArray alloc] initWithObjects:@"00",@"05",@"10",@"15",@"20",@"25",@"30",@"35",@"40",@"45",@"50",@"55", nil];
    
    //完了ボタン貼り付け
	UIBarButtonItem* Done = [[UIBarButtonItem alloc] initWithTitle:@"完了" style:UIBarButtonItemStyleDone target:self action:@selector(DonePush)];
    
    self.view.backgroundColor = [UIColor scrollViewTexturedBackgroundColor];
    
    self.navigationItem.rightBarButtonItem = Done;
    
    //ピッカーの表示
    picker = [[UIPickerView alloc] init];
    picker.delegate = self;
    picker.dataSource = self;
    if ([selectNumber intValue] == 1) {
        [picker selectRow:[[userDefaults objectForKey:@"Start1-1"] intValue] inComponent:0 animated:YES];
        [picker selectRow:[[userDefaults objectForKey:@"Start1-2"] intValue]/5 inComponent:1 animated:YES];
        [picker selectRow:[[userDefaults objectForKey:@"End1-1"] intValue] inComponent:3 animated:YES];
        [picker selectRow:[[userDefaults objectForKey:@"End1-2"] intValue]/5 inComponent:4 animated:YES];
        
    }else if ([selectNumber intValue] == 2) {
        [picker selectRow:[[userDefaults objectForKey:@"Start2-1"] intValue] inComponent:0 animated:YES];
        [picker selectRow:[[userDefaults objectForKey:@"Start2-2"] intValue]/5 inComponent:1 animated:YES];
        [picker selectRow:[[userDefaults objectForKey:@"End2-1"] intValue] inComponent:3 animated:YES];
        [picker selectRow:[[userDefaults objectForKey:@"End2-2"] intValue]/5 inComponent:4 animated:YES];
        
    }else if ([selectNumber intValue] == 3) {
        [picker selectRow:[[userDefaults objectForKey:@"Start3-1"] intValue] inComponent:0 animated:YES];
        [picker selectRow:[[userDefaults objectForKey:@"Start3-2"] intValue]/5 inComponent:1 animated:YES];
        [picker selectRow:[[userDefaults objectForKey:@"End3-1"] intValue] inComponent:3 animated:YES];
        [picker selectRow:[[userDefaults objectForKey:@"End3-2"] intValue]/5 inComponent:4 animated:YES];
        
    }else if ([selectNumber intValue] == 4) {
        [picker selectRow:[[userDefaults objectForKey:@"Start4-1"] intValue] inComponent:0 animated:YES];
        [picker selectRow:[[userDefaults objectForKey:@"Start4-2"] intValue]/5 inComponent:1 animated:YES];
        [picker selectRow:[[userDefaults objectForKey:@"End4-1"] intValue] inComponent:3 animated:YES];
        [picker selectRow:[[userDefaults objectForKey:@"End4-2"] intValue]/5 inComponent:4 animated:YES];
        
    }else if ([selectNumber intValue] == 5) {
        [picker selectRow:[[userDefaults objectForKey:@"Start5-1"] intValue] inComponent:0 animated:YES];
        [picker selectRow:[[userDefaults objectForKey:@"Start5-2"] intValue]/5 inComponent:1 animated:YES];
        [picker selectRow:[[userDefaults objectForKey:@"End5-1"] intValue] inComponent:3 animated:YES];
        [picker selectRow:[[userDefaults objectForKey:@"End5-2"] intValue]/5 inComponent:4 animated:YES];
        
    }else if ([selectNumber intValue] == 6) {
        [picker selectRow:[[userDefaults objectForKey:@"Start6-1"] intValue] inComponent:0 animated:YES];
        [picker selectRow:[[userDefaults objectForKey:@"Start6-2"] intValue]/5 inComponent:1 animated:YES];
        [picker selectRow:[[userDefaults objectForKey:@"End6-1"] intValue] inComponent:3 animated:YES];
        [picker selectRow:[[userDefaults objectForKey:@"End6-2"] intValue]/5 inComponent:4 animated:YES];
        
    }else if ([selectNumber intValue] == 7) {
        [picker selectRow:[[userDefaults objectForKey:@"Start7-1"] intValue] inComponent:0 animated:YES];
        [picker selectRow:[[userDefaults objectForKey:@"Start7-2"] intValue]/5 inComponent:1 animated:YES];
        [picker selectRow:[[userDefaults objectForKey:@"End7-1"] intValue] inComponent:3 animated:YES];
        [picker selectRow:[[userDefaults objectForKey:@"End7-2"] intValue]/5 inComponent:4 animated:YES];
        
    }else if ([selectNumber intValue] == 8) {
        [picker selectRow:[[userDefaults objectForKey:@"Start8-1"] intValue] inComponent:0 animated:YES];
        [picker selectRow:[[userDefaults objectForKey:@"Start8-2"] intValue]/5 inComponent:1 animated:YES];
        [picker selectRow:[[userDefaults objectForKey:@"End8-1"] intValue] inComponent:3 animated:YES];
        [picker selectRow:[[userDefaults objectForKey:@"End8-2"] intValue]/5 inComponent:4 animated:YES];
        
    }else if ([selectNumber intValue] == 9) {
        [picker selectRow:[[userDefaults objectForKey:@"Start9-1"] intValue] inComponent:0 animated:YES];
        [picker selectRow:[[userDefaults objectForKey:@"Start9-2"] intValue]/5 inComponent:1 animated:YES];
        [picker selectRow:[[userDefaults objectForKey:@"End9-1"] intValue] inComponent:3 animated:YES];
        [picker selectRow:[[userDefaults objectForKey:@"End9-2"] intValue]/5 inComponent:4 animated:YES];
        
    }else if ([selectNumber intValue] == 10) {
        [picker selectRow:[[userDefaults objectForKey:@"Start10-1"] intValue] inComponent:0 animated:YES];
        [picker selectRow:[[userDefaults objectForKey:@"Start10-2"] intValue]/5 inComponent:1 animated:YES];
        [picker selectRow:[[userDefaults objectForKey:@"End10-1"] intValue] inComponent:3 animated:YES];
        [picker selectRow:[[userDefaults objectForKey:@"End10-2"] intValue]/5 inComponent:4 animated:YES];
        
    }
    picker.showsSelectionIndicator = YES;
    [self.view addSubview:picker];
        
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 5;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if (component == 0 || component == 3) {
        return 24;
    }else if (component == 2) {
        return 1;
    }else {
        return 12;
    }
}

-(NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if (component == 0 || component == 3) {
        return [hourArray objectAtIndex:row];
    }else if (component == 2) {
        return @"〜";
    }else {
        return [minuteArray objectAtIndex:row];
    }
}

-(IBAction)DonePush{
    //ユーザーデフォルト読み込み
    NSUserDefaults *userDefaults;
    userDefaults = [NSUserDefaults standardUserDefaults];
    
    NSString* sttm;
    NSString* edtm;
    
    sttm = [[hourArray objectAtIndex:[picker selectedRowInComponent:0] ] stringByAppendingFormat:@":%@",[minuteArray objectAtIndex:[picker selectedRowInComponent:1] ]];
    
    edtm = [[hourArray objectAtIndex:[picker selectedRowInComponent:3] ] stringByAppendingFormat:@":%@",[minuteArray objectAtIndex:[picker selectedRowInComponent:4] ]];
    
    if ([selectNumber intValue] == 1) {
        [userDefaults setObject:sttm forKey:@"1StartTime"];
        [userDefaults setObject:edtm forKey:@"1EndTime"];
        [userDefaults setObject:[NSString stringWithFormat:@"%@",[hourArray objectAtIndex:[picker selectedRowInComponent:0]]] forKey:@"Start1-1"];
        [userDefaults setObject:[NSString stringWithFormat:@"%@",[minuteArray objectAtIndex:[picker selectedRowInComponent:1]]] forKey:@"Start1-2"];
        [userDefaults setObject:[NSString stringWithFormat:@"%@",[hourArray objectAtIndex:[picker selectedRowInComponent:3]]] forKey:@"End1-1"];
        [userDefaults setObject:[NSString stringWithFormat:@"%@",[minuteArray objectAtIndex:[picker selectedRowInComponent:4]]] forKey:@"End1-2"];
    }else if ([selectNumber intValue] == 2) {
        [userDefaults setObject:sttm forKey:@"2StartTime"];
        [userDefaults setObject:edtm forKey:@"2EndTime"];
        [userDefaults setObject:[NSString stringWithFormat:@"%@",[hourArray objectAtIndex:[picker selectedRowInComponent:0]]] forKey:@"Start2-1"];
        [userDefaults setObject:[NSString stringWithFormat:@"%@",[minuteArray objectAtIndex:[picker selectedRowInComponent:1]]] forKey:@"Start2-2"];
        [userDefaults setObject:[NSString stringWithFormat:@"%@",[hourArray objectAtIndex:[picker selectedRowInComponent:3]]] forKey:@"End2-1"];
        [userDefaults setObject:[NSString stringWithFormat:@"%@",[minuteArray objectAtIndex:[picker selectedRowInComponent:4]]] forKey:@"End2-2"];
    }else if ([selectNumber intValue] == 3) {
        [userDefaults setObject:sttm forKey:@"3StartTime"];
        [userDefaults setObject:edtm forKey:@"3EndTime"];
        [userDefaults setObject:[NSString stringWithFormat:@"%@",[hourArray objectAtIndex:[picker selectedRowInComponent:0]]] forKey:@"Start3-1"];
        [userDefaults setObject:[NSString stringWithFormat:@"%@",[minuteArray objectAtIndex:[picker selectedRowInComponent:1]]] forKey:@"Start3-2"];
        [userDefaults setObject:[NSString stringWithFormat:@"%@",[hourArray objectAtIndex:[picker selectedRowInComponent:3]]] forKey:@"End3-1"];
        [userDefaults setObject:[NSString stringWithFormat:@"%@",[minuteArray objectAtIndex:[picker selectedRowInComponent:4]]] forKey:@"End3-2"];
    }else if ([selectNumber intValue] == 4) {
        [userDefaults setObject:sttm forKey:@"4StartTime"];
        [userDefaults setObject:edtm forKey:@"4EndTime"];
        [userDefaults setObject:[NSString stringWithFormat:@"%@",[hourArray objectAtIndex:[picker selectedRowInComponent:0]]] forKey:@"Start4-1"];
        [userDefaults setObject:[NSString stringWithFormat:@"%@",[minuteArray objectAtIndex:[picker selectedRowInComponent:1]]] forKey:@"Start4-2"];
        [userDefaults setObject:[NSString stringWithFormat:@"%@",[hourArray objectAtIndex:[picker selectedRowInComponent:3]]] forKey:@"End4-1"];
        [userDefaults setObject:[NSString stringWithFormat:@"%@",[minuteArray objectAtIndex:[picker selectedRowInComponent:4]]] forKey:@"End4-2"];
    }else if ([selectNumber intValue] == 5) {
        [userDefaults setObject:sttm forKey:@"5StartTime"];
        [userDefaults setObject:edtm forKey:@"5EndTime"];
        [userDefaults setObject:[NSString stringWithFormat:@"%@",[hourArray objectAtIndex:[picker selectedRowInComponent:0]]] forKey:@"Start5-1"];
        [userDefaults setObject:[NSString stringWithFormat:@"%@",[minuteArray objectAtIndex:[picker selectedRowInComponent:1]]] forKey:@"Start5-2"];
        [userDefaults setObject:[NSString stringWithFormat:@"%@",[hourArray objectAtIndex:[picker selectedRowInComponent:3]]] forKey:@"End5-1"];
        [userDefaults setObject:[NSString stringWithFormat:@"%@",[minuteArray objectAtIndex:[picker selectedRowInComponent:4]]] forKey:@"End5-2"];
    }else if ([selectNumber intValue] == 6) {
        [userDefaults setObject:sttm forKey:@"6StartTime"];
        [userDefaults setObject:edtm forKey:@"6EndTime"];
        [userDefaults setObject:[NSString stringWithFormat:@"%@",[hourArray objectAtIndex:[picker selectedRowInComponent:0]]] forKey:@"Start6-1"];
        [userDefaults setObject:[NSString stringWithFormat:@"%@",[minuteArray objectAtIndex:[picker selectedRowInComponent:1]]] forKey:@"Start6-2"];
        [userDefaults setObject:[NSString stringWithFormat:@"%@",[hourArray objectAtIndex:[picker selectedRowInComponent:3]]] forKey:@"End6-1"];
        [userDefaults setObject:[NSString stringWithFormat:@"%@",[minuteArray objectAtIndex:[picker selectedRowInComponent:4]]] forKey:@"End6-2"];
    }else if ([selectNumber intValue] == 7) {
        [userDefaults setObject:sttm forKey:@"7StartTime"];
        [userDefaults setObject:edtm forKey:@"7EndTime"];
        [userDefaults setObject:[NSString stringWithFormat:@"%@",[hourArray objectAtIndex:[picker selectedRowInComponent:0]]] forKey:@"Start7-1"];
        [userDefaults setObject:[NSString stringWithFormat:@"%@",[minuteArray objectAtIndex:[picker selectedRowInComponent:1]]] forKey:@"Start7-2"];
        [userDefaults setObject:[NSString stringWithFormat:@"%@",[hourArray objectAtIndex:[picker selectedRowInComponent:3]]] forKey:@"End7-1"];
        [userDefaults setObject:[NSString stringWithFormat:@"%@",[minuteArray objectAtIndex:[picker selectedRowInComponent:4]]] forKey:@"End7-2"];
    }else if ([selectNumber intValue] == 8) {
        [userDefaults setObject:sttm forKey:@"8StartTime"];
        [userDefaults setObject:edtm forKey:@"8EndTime"];
        [userDefaults setObject:[NSString stringWithFormat:@"%@",[hourArray objectAtIndex:[picker selectedRowInComponent:0]]] forKey:@"Start8-1"];
        [userDefaults setObject:[NSString stringWithFormat:@"%@",[minuteArray objectAtIndex:[picker selectedRowInComponent:1]]] forKey:@"Start8-2"];
        [userDefaults setObject:[NSString stringWithFormat:@"%@",[hourArray objectAtIndex:[picker selectedRowInComponent:3]]] forKey:@"End8-1"];
        [userDefaults setObject:[NSString stringWithFormat:@"%@",[minuteArray objectAtIndex:[picker selectedRowInComponent:4]]] forKey:@"End8-2"];
    }else if ([selectNumber intValue] == 9) {
        [userDefaults setObject:sttm forKey:@"9StartTime"];
        [userDefaults setObject:edtm forKey:@"9EndTime"];
        [userDefaults setObject:[NSString stringWithFormat:@"%@",[hourArray objectAtIndex:[picker selectedRowInComponent:0]]] forKey:@"Start9-1"];
        [userDefaults setObject:[NSString stringWithFormat:@"%@",[minuteArray objectAtIndex:[picker selectedRowInComponent:1]]] forKey:@"Start9-2"];
        [userDefaults setObject:[NSString stringWithFormat:@"%@",[hourArray objectAtIndex:[picker selectedRowInComponent:3]]] forKey:@"End9-1"];
        [userDefaults setObject:[NSString stringWithFormat:@"%@",[minuteArray objectAtIndex:[picker selectedRowInComponent:4]]] forKey:@"End9-2"];
    }else if ([selectNumber intValue] == 10) {
        [userDefaults setObject:sttm forKey:@"10StartTime"];
        [userDefaults setObject:edtm forKey:@"10EndTime"];
        [userDefaults setObject:[NSString stringWithFormat:@"%@",[hourArray objectAtIndex:[picker selectedRowInComponent:0]]] forKey:@"Start10-1"];
        [userDefaults setObject:[NSString stringWithFormat:@"%@",[minuteArray objectAtIndex:[picker selectedRowInComponent:1]]] forKey:@"Start10-2"];
        [userDefaults setObject:[NSString stringWithFormat:@"%@",[hourArray objectAtIndex:[picker selectedRowInComponent:3]]] forKey:@"End10-1"];
        [userDefaults setObject:[NSString stringWithFormat:@"%@",[minuteArray objectAtIndex:[picker selectedRowInComponent:4]]] forKey:@"End10-2"];
    }
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
