//
//  TableSelectScene.m
//  Timetable
//
//  Created by 裕悟 on 12/11/13.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "TableSelectScene.h"

@interface TableSelectScene ()

@end

@implementation TableSelectScene

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
    //ユーザーデフォルト読み込み
    NSUserDefaults *userDefaults;
    userDefaults = [NSUserDefaults standardUserDefaults];
    
	self.view.backgroundColor = [UIColor grayColor];
    
    TableArray = [[NSArray alloc] initWithObjects:@"5限まで",@"6限まで",@"7限まで",@"8限まで",@"9限まで",@"10限まで", nil];
    
    //完了ボタン貼り付け
	UIBarButtonItem* Done = [[UIBarButtonItem alloc] initWithTitle:@"完了" style:UIBarButtonItemStyleDone target:self action:@selector(DonePush)];
    
    self.view.backgroundColor = [UIColor scrollViewTexturedBackgroundColor];
    
    self.navigationItem.rightBarButtonItem = Done;
    
    //ピッカーの表示
    picker = [[UIPickerView alloc] init];
    picker.delegate = self;
    picker.dataSource = self;
    picker.showsSelectionIndicator = YES;
    if ([[userDefaults objectForKey:@"TableNumber"] intValue] == 5) {
        [picker selectRow:0 inComponent:0 animated:NO];
    }else if ([[userDefaults objectForKey:@"TableNumber"] intValue] == 6) {
        [picker selectRow:1 inComponent:0 animated:NO];
    }else if ([[userDefaults objectForKey:@"TableNumber"] intValue] == 7) {
        [picker selectRow:2 inComponent:0 animated:NO];
    }else if ([[userDefaults objectForKey:@"TableNumber"] intValue] == 8) {
        [picker selectRow:3 inComponent:0 animated:NO];
    }else if ([[userDefaults objectForKey:@"TableNumber"] intValue] == 9) {
        [picker selectRow:4 inComponent:0 animated:NO];
    }else {
        [picker selectRow:5 inComponent:0 animated:NO];
    }
    
    [self.view addSubview:picker];
    
    
}

//ピッカーの列数
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

//ピッカーの行数
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return 6;
}

//内容の表示
-(NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [TableArray objectAtIndex:row];
}

-(IBAction)DonePush{
    //ユーザーデフォルト読み込み
    NSUserDefaults *userDefaults;
    userDefaults = [NSUserDefaults standardUserDefaults];
    
    
    if ([picker selectedRowInComponent:0] == 0) {
        [userDefaults setObject:@"5" forKey:@"TableNumber"];
    }else if ([picker selectedRowInComponent:0] == 1) {
        [userDefaults setObject:@"6" forKey:@"TableNumber"];
    }else if ([picker selectedRowInComponent:0] == 2) {
        [userDefaults setObject:@"7" forKey:@"TableNumber"];
    }else if ([picker selectedRowInComponent:0] == 3) {
        [userDefaults setObject:@"8" forKey:@"TableNumber"];
    }else if ([picker selectedRowInComponent:0] == 4) {
        [userDefaults setObject:@"9" forKey:@"TableNumber"];
    }else{
        [userDefaults setObject:@"10" forKey:@"TableNumber"];
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
