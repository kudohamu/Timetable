//
//  TextInputScene_.m
//  Timetable
//
//  Created by 裕悟 on 12/11/08.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "TextInputScene_.h"
#import "ValuationRatioScene.h"

@interface TextInputScene_ ()

@end

@implementation TextInputScene_
@synthesize lessonName,professorName,roomName,homework,valuationBasis1,valuationBasis2;

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
    //ユーザーデフォルト読み込み
    NSUserDefaults *userDefaults;
    userDefaults = [NSUserDefaults standardUserDefaults];

    self.navigationController.navigationBar.tintColor = [UIColor blackColor];
    
    LessonName = [[UITextField alloc] init];
    LessonName.frame = CGRectMake(25, 21, 280, 25);
    LessonName.returnKeyType = UIReturnKeyDone;
    LessonName.autocapitalizationType = UITextAutocapitalizationTypeNone;
    LessonName.clearButtonMode = UITextFieldViewModeAlways;
    LessonName.keyboardType = UIKeyboardTypeDefault;
    LessonName.placeholder = @"授業名";
    LessonName.delegate = self;
    LessonName.text = [userDefaults objectForKey:[userDefaults objectForKey:@"CashLesson"]];
    [self.view addSubview:LessonName];
    
    ProfessorName = [[UITextField alloc] init];
    ProfessorName.frame = CGRectMake(25, 65, 280, 25);
    ProfessorName.returnKeyType = UIReturnKeyDone;
    ProfessorName.autocapitalizationType = UITextAutocapitalizationTypeNone;
    ProfessorName.clearButtonMode = UITextFieldViewModeAlways;
    ProfessorName.keyboardType = UIKeyboardTypeDefault;
    ProfessorName.placeholder = @"教授名";
    ProfessorName.delegate = self;
    ProfessorName.text = [userDefaults objectForKey:[userDefaults objectForKey:@"CashProfessor"]];
    [self.view addSubview:ProfessorName];
    
    RoomName = [[UITextField alloc] init];
    RoomName.frame = CGRectMake(25, 109, 280, 25);
    RoomName.returnKeyType = UIReturnKeyDone;
    RoomName.autocapitalizationType = UITextAutocapitalizationTypeNone;
    RoomName.clearButtonMode = UITextFieldViewModeAlways;
    RoomName.keyboardType = UIKeyboardTypeDefault;
    RoomName.placeholder = @"教室名";
    RoomName.delegate = self;
    RoomName.tag = 0;
    RoomName.text = [userDefaults objectForKey:[userDefaults objectForKey:@"CashRoom"]];
    [self.view addSubview:RoomName];
    
    Homework = [[UITextField alloc] init];
    Homework.frame = CGRectMake(25, 152, 280, 25);
    Homework.returnKeyType = UIReturnKeyDone;
    Homework.autocapitalizationType = UITextAutocapitalizationTypeNone;
    Homework.clearButtonMode = UITextFieldViewModeAlways;
    Homework.keyboardType = UIKeyboardTypeDefault;
    Homework.placeholder = @"課題名";
    Homework.delegate = self;
    Homework.tag = 0;
    Homework.text = [userDefaults objectForKey:[userDefaults objectForKey:@"CashHomework"]];
    [self.view addSubview:Homework];
    
    ValuationBasis1 = [[UITextField alloc] init];
    ValuationBasis1.frame = CGRectMake(25, 220, 280, 25);
    ValuationBasis1.returnKeyType = UIReturnKeyDone;
    ValuationBasis1.autocapitalizationType = UITextAutocapitalizationTypeNone;
    ValuationBasis1.clearButtonMode = UITextFieldViewModeAlways;
    ValuationBasis1.keyboardType = UIKeyboardTypeDefault;
    ValuationBasis1.placeholder = @"評価基準1：";
    ValuationBasis1.delegate = self;
    ValuationBasis1.tag = 0;
    ValuationBasis1.text = [userDefaults objectForKey:[userDefaults objectForKey:@"CashBasis1"]];
    [self.view addSubview:ValuationBasis1];
    
    ValuationBasis2 = [[UITextField alloc] init];
    ValuationBasis2.frame = CGRectMake(25, 328, 280, 25);
    ValuationBasis2.returnKeyType = UIReturnKeyDone;
    ValuationBasis2.autocapitalizationType = UITextAutocapitalizationTypeNone;
    ValuationBasis2.clearButtonMode = UITextFieldViewModeAlways;
    ValuationBasis2.keyboardType = UIKeyboardTypeDefault;
    ValuationBasis2.placeholder = @"評価基準2：";
    ValuationBasis2.delegate = self;
    ValuationBasis2.tag = 0;
    ValuationBasis2.text = [userDefaults objectForKey:[userDefaults objectForKey:@"CashBasis2"]];
    [self.view addSubview:ValuationBasis2];
    
    Absence = [userDefaults integerForKey:[userDefaults objectForKey:@"CashAbsence"]];
    Lateness = [userDefaults integerForKey:[userDefaults objectForKey:@"CashLateness"]];
    
    Memorandum = [[UITextView alloc] init];
    Memorandum.frame = CGRectMake(15, 570, 280, 140);
    Memorandum.returnKeyType = UIReturnKeyDefault;
    Memorandum.autocapitalizationType = UITextAutocapitalizationTypeNone;
    //Memorandum.clearButtonMode = UITextFieldViewModeAlways;
    Memorandum.keyboardType = UIKeyboardTypeDefault;
    Memorandum.backgroundColor = [UIColor clearColor];
    Memorandum.delegate = self;
    Memorandum.font = [UIFont systemFontOfSize:20];
    Memorandum.tag = 1;
    Memorandum.text = [userDefaults objectForKey:[userDefaults objectForKey:@"CashMemorandum"]];
    [self.view addSubview:Memorandum];
    
    stepper1 = [[UIStepper alloc] init];
    stepper1.frame = CGRectMake(200, 438, 94, 150);
    [stepper1 addTarget:self action:@selector(changeStepper1:) forControlEvents:UIControlEventValueChanged];
    stepper1.maximumValue = 99;
    stepper1.minimumValue = 0;
    stepper1.stepValue = 1;
    stepper1.continuous = NO;
    stepper1.value = Absence;
    [self.view addSubview:stepper1];
    
    stepper2 = [[UIStepper alloc] init];
    stepper2.frame = CGRectMake(200, 482, 94, 27);
    [stepper2 addTarget:self action:@selector(changeStepper2:) forControlEvents:UIControlEventValueChanged];
    stepper2.maximumValue = 99;
    stepper2.minimumValue = 0;
    stepper2.stepValue = 1;
    stepper2.continuous = NO;
    stepper2.value = Lateness;
    [self.view addSubview:stepper2];
}

