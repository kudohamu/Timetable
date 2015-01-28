//
//  ValuationRatioScene.m
//  Timetable
//
//  Created by 裕悟 on 12/11/11.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ValuationRatioScene.h"

@interface ValuationRatioScene ()

@end

@implementation ValuationRatioScene
@synthesize RatioName;

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
    
    RatioArray = [[NSArray alloc] initWithObjects: @"", @"5%", @"10%", @"15%", @"20%", @"25%", @"30%", @"35%", @"40%", @"45%", @"50%", @"55%", @"60%", @"65%", @"70%", @"75%", @"80%", @"85%", @"90%", @"95%", @"100%", nil];
    
    //完了ボタン貼り付け
	UIBarButtonItem* Done = [[UIBarButtonItem alloc] initWithTitle:@"完了" style:UIBarButtonItemStyleDone target:self action:@selector(DonePush)];
    
    self.view.backgroundColor = [UIColor scrollViewTexturedBackgroundColor];
    
    self.navigationItem.rightBarButtonItem = Done;
    
    //ピッカーの表示
    picker = [[UIPickerView alloc] init];
    picker.delegate = self;
    picker.dataSource = self;
    picker.showsSelectionIndicator = YES;
    if ([[userDefaults objectForKey:RatioName] isEqualToString:[RatioArray objectAtIndex:0]]) {
        [picker selectRow:0 inComponent:0 animated:NO];
    }else if ([[userDefaults objectForKey:RatioName] isEqualToString:[RatioArray objectAtIndex:1]]){
        [picker selectRow:1 inComponent:0 animated:NO];
    }else if ([[userDefaults objectForKey:RatioName] isEqualToString:@"10%"]){
        [picker selectRow:2 inComponent:0 animated:NO];
    }else if ([[userDefaults objectForKey:RatioName] isEqualToString:@"15%"]){
        [picker selectRow:3 inComponent:0 animated:NO];
    }else if ([[userDefaults objectForKey:RatioName] isEqualToString:@"20%"]){
        [picker selectRow:4 inComponent:0 animated:NO];
    }else if ([[userDefaults objectForKey:RatioName] isEqualToString:@"25%"]){
        [picker selectRow:5 inComponent:0 animated:NO];
    }else if ([[userDefaults objectForKey:RatioName] isEqualToString:@"30%"]){
        [picker selectRow:6 inComponent:0 animated:NO];
    }else if ([[userDefaults objectForKey:RatioName] isEqualToString:@"35%"]){
        [picker selectRow:7 inComponent:0 animated:NO];
    }else if ([[userDefaults objectForKey:RatioName] isEqualToString:@"40%"]){
        [picker selectRow:8 inComponent:0 animated:NO];
    }else if ([[userDefaults objectForKey:RatioName] isEqualToString:@"45%"]){
        [picker selectRow:9 inComponent:0 animated:NO];
    }else if ([[userDefaults objectForKey:RatioName] isEqualToString:@"50%"]){
        [picker selectRow:10 inComponent:0 animated:NO];
    }else if ([[userDefaults objectForKey:RatioName] isEqualToString:@"55%"]){
        [picker selectRow:11 inComponent:0 animated:NO];
    }else if ([[userDefaults objectForKey:RatioName] isEqualToString:@"60%"]){
        [picker selectRow:12 inComponent:0 animated:NO];
    }else if ([[userDefaults objectForKey:RatioName] isEqualToString:@"65%"]){
        [picker selectRow:13 inComponent:0 animated:NO];
    }else if ([[userDefaults objectForKey:RatioName] isEqualToString:@"70%"]){
        [picker selectRow:14 inComponent:0 animated:NO];
    }else if ([[userDefaults objectForKey:RatioName] isEqualToString:@"75%"]){
        [picker selectRow:15 inComponent:0 animated:NO];
    }else if ([[userDefaults objectForKey:RatioName] isEqualToString:@"80%"]){
        [picker selectRow:16 inComponent:0 animated:NO];
    }else if ([[userDefaults objectForKey:RatioName] isEqualToString:@"85%"]){
        [picker selectRow:17 inComponent:0 animated:NO];
    }else if ([[userDefaults objectForKey:RatioName] isEqualToString:@"90%"]){
        [picker selectRow:18 inComponent:0 animated:NO];
    }else if ([[userDefaults objectForKey:RatioName] isEqualToString:@"95%"]){
        [picker selectRow:19 inComponent:0 animated:NO];
    }else {
        [picker selectRow:20 inComponent:0 animated:NO];
    }
    [self.view addSubview:picker];
}

//ピッカーの列数
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

//ピッカーの行数
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return 21;
}

//内容の表示
-(NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [RatioArray objectAtIndex:row];
}

-(IBAction)DonePush{
    //ユーザーデフォルト読み込み
    NSUserDefaults *userDefaults;
    userDefaults = [NSUserDefaults standardUserDefaults];
    
    [userDefaults setObject:[RatioArray objectAtIndex:[picker selectedRowInComponent:0]] forKey:RatioName];
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
