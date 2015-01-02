//
//  BGISelectScene.m
//  Timetable
//
//  Created by 裕悟 on 12/11/20.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "BGISelectScene.h"
#import "WeekChoice.h"

@interface BGISelectScene ()

@end

@implementation BGISelectScene

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
	//完了ボタン貼り付け
	UIBarButtonItem* Done = [[UIBarButtonItem alloc] initWithTitle:@"完了" style:UIBarButtonItemStyleDone target:self action:@selector(DonePush)];
    
    self.view.backgroundColor = [UIColor viewFlipsideBackgroundColor];
    
    self.navigationItem.rightBarButtonItem = Done;
    
    self.title = @"背景画像選択";
    
    BGIdictionary = [NSMutableDictionary dictionary];
    ColorDctionary = [NSMutableDictionary dictionary];
    alphaDictionary = [NSMutableDictionary dictionary];
    
    //ユーザーデフォルト読み込み
    NSUserDefaults *userDefaults;
    userDefaults = [NSUserDefaults standardUserDefaults];
    
    originBGIdictionary = [userDefaults dictionaryForKey:@"BGIName"];
    BGIdictionary = [originBGIdictionary mutableCopy];
    
    originColorDictionary = [userDefaults dictionaryForKey:@"TextColor"];
    ColorDctionary = [originColorDictionary mutableCopy];
    
    originAlphaDictionary = [userDefaults dictionaryForKey:@"BGIAlpha"];
    alphaDictionary = [originAlphaDictionary mutableCopy];
    
    //1枚目
    UIButton *Button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    Button1.frame = CGRectMake(10, 10, 140, 140);
    UIImage *bgImage1 = [UIImage imageNamed:@"01.png"];
    //bgImage1 = [bgImage1 stretchableImageWithLeftCapWidth:0.5 topCapHeight:0.5];
    [Button1 setBackgroundImage:bgImage1 forState:UIControlStateNormal];
    [Button1 addTarget:self action:@selector(Button1) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:Button1];
    
    UIButton *Button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    Button2.frame = CGRectMake(160, 140, 140, 140);
    UIImage *bgImage2 = [UIImage imageNamed:@"02.png"];
    //bgImage2 = [bgImage2 stretchableImageWithLeftCapWidth:0.5 topCapHeight:0.5];
    [Button2 setBackgroundImage:bgImage2 forState:UIControlStateNormal];
    [Button2 addTarget:self action:@selector(Button2) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:Button2];
    
    UIButton *Button3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    Button3.frame = CGRectMake(10, 260, 140, 140);
    UIImage *bgImage3 = [UIImage imageNamed:@"03.png"];
    //bgImage3 = [bgImage3 stretchableImageWithLeftCapWidth:0.5 topCapHeight:0.5];
    [Button3 setBackgroundImage:bgImage3 forState:UIControlStateNormal];
    [Button3 addTarget:self action:@selector(Button3) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:Button3];
    
    select0 = [[UIImage alloc] init];
    select0 = [UIImage imageNamed:@"frame.png"];
    selectView0 = [[UIImageView alloc] init];
    [selectView0 setFrame:CGRectMake(7, 7, 145.5, 145.5)];
    //表示モードの設定
    [selectView0 setContentMode:UIViewContentModeScaleAspectFit];
    //連結
    [selectView0 setImage:select0];
    //表示
    [self.view addSubview:selectView0];
    
    
    select1 = [[UIImage alloc] init];
    select1 = [UIImage imageNamed:@"frame.png"];
    selectView1 = [[UIImageView alloc] init];
    [selectView1 setFrame:CGRectMake(157, 137, 145.5, 145.5)];
    //表示モードの設定
    [selectView1 setContentMode:UIViewContentModeScaleAspectFit];
    //連結
    [selectView1 setImage:select1];
    //表示
    [self.view addSubview:selectView1];
    
    
    select2 = [[UIImage alloc] init];
    select2 = [UIImage imageNamed:@"frame.png"];
    
    selectView2 = [[UIImageView alloc] init];
    [selectView2 setFrame:CGRectMake(7, 257, 145.5, 145.5)];
    
    //表示モードの設定
    [selectView2 setContentMode:UIViewContentModeScaleAspectFit];
    //連結
    [selectView2 setImage:select2];
    //表示
    [self.view addSubview:selectView2];
    
    selectView0.alpha = 0;
    selectView1.alpha = 0;
    selectView2.alpha = 0;
    
    
}

