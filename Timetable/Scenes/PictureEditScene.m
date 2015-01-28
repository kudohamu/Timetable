//
//  PictureEditScene.m
//  Timetable
//
//  Created by 田中 裕悟 on 13/02/04.
//
//

#import "PictureEditScene.h"

@interface PictureEditScene ()

@end

@implementation PictureEditScene
@synthesize pictureNumber_;

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
    
    BGIdictionary = [NSMutableDictionary dictionary];
    ColorDctionary = [NSMutableDictionary dictionary];
    alphaDictionary = [NSMutableDictionary dictionary];
    
    originBGIdictionary = [userDefaults dictionaryForKey:@"BGIName"];
    BGIdictionary = [originBGIdictionary mutableCopy];
    
    originColorDictionary = [userDefaults dictionaryForKey:@"TextColor"];
    ColorDctionary = [originColorDictionary mutableCopy];
    
    originAlphaDictionary = [userDefaults dictionaryForKey:@"BGIAlpha"];
    alphaDictionary = [originAlphaDictionary mutableCopy];
    
	self.view.backgroundColor = [UIColor viewFlipsideBackgroundColor];
	//完了ボタン貼り付け
	UIBarButtonItem *Done = [[UIBarButtonItem alloc] initWithTitle:@"設定" style:UIBarButtonItemStyleDone target:self action:@selector(donePush)];
    self.navigationItem.rightBarButtonItem = Done;
    self.title = @"背景画詳細設定";
    
    scrollView_ = [[UIScrollView alloc] init];
    scrollView_.frame = self.view.bounds;
    scrollView_.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    scrollView_.contentSize = CGSizeMake(320, 480);
    
    UILabel *bgLabel = [[UILabel alloc] init];
    bgLabel.frame = CGRectMake(self.view.frame.size.width/2-100, 10, 200, 200);
    bgLabel.backgroundColor = [UIColor whiteColor];
    [scrollView_ addSubview:bgLabel];
    
    preViewImageView_ = [[UIImageView alloc] init];
    preViewImageView_.frame = CGRectMake(self.view.frame.size.width/2-100, 10, 200, 200);
    preViewImage_ = [UIImage imageWithData:[userDefaults objectForKey:[NSString stringWithFormat:@"Image%d",pictureNumber_]]];
    [preViewImageView_ setImage:preViewImage_];
    [scrollView_ addSubview:preViewImageView_];
    
    preViewLabel_ = [[UILabel alloc] init];
    preViewLabel_.text = @"サンプル文字";
    preViewLabel_.frame = CGRectMake(self.view.frame.size.width/2-100, 90, 200, 40);
    preViewLabel_.textColor = [UIColor whiteColor];
    preViewLabel_.textAlignment = NSTextAlignmentCenter;
    preViewLabel_.backgroundColor = [UIColor clearColor];
    preViewLabel_.font = [UIFont systemFontOfSize:30];
    [scrollView_ addSubview:preViewLabel_];
    
    UILabel *label1 = [[UILabel alloc] init];
    label1.text = @"非透明度：";
    label1.frame = CGRectMake(10, 370, 110, 30);
    label1.textColor = [UIColor redColor];
    label1.backgroundColor = [UIColor clearColor];
    label1.font = [UIFont systemFontOfSize:20];
    [scrollView_ addSubview:label1];
    
    alphaLabel_ = [[UILabel alloc] init];
    alphaLabel_.frame = CGRectMake(110, 370, 70, 30);
    alphaLabel_.text = @"100";
    alphaLabel_.textColor = [UIColor redColor];
    alphaLabel_.backgroundColor = [UIColor clearColor];
    alphaLabel_.textAlignment = NSTextAlignmentLeft;
    alphaLabel_.font = [UIFont systemFontOfSize:20];
    [scrollView_ addSubview:alphaLabel_];
    
    UILabel *label2 = [[UILabel alloc] init];
    label2.text = @"文字色：";
    label2.frame = CGRectMake(10, 230, 110, 30);
    label2.textColor = [UIColor redColor];
    label2.backgroundColor = [UIColor clearColor];
    label2.font = [UIFont systemFontOfSize:20];
    [scrollView_ addSubview:label2];
    
    colorPalet_ = [[UILabel alloc] init];
    colorPalet_.frame = CGRectMake(90, 230, 30, 30);
    colorPalet_.backgroundColor = [UIColor whiteColor];
    [scrollView_ addSubview:colorPalet_];
    
    for (int p = 0; p < 14; p++) {
        UIButton *colorButton = [UIButton buttonWithType:UIButtonTypeCustom];
        colorButton.frame = CGRectMake(5 + (10 + 35) * (p % 7), 275 + 45 * floorf(p / 7), 35, 35);
        colorButton.tag = p;
        switch (p) {
            case 0:
                colorButton.backgroundColor = [UIColor blackColor];
                break;
            case 1:
                colorButton.backgroundColor = [UIColor darkGrayColor];
                break;
            case 2:
                colorButton.backgroundColor = [UIColor lightGrayColor];
                break;
            case 3:
                colorButton.backgroundColor = [UIColor whiteColor];
                break;
            case 4:
                colorButton.backgroundColor = [UIColor grayColor];
                break;
            case 5:
                colorButton.backgroundColor = [UIColor redColor];
                break;
            case 6:
                colorButton.backgroundColor = [UIColor greenColor];
                break;
            case 7:
                colorButton.backgroundColor = [UIColor blueColor];
                break;
            case 8:
                colorButton.backgroundColor = [UIColor cyanColor];
                break;
            case 9:
                colorButton.backgroundColor = [UIColor yellowColor];
                break;
            case 10:
                colorButton.backgroundColor = [UIColor magentaColor];
                break;
            case 11:
                colorButton.backgroundColor = [UIColor orangeColor];
                break;
            case 12:
                colorButton.backgroundColor = [UIColor purpleColor];
                break;
            case 13:
                colorButton.backgroundColor = [UIColor brownColor];
                break;
            default:
                colorButton.backgroundColor = [UIColor whiteColor];
                break;
        }
        [colorButton addTarget:self action:@selector(colorButtonPush:) forControlEvents:UIControlEventTouchUpInside];
        [scrollView_ addSubview:colorButton];
    }
    
    UISlider *alphaSlider = [[UISlider alloc] init];
    alphaSlider.frame = CGRectMake(self.view.frame.size.width/2-125, 400, 250, 50);
    alphaSlider.minimumValue = 0;
    alphaSlider.maximumValue = 1;
    alphaSlider.value = 1;
    [alphaSlider addTarget:self action:@selector(alphaSliderMove:) forControlEvents:UIControlEventValueChanged];
    [scrollView_ addSubview:alphaSlider];
    
    [self.view addSubview:scrollView_];
    
    ColorData = [NSString stringWithFormat:@"%d",3];
    BGIAlpha = 1;
    
}

