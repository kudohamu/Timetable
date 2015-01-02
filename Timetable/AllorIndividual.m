//
//  AllorIndividual.m
//  Timetable
//
//  Created by 田中 裕悟 on 13/01/31.
//
//

#import "AllorIndividual.h"
#import "DefaultorPicture.h"
#import "WeekChoice.h"

#define MY_BANNER_UNIT_ID  @"d20a47e805bc4496"

@interface AllorIndividual ()

@end

@implementation AllorIndividual

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
    self.view.backgroundColor = [UIColor viewFlipsideBackgroundColor];
    
    //ユーザーデフォルト読み込み
    NSUserDefaults *userDefaults;
    userDefaults = [NSUserDefaults standardUserDefaults];
    
	UIButton *AllButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    AllButton.frame = CGRectMake(5, self.view.frame.size.height/2 - 100, 310, 50);
    [AllButton setTitle:@"一括設定" forState:UIControlStateNormal];
    [AllButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [AllButton addTarget:self action:@selector(allButtonPush) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:AllButton];
    
    UIButton *IndividualButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    IndividualButton.frame = CGRectMake(5, self.view.frame.size.height/2, 310, 50);
    [IndividualButton setTitle:@"曜日ごとに設定" forState:UIControlStateNormal];
    [IndividualButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [IndividualButton addTarget:self action:@selector(individualButtonPush) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:IndividualButton];
    
    bannerView_ = [[GADBannerView alloc] initWithFrame:CGRectMake(0.0, self.view.frame.size.height-GAD_SIZE_320x50.height-50, GAD_SIZE_320x50.width, GAD_SIZE_320x50.height)];
    
    // 広告の「ユニット ID」を指定する。これは AdMob パブリッシャー ID です。
    bannerView_.adUnitID = MY_BANNER_UNIT_ID;
    bannerView_.delegate = self;
    
    // ユーザーに広告を表示した場所に後で復元する UIViewController をランタイムに知らせて
    // ビュー階層に追加する。
    bannerView_.rootViewController = self;
    [self.view addSubview:bannerView_];
    
    // 一般的なリクエストを行って広告を読み込む。
    // For Testing
    /*
    GADRequest *rq = [GADRequest request];
    //rq.testing = YES;
    [bannerView_ loadRequest:rq];
     */
}

-(void)allButtonPush{
    //ユーザーデフォルト読み込み
    NSUserDefaults *userDefaults;
    userDefaults = [NSUserDefaults standardUserDefaults];
    
    [userDefaults setInteger:0 forKey:@"AllOrIndividual"];
    [userDefaults synchronize];
    
    DefaultorPicture *defaultorPicture = [self.storyboard instantiateViewControllerWithIdentifier:@"defaultorpicture"];
    [self.navigationController pushViewController:defaultorPicture animated:YES];
}

-(void)individualButtonPush{
    //ユーザーデフォルト読み込み
    NSUserDefaults *userDefaults;
    userDefaults = [NSUserDefaults standardUserDefaults];
    
    [userDefaults setInteger:1 forKey:@"AllOrIndividual"];
    [userDefaults synchronize];
    WeekChoice *weekChoice = [self.storyboard instantiateViewControllerWithIdentifier:@"weekchoice"];
    [self.navigationController pushViewController:weekChoice animated:YES];
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