-(void)Button1{
    //ユーザーデフォルト読み込み
    NSUserDefaults *userDefaults;
    userDefaults = [NSUserDefaults standardUserDefaults];
    
    selectImage = [UIImage imageNamed:@"01.png"];
    NSData *ImageData = [[NSData alloc] initWithData:UIImagePNGRepresentation(selectImage)];
    ColorData = @"5";
    
    if ([userDefaults integerForKey:@"AllOrIndividual"] == 0) {
        [BGIdictionary setObject:ImageData forKey:@"0"];
        [BGIdictionary setObject:ImageData forKey:@"1"];
        [BGIdictionary setObject:ImageData forKey:@"2"];
        [BGIdictionary setObject:ImageData forKey:@"3"];
        [BGIdictionary setObject:ImageData forKey:@"4"];
        [BGIdictionary setObject:ImageData forKey:@"5"];
        [BGIdictionary setObject:ImageData forKey:@"6"];
        
        [userDefaults setObject:BGIdictionary forKey:@"BGIName"];
        
        [ColorDctionary setObject:ColorData forKey:@"0"];
        [ColorDctionary setObject:ColorData forKey:@"1"];
        [ColorDctionary setObject:ColorData forKey:@"2"];
        [ColorDctionary setObject:ColorData forKey:@"3"];
        [ColorDctionary setObject:ColorData forKey:@"4"];
        [ColorDctionary setObject:ColorData forKey:@"5"];
        [ColorDctionary setObject:ColorData forKey:@"6"];
        
        [userDefaults setObject:ColorDctionary forKey:@"TextColor"];
        
        [alphaDictionary setObject:@"1" forKey:@"0"];
        [alphaDictionary setObject:@"1" forKey:@"1"];
        [alphaDictionary setObject:@"1" forKey:@"2"];
        [alphaDictionary setObject:@"1" forKey:@"3"];
        [alphaDictionary setObject:@"1" forKey:@"4"];
        [alphaDictionary setObject:@"1" forKey:@"5"];
        [alphaDictionary setObject:@"1" forKey:@"6"];
        
        [userDefaults setObject:alphaDictionary forKey:@"BGIAlpha"];
    }else {
        switch ([userDefaults integerForKey:@"WhichWeek"]) {
            case 0:
                [BGIdictionary setObject:ImageData forKey:@"0"];
                [ColorDctionary setObject:ColorData forKey:@"0"];
                [alphaDictionary setObject:@"1" forKey:@"0"];
                break;
            case 1:
                [BGIdictionary setObject:ImageData forKey:@"1"];
                [ColorDctionary setObject:ColorData forKey:@"1"];
                [alphaDictionary setObject:@"1" forKey:@"1"];
                break;
            case 2:
                [BGIdictionary setObject:ImageData forKey:@"2"];
                [ColorDctionary setObject:ColorData forKey:@"2"];
                [alphaDictionary setObject:@"1" forKey:@"2"];
                break;
            case 3:
                [BGIdictionary setObject:ImageData forKey:@"3"];
                [ColorDctionary setObject:ColorData forKey:@"3"];
                [alphaDictionary setObject:@"1" forKey:@"3"];
                break;
            case 4:
                [BGIdictionary setObject:ImageData forKey:@"4"];
                [ColorDctionary setObject:ColorData forKey:@"4"];
                [alphaDictionary setObject:@"1" forKey:@"4"];
                break;
            case 5:
                [BGIdictionary setObject:ImageData forKey:@"5"];
                [ColorDctionary setObject:ColorData forKey:@"5"];
                [alphaDictionary setObject:@"1" forKey:@"5"];
                break;
            case 6:
                [BGIdictionary setObject:ImageData forKey:@"6"];
                [ColorDctionary setObject:ColorData forKey:@"6"];
                [alphaDictionary setObject:@"1" forKey:@"6"];
                break;
            default:
                break;
        }
        [userDefaults setObject:BGIdictionary forKey:@"BGIName"];
        [userDefaults setObject:ColorDctionary forKey:@"TextColor"];
        [userDefaults setObject:alphaDictionary forKey:@"BGIAlpha"];
    }
    
    selectView0.alpha = 1;
    selectView1.alpha = 0;
    selectView2.alpha = 0;
    
}