-(void)colorButtonPush:(id)sender{
    switch ([sender tag]) {
        case 0:
            colorPalet_.backgroundColor = [UIColor blackColor];
            preViewLabel_.textColor = [UIColor blackColor];
            break;
        case 1:
            colorPalet_.backgroundColor = [UIColor darkGrayColor];
            preViewLabel_.textColor = [UIColor darkGrayColor];
            break;
        case 2:
            colorPalet_.backgroundColor = [UIColor lightGrayColor];
            preViewLabel_.textColor = [UIColor lightGrayColor];
            break;
        case 3:
            colorPalet_.backgroundColor = [UIColor whiteColor];
            preViewLabel_.textColor = [UIColor whiteColor];
            break;
        case 4:
            colorPalet_.backgroundColor = [UIColor grayColor];
            preViewLabel_.textColor = [UIColor grayColor];
            break;
        case 5:
            colorPalet_.backgroundColor = [UIColor redColor];
            preViewLabel_.textColor = [UIColor redColor];
            break;
        case 6:
            colorPalet_.backgroundColor = [UIColor greenColor];
            preViewLabel_.textColor = [UIColor greenColor];
            break;
        case 7:
            colorPalet_.backgroundColor = [UIColor blueColor];
            preViewLabel_.textColor = [UIColor blueColor];
            break;
        case 8:
            colorPalet_.backgroundColor = [UIColor cyanColor];
            preViewLabel_.textColor = [UIColor cyanColor];
            break;
        case 9:
            colorPalet_.backgroundColor = [UIColor yellowColor];
            preViewLabel_.textColor = [UIColor yellowColor];
            break;
        case 10:
            colorPalet_.backgroundColor = [UIColor magentaColor];
            preViewLabel_.textColor = [UIColor magentaColor];
            break;
        case 11:
            colorPalet_.backgroundColor = [UIColor orangeColor];
            preViewLabel_.textColor = [UIColor orangeColor];
            break;
        case 12:
            colorPalet_.backgroundColor = [UIColor purpleColor];
            preViewLabel_.textColor = [UIColor purpleColor];
            break;
        case 13:
            colorPalet_.backgroundColor = [UIColor brownColor];
            preViewLabel_.textColor = [UIColor brownColor];
            break;
        default:
            colorPalet_.backgroundColor = [UIColor whiteColor];
            preViewLabel_.textColor = [UIColor whiteColor];
            break;
    }
    ColorData = [NSString stringWithFormat:@"%d",[sender tag]];
}

