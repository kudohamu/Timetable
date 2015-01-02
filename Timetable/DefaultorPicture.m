//
//  DefaultorPicture.m
//  Timetable
//
//  Created by 田中 裕悟 on 13/01/31.
//
//

#import "DefaultorPicture.h"
#import "BGISelectScene.h"
#import "PictureSelect.h"

#define MY_BANNER_UNIT_ID  @"d20a47e805bc4496"

@interface DefaultorPicture ()

@end

@implementation DefaultorPicture

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
    
	UIButton *DefaultButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    DefaultButton.frame = CGRectMake(5, self.view.frame.size.height/2 - 100, 310, 50);
    [DefaultButton setTitle:@"規定の画像から選択" forState:UIControlStateNormal];
    [DefaultButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [DefaultButton addTarget:self action:@selector(DefaultButtonPush) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:DefaultButton];
    
    UIButton *PictureButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    PictureButton.frame = CGRectMake(5, self.view.frame.size.height/2, 310, 50);
    [PictureButton setTitle:@"ピクチャフォルダから選択" forState:UIControlStateNormal];
    [PictureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [PictureButton addTarget:self action:@selector(PictureButtonPush) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:PictureButton];
    
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

-(void)DefaultButtonPush{
    BGISelectScene *bgiSelectScene = [self.storyboard instantiateViewControllerWithIdentifier:@"bgiselectscene"];
    [self.navigationController pushViewController:bgiSelectScene animated:YES];
}

-(void)PictureButtonPush{
    PictureSelect *pictureSelect = [self.storyboard instantiateViewControllerWithIdentifier:@"pictureselect"];
    [self.navigationController pushViewController:pictureSelect animated:YES];
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