-(void)Button2{
    //ユーザーデフォルト読み込み
    NSUserDefaults *userDefaults;
    userDefaults = [NSUserDefaults standardUserDefaults];
    
    selectImage = [UIImage imageNamed:@"02.png"];
    NSData *ImageData = [[NSData alloc] initWithData:UIImagePNGRepresentation(selectImage)];
    ColorData = @"7";

    if ([userDefaults integerForKey:@"AllOrIndividual"] == 0) {
        [BGIdictionary setObject:ImageData forKey:@"0"];
        [BGIdictionary setObject:ImageData forKey:@"1"];
        [BGIdictionary setObject:ImageData forKey:@"2"];
        [BGIdictionary setObject:ImageData forKey:@"3"];
        [BGIdictionary setObject:ImageData forKey:@"4"];
        [BGIdictionary setObject:ImageData forKey:@"5"];
        [BGIdictionary setObject:ImageData forKey:@"6"];
        
        [userDefaults setObject:BGIdictionary forKey:@"BGIName"];
        
        [ColorDctionary setObject:ColorData forKey:@"0"];
        [ColorDctionary setObject:ColorData forKey:@"1"];
        [ColorDctionary setObject:ColorData forKey:@"2"];
        [ColorDctionary setObject:ColorData forKey:@"3"];
        [ColorDctionary setObject:ColorData forKey:@"4"];
        [ColorDctionary setObject:ColorData forKey:@"5"];
        [ColorDctionary setObject:ColorData forKey:@"6"];
        
        [userDefaults setObject:ColorDctionary forKey:@"TextColor"];
        
        [alphaDictionary setObject:@"1" forKey:@"0"];
        [alphaDictionary setObject:@"1" forKey:@"1"];
        [alphaDictionary setObject:@"1" forKey:@"2"];
        [alphaDictionary setObject:@"1" forKey:@"3"];
        [alphaDictionary setObject:@"1" forKey:@"4"];
        [alphaDictionary setObject:@"1" forKey:@"5"];
        [alphaDictionary setObject:@"1" forKey:@"6"];
        
        [userDefaults setObject:alphaDictionary forKey:@"BGIAlpha"];
    }else {
        switch ([userDefaults integerForKey:@"WhichWeek"]) {
            case 0:
                [BGIdictionary setObject:ImageData forKey:@"0"];
                [ColorDctionary setObject:ColorData forKey:@"0"];
                [alphaDictionary setObject:@"1" forKey:@"0"];
                break;
            case 1:
                [BGIdictionary setObject:ImageData forKey:@"1"];
                [ColorDctionary setObject:ColorData forKey:@"1"];
                [alphaDictionary setObject:@"1" forKey:@"1"];
                break;
            case 2:
                [BGIdictionary setObject:ImageData forKey:@"2"];
                [ColorDctionary setObject:ColorData forKey:@"2"];
                [alphaDictionary setObject:@"1" forKey:@"2"];
                break;
            case 3:
                [BGIdictionary setObject:ImageData forKey:@"3"];
                [ColorDctionary setObject:ColorData forKey:@"3"];
                [alphaDictionary setObject:@"1" forKey:@"3"];
                break;
            case 4:
                [BGIdictionary setObject:ImageData forKey:@"4"];
                [ColorDctionary setObject:ColorData forKey:@"4"];
                [alphaDictionary setObject:@"1" forKey:@"4"];
                break;
            case 5:
                [BGIdictionary setObject:ImageData forKey:@"5"];
                [ColorDctionary setObject:ColorData forKey:@"5"];
                [alphaDictionary setObject:@"1" forKey:@"5"];
                break;
            case 6:
                [BGIdictionary setObject:ImageData forKey:@"6"];
                [ColorDctionary setObject:ColorData forKey:@"6"];
                [alphaDictionary setObject:@"1" forKey:@"6"];
                break;
            default:
                break;
        }
        [userDefaults setObject:BGIdictionary forKey:@"BGIName"];
        [userDefaults setObject:ColorDctionary forKey:@"TextColor"];
        [userDefaults setObject:alphaDictionary forKey:@"BGIAlpha"];
    }
    
    selectView0.alpha = 0;
    selectView1.alpha = 1;
    selectView2.alpha = 0;
}