-(void)alphaSliderMove:(id)sender{
    UISlider *slider = sender;
    
    preViewImageView_.alpha = slider.value;
    alphaLabel_.text = [NSString stringWithFormat:@"%3.f", slider.value*100];
    BGIAlpha = slider.value;
}

-(void)donePush{
    NSLog(@"%d",pictureNumber_);
    //ユーザーデフォルト読み込み
    NSUserDefaults *userDefaults;
    userDefaults = [NSUserDefaults standardUserDefaults];
    alphaData = [NSString stringWithFormat:@"%f",BGIAlpha];
    UIImage *image1 = [UIImage imageNamed:@"frame1.png"];
    
    UIGraphicsBeginImageContext(CGSizeMake(320, 320));
    //[preViewImage_ drawAtPoint:CGPointMake(0, 0)];
    //[image1 drawAtPoint:CGPointMake(0, 0)];
    //UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    //元画像を描画
    CGRect rect;
    rect.origin = CGPointZero;
    rect.size = CGSizeMake(320, 320);
    [preViewImage_ drawInRect:rect];
    
    //重ね合わせる画像を描画
    rect.origin = CGPointMake(0, 0);
    rect.size = CGSizeMake(320, 320);
    [image1 drawInRect:rect];
    
    // 描画した画像を取得する
    UIImage* shrinkedImage;
    shrinkedImage = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    NSData *ImageData = [[NSData alloc] initWithData:UIImagePNGRepresentation(shrinkedImage)];
    
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
        
        [alphaDictionary setObject:alphaData forKey:@"0"];
        [alphaDictionary setObject:alphaData forKey:@"1"];
        [alphaDictionary setObject:alphaData forKey:@"2"];
        [alphaDictionary setObject:alphaData forKey:@"3"];
        [alphaDictionary setObject:alphaData forKey:@"4"];
        [alphaDictionary setObject:alphaData forKey:@"5"];
        [alphaDictionary setObject:alphaData forKey:@"6"];
        
        [userDefaults setObject:alphaDictionary forKey:@"BGIAlpha"];
    }else {
        switch ([userDefaults integerForKey:@"WhichWeek"]) {
            case 0:
                [BGIdictionary setObject:ImageData forKey:@"0"];
                [ColorDctionary setObject:ColorData forKey:@"0"];
                [alphaDictionary setObject:alphaData forKey:@"0"];
                break;
            case 1:
                [BGIdictionary setObject:ImageData forKey:@"1"];
                [ColorDctionary setObject:ColorData forKey:@"1"];
                [alphaDictionary setObject:alphaData forKey:@"1"];
                break;
            case 2:
                [BGIdictionary setObject:ImageData forKey:@"2"];
                [ColorDctionary setObject:ColorData forKey:@"2"];
                [alphaDictionary setObject:alphaData forKey:@"2"];
                break;
            case 3:
                [BGIdictionary setObject:ImageData forKey:@"3"];
                [ColorDctionary setObject:ColorData forKey:@"3"];
                [alphaDictionary setObject:alphaData forKey:@"3"];
                break;
            case 4:
                [BGIdictionary setObject:ImageData forKey:@"4"];
                [ColorDctionary setObject:ColorData forKey:@"4"];
                [alphaDictionary setObject:alphaData forKey:@"4"];
                break;
            case 5:
                [BGIdictionary setObject:ImageData forKey:@"5"];
                [ColorDctionary setObject:ColorData forKey:@"5"];
                [alphaDictionary setObject:alphaData forKey:@"5"];
                break;
            case 6:
                [BGIdictionary setObject:ImageData forKey:@"6"];
                [ColorDctionary setObject:ColorData forKey:@"6"];
                [alphaDictionary setObject:alphaData forKey:@"6"];
                break;
            default:
                break;
        }
        [userDefaults setObject:BGIdictionary forKey:@"BGIName"];
        [userDefaults setObject:ColorDctionary forKey:@"TextColor"];
        [userDefaults setObject:alphaDictionary forKey:@"BGIAlpha"];
    }
    [userDefaults synchronize];
    
    if ([userDefaults integerForKey:@"AllOrIndividual"] == 0) {
        [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:1] animated:YES];
    }else{
        [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:3] animated:YES];
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)shouldAutorotate{
    return NO;
}

-(NSUInteger)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskPortrait;
}

@end