-(void)viewWillAppear:(BOOL)animated{
    //ユーザーデフォルト読み込み
    NSUserDefaults *userDefaults;
    userDefaults = [NSUserDefaults standardUserDefaults];
    
    ValuationRatio1 = [userDefaults objectForKey:[userDefaults objectForKey:@"CashRatio1"]];
    ValuationRatio2 = [userDefaults objectForKey:[userDefaults objectForKey:@"CashRatio2"]];

    [self.tableView reloadData];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 6;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return 4;
    }else if (section == 4 || section == 5) {
        return 1;
    }else {
        return 2;
    }
}

-(NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if (section == 4) {
        return @"教科書などの諸メモ欄(4行まで)";
    }else {
        return @"";
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    //ユーザーデフォルト読み込み
    NSUserDefaults *userDefaults;
    userDefaults = [NSUserDefaults standardUserDefaults];
    
    //基礎となるセルができていなければ作成
    if (nil == cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    cell.textLabel.textColor = [UIColor blackColor];
    [[cell imageView] setImage:[UIImage imageNamed:@""]];
    
    if (indexPath.section == 1) {        
        if (indexPath.row == 1) {
            cell.textLabel.text = [@"評価割合：" stringByAppendingFormat:@"%@", ValuationRatio1];
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        }else{
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
        }
    }else if (indexPath.section == 2) {
        if (indexPath.row == 1) {
            cell.textLabel.text = [@"評価割合：" stringByAppendingFormat:@"%@", ValuationRatio2];
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        }else{
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
        }
    }else if(indexPath.section == 3){
        cell.userInteractionEnabled = YES;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        if (indexPath.row == 0) {
            cell.textLabel.text = [NSString stringWithFormat:@"欠席数：%d回", Absence];
        }else if (indexPath.row == 1){
            cell.textLabel.text = [NSString stringWithFormat:@"遅刻数：%d回", Lateness];
        }
    }else if (indexPath.section == 4) {
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }else if (indexPath.section == 5) {
        [[cell imageView] setImage:[UIImage imageNamed:@"ロゴ.png"]];
        [[cell imageView] setFrame:CGRectMake(10, 5, 408, 150)];
        [[cell imageView] setContentMode:UIViewContentModeScaleAspectFit];
        cell.textLabel.contentMode = UIViewContentModeScaleToFill;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }else {
        cell.userInteractionEnabled = NO;
        cell.textLabel.text = @"";
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //ユーザーデフォルト読み込み
    NSUserDefaults *userDefaults;
    userDefaults = [NSUserDefaults standardUserDefaults];
    
    //セル選択状態の解除
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    ValuationRatioScene *valuationRatioScene = [self.storyboard instantiateViewControllerWithIdentifier:@"valuationratioscene"];
    
    if (indexPath.section == 1 && indexPath.row == 1) {
        valuationRatioScene.RatioName = [userDefaults objectForKey:@"CashRatio1"];
        [self.navigationController pushViewController:valuationRatioScene animated:YES];
    }else if (indexPath.section == 2 && indexPath.row == 1) {
        valuationRatioScene.RatioName = [userDefaults objectForKey:@"CashRatio2"];
        [self.navigationController pushViewController:valuationRatioScene animated:YES];
    }else if(indexPath.section == 3){
        
    }
}

//完了ボタン
- (IBAction)Done:(id)sender {
    //ユーザーデフォルト読み込み
    NSUserDefaults *userDefaults;
    userDefaults = [NSUserDefaults standardUserDefaults];
    
    [userDefaults setObject:LessonName.text forKey:[userDefaults objectForKey:@"CashLesson"]];
    [userDefaults setObject:ProfessorName.text forKey:[userDefaults objectForKey:@"CashProfessor"]];
    [userDefaults setObject:RoomName.text forKey:[userDefaults objectForKey:@"CashRoom"]];
    [userDefaults setObject:Homework.text forKey:[userDefaults objectForKey:@"CashHomework"]];
    [userDefaults setObject:ValuationBasis1.text forKey:[userDefaults objectForKey:@"CashBasis1"]];
    [userDefaults setObject:ValuationBasis2.text forKey:[userDefaults objectForKey:@"CashBasis2"]];
    [userDefaults setInteger:Absence forKey:[userDefaults objectForKey:@"CashAbsence"]];
    [userDefaults setInteger:Lateness forKey:[userDefaults objectForKey:@"CashLateness"]];
    [userDefaults setObject:Memorandum.text forKey:[userDefaults objectForKey:@"CashMemorandum"]];
    
    [userDefaults synchronize];
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}

-(IBAction)changeStepper1:(id)sender{
    Absence = stepper1.value;
    [self.tableView reloadData];
}

-(IBAction)changeStepper2:(id)sender{
    Lateness = stepper2.value;
    [self.tableView reloadData];
}

//キャンセルボタン
- (IBAction)Chancel:(id)sender {
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 5) {
        return 200;
    }else if (indexPath.section == 4) {
        return 150;
    }else {
        return 44;
    }
}

- (BOOL)textFieldShouldReturn:(UITextField *)targetTextField {

    if (targetTextField.tag == 0) {
        [targetTextField resignFirstResponder];
    }else {
        
    }
    return YES;
    
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