-(void)Button3{
    //ユーザーデフォルト読み込み
    NSUserDefaults *userDefaults;
    userDefaults = [NSUserDefaults standardUserDefaults];
    
    selectImage = [UIImage imageNamed:@"03.png"];
    NSData *ImageData = [[NSData alloc] initWithData:UIImagePNGRepresentation(selectImage)];
    ColorData = @"0";

    if ([userDefaults integerForKey:@"AllOrIndividual"] == 0) {
        [BGIdictionary setObject:ImageData forKey:@"0"];
        [BGIdictionary setObject:ImageData forKey:@"1"];
        [BGIdictionary setObject:ImageData forKey:@"2"];
        [BGIdictionary setObject:ImageData forKey:@"3"];
        [BGIdictionary setObject:ImageData forKey:@"4"];
        [BGIdictionary setObject:ImageData forKey:@"5"];
        [BGIdictionary setObject:ImageData forKey:@"6"];
        
        [userDefaults setObject:BGIdictionary forKey:@"BGIName"];
        
        [ColorDctionary setObject:ColorData forKey:@"0"];
        [ColorDctionary setObject:ColorData forKey:@"1"];
        [ColorDctionary setObject:ColorData forKey:@"2"];
        [ColorDctionary setObject:ColorData forKey:@"3"];
        [ColorDctionary setObject:ColorData forKey:@"4"];
        [ColorDctionary setObject:ColorData forKey:@"5"];
        [ColorDctionary setObject:ColorData forKey:@"6"];
        
        [userDefaults setObject:ColorDctionary forKey:@"TextColor"];
        
        [alphaDictionary setObject:@"1" forKey:@"0"];
        [alphaDictionary setObject:@"1" forKey:@"1"];
        [alphaDictionary setObject:@"1" forKey:@"2"];
        [alphaDictionary setObject:@"1" forKey:@"3"];
        [alphaDictionary setObject:@"1" forKey:@"4"];
        [alphaDictionary setObject:@"1" forKey:@"5"];
        [alphaDictionary setObject:@"1" forKey:@"6"];
        
        [userDefaults setObject:alphaDictionary forKey:@"BGIAlpha"];
    }else {
        switch ([userDefaults integerForKey:@"WhichWeek"]) {
            case 0:
                [BGIdictionary setObject:ImageData forKey:@"0"];
                [ColorDctionary setObject:ColorData forKey:@"0"];
                [alphaDictionary setObject:@"1" forKey:@"0"];
                break;
            case 1:
                [BGIdictionary setObject:ImageData forKey:@"1"];
                [ColorDctionary setObject:ColorData forKey:@"1"];
                [alphaDictionary setObject:@"1" forKey:@"1"];
                break;
            case 2:
                [BGIdictionary setObject:ImageData forKey:@"2"];
                [ColorDctionary setObject:ColorData forKey:@"2"];
                [alphaDictionary setObject:@"1" forKey:@"2"];
                break;
            case 3:
                [BGIdictionary setObject:ImageData forKey:@"3"];
                [ColorDctionary setObject:ColorData forKey:@"3"];
                [alphaDictionary setObject:@"1" forKey:@"3"];
                break;
            case 4:
                [BGIdictionary setObject:ImageData forKey:@"4"];
                [ColorDctionary setObject:ColorData forKey:@"4"];
                [alphaDictionary setObject:@"1" forKey:@"4"];
                break;
            case 5:
                [BGIdictionary setObject:ImageData forKey:@"5"];
                [ColorDctionary setObject:ColorData forKey:@"5"];
                [alphaDictionary setObject:@"1" forKey:@"5"];
                break;
            case 6:
                [BGIdictionary setObject:ImageData forKey:@"6"];
                [ColorDctionary setObject:ColorData forKey:@"6"];
                [alphaDictionary setObject:@"1" forKey:@"6"];
                break;
            default:
                break;
        }
        [userDefaults setObject:BGIdictionary forKey:@"BGIName"];
        [userDefaults setObject:ColorDctionary forKey:@"TextColor"];
        [userDefaults setObject:alphaDictionary forKey:@"BGIAlpha"];
    }
    
    selectView0.alpha = 0;
    selectView1.alpha = 0;
    selectView2.alpha = 1;
}

-(IBAction)DonePush{
    //ユーザーデフォルト読み込み
    NSUserDefaults *userDefaults;
    userDefaults = [NSUserDefaults standardUserDefaults];
    
    [userDefaults synchronize];
    //NSLog(@"Button1:%@",[ColorDctionary description]);
    
    if ([userDefaults integerForKey:@"AllOrIndividual"] == 0) {
        [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:1] animated:YES];
    }else{
        [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:3] animated:YES];
    }
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
