//
//  ShowAllTableScene.m
//  Timetable
//
//  Created by 田中 裕悟 on 13/04/10.
//
//

#import "ShowAllTableScene.h"

@interface ShowAllTableScene ()

@end

@implementation ShowAllTableScene

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
    
    [[UIApplication sharedApplication] setStatusBarHidden:YES];
    self.navigationController.navigationBarHidden = YES;
    
    self.view.backgroundColor = [UIColor blackColor];
    
    //ユーザーデフォルト読み込み
    NSUserDefaults *userDefaults;
    userDefaults = [NSUserDefaults standardUserDefaults];
    
    
    ForS_ = [[NSArray alloc] initWithObjects:@"F", @"S", nil];
    
    weekArray_ = [[NSArray alloc] initWithObjects:@"Mon", @"Tue", @"Wed", @"Thu", @"Fri", @"Sat", @"Sun", nil];
    
    allTableScrollView_ = [[UIScrollView alloc] init];
    allTableScrollView_.frame = self.view.bounds;
    allTableScrollView_.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    allTableScrollView_.contentSize = CGSizeMake(self.view.frame.size.height/6 * ([[userDefaults objectForKey:@"WeekNumber"] intValue] + 5 + 1),  self.view.frame.size.width/6 * ([[userDefaults objectForKey:@"TableNumber"] intValue] + 1));
    allTableScrollView_.bounces = NO;
    allTableScrollView_.delegate = self;
    allTableScrollView_.minimumZoomScale = 0.5;
    //allTableScrollView_.transform = CGAffineTransformMakeRotation(90);
    
    baseView_ = [[UIView alloc] init];
    [baseView_ setFrame:CGRectMake(0, 0, self.view.frame.size.height/6 * ([[userDefaults objectForKey:@"WeekNumber"] intValue] + 5 + 1), self.view.frame.size.width/6 * ([[userDefaults objectForKey:@"TableNumber"] intValue] + 1))];
    baseView_.backgroundColor = [UIColor clearColor];
    
    emptyCell_ = [[UILabel alloc] init];
    emptyCell_.frame = CGRectMake(0, 0, self.view.frame.size.height/6 - 1, self.view.frame.size.width/6 - 1);
    emptyCell_.backgroundColor = [UIColor colorWithRed:1 green:0.71 blue:0.77 alpha:1];
    [baseView_ addSubview:emptyCell_];
    
	for (int i = 0; i < [[userDefaults objectForKey:@"TableNumber"] intValue]; i++) {
        showListHour_[i] = [[UILabel alloc] init];
        showListHour_[i].backgroundColor = [UIColor colorWithRed:1 green:0.71 blue:0.77 alpha:1];
        showListHour_[i].frame = CGRectMake(0, self.view.frame.size.width/6*(i + 1), self.view.frame.size.height/6 - 1, self.view.frame.size.width/6 - 1);
        showListHour_[i].text = [userDefaults objectForKey:[NSString stringWithFormat:@"TableTime%d", i + 1]];;
        showListHour_[i].textAlignment = NSTextAlignmentCenter;
        showListHour_[i].adjustsFontSizeToFitWidth = YES;
        showListHour_[i].textColor = [UIColor colorWithRed:0.55 green:0.54 blue:0.54 alpha:1];
        showListHour_[i].font = [UIFont boldSystemFontOfSize:20];
        [baseView_ addSubview:showListHour_[i]];
    }
    
    for (int i = 0; i < [[userDefaults objectForKey:@"WeekNumber"] intValue]+5; i++) {
        showListWeek_[i] = [[UILabel alloc] init];
        showListWeek_[i].backgroundColor = [UIColor colorWithRed:1 green:0.71 blue:0.77 alpha:1];
        showListWeek_[i].frame = CGRectMake(self.view.frame.size.height/6*(i + 1), 0, self.view.frame.size.height/6 - 1, self.view.frame.size.width/6 - 1);
        showListWeek_[i].text = [weekArray_ objectAtIndex:i];
        showListWeek_[i].textAlignment = NSTextAlignmentCenter;
        showListWeek_[i].textColor = [UIColor colorWithRed:0.55 green:0.54 blue:0.54 alpha:1];
        showListWeek_[i].font = [UIFont boldSystemFontOfSize:20];
        [baseView_ addSubview:showListWeek_[i]];
    }
    
    for (int j = 0; j < [[userDefaults objectForKey:@"TableNumber"] intValue]; j++) {
        for (int i = 0; i < [[userDefaults objectForKey:@"WeekNumber"] intValue]+5; i++) {
            showList_[i][j] = [[UILabel alloc] init];
            showList_[i][j].backgroundColor = [UIColor whiteColor];
            showList_[i][j].frame = CGRectMake(self.view.frame.size.height/6*(i + 1), self.view.frame.size.width/6*(j + 1), self.view.frame.size.height/6 - 1, self.view.frame.size.width/6 - 1);
            showList_[i][j].text = [userDefaults objectForKey:[NSString stringWithFormat:@"%@%@%dLessonName", [ForS_ objectAtIndex:[[userDefaults objectForKey:@"FirstOrSecond"] intValue]], [weekArray_ objectAtIndex:i], j+1]];
            showList_[i][j].textAlignment = NSTextAlignmentCenter;
            showList_[i][j].textColor = [UIColor blackColor];
            showList_[i][j].numberOfLines = 2;
            showList_[i][j].font = [UIFont systemFontOfSize:10];
            [baseView_ addSubview:showList_[i][j]];
        }
    }
    
    [allTableScrollView_ addSubview:baseView_];
    
    [self.view addSubview:allTableScrollView_];
    
    UIImageView *catImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"cat.png"]];
    [catImageView setFrame:CGRectMake(self.view.frame.size.height - 280 * 0.7, self.view.frame.size.width - 180 * 0.7, 280 * 0.7, 180 * 0.7)];
    [catImageView setAlpha:0.2];
    [catImageView setContentMode:UIViewContentModeScaleAspectFill];
    [self.view addSubview:catImageView];
    
    returnButton_ = [UIButton buttonWithType:UIButtonTypeCustom];
    [returnButton_ setFrame:CGRectMake(self.view.frame.size.height-50, 0, 50, 50)];
    [returnButton_ setTitle:@"×" forState:UIControlStateNormal];
    [returnButton_ setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [returnButton_ setBackgroundColor:[UIColor clearColor]];
    [returnButton_.titleLabel setFont:[UIFont systemFontOfSize:40]];
    [returnButton_ addTarget:self action:@selector(returnButtonPush) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:returnButton_];
}

-(void)returnButtonPush{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(UIColor*)returnWeekColor:(int)weekNumber{
    switch (weekNumber) {
        case 0:
            return [UIColor colorWithRed:1 green:0.5 blue:0 alpha:1];
            break;
        case 1:
            return [UIColor colorWithRed:1 green:0.42 blue:0.42 alpha:1];
            break;
        case 2:
            return [UIColor colorWithRed:0.39 green:0.72 blue:1 alpha:1];
            break;
        case 3:
            return [UIColor colorWithRed:0.31 green:0.93 blue:0.58 alpha:1];
            break;
        case 4:
            return [UIColor colorWithRed:0.93 green:0.93 blue:0 alpha:1];
            break;
        case 5:
            return [UIColor colorWithRed:1 green:0.65 blue:0.31 alpha:1];
            break;
        case 6:
            return [UIColor colorWithRed:1 green:0.41 blue:0.35 alpha:0.8];
            break;
        default:
            return [UIColor blackColor];
            break;
    }
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    return baseView_;
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
    return UIInterfaceOrientationMaskLandscape;
}

@end
