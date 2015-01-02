//
//  PictureSelect.m
//  Timetable
//
//  Created by 田中 裕悟 on 13/02/03.
//
//

#import "PictureSelect.h"
#import "PictureEditScene.h"

@interface PictureSelect ()

@end

@implementation PictureSelect

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
    self.view.backgroundColor = [UIColor scrollViewTexturedBackgroundColor];
	//完了ボタン貼り付け
	UIBarButtonItem *Done = [[UIBarButtonItem alloc] initWithTitle:@"追加" style:UIBarButtonItemStyleDone target:self action:@selector(addPush)];
    //削除ボタン貼り付け
	UIBarButtonItem *Delete = [[UIBarButtonItem alloc] initWithTitle:@"削除" style:UIBarButtonItemStyleDone target:self action:@selector(deleteButtonPush)];
    Delete.tintColor = [UIColor redColor];
    
    self.navigationItem.rightBarButtonItems = [NSArray arrayWithObjects:Done,Delete,nil];
    
    self.title = @"背景画像選択";
    
    //ユーザーデフォルト読み込み
    NSUserDefaults *userDefaults;
    userDefaults = [NSUserDefaults standardUserDefaults];
    
    picNumber_ = [userDefaults integerForKey:@"PictureNumber"];
    
    deleteFlag = NO;
}

-(void)drawPicture{
    //ユーザーデフォルト読み込み
    NSUserDefaults *userDefaults;
    userDefaults = [NSUserDefaults standardUserDefaults];
    
    scrollView_ = [[UIScrollView alloc] init];
    scrollView_.frame = self.view.bounds;
    scrollView_.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    scrollView_.pagingEnabled = NO;
    scrollView_.showsHorizontalScrollIndicator = YES;
    scrollView_.showsVerticalScrollIndicator = YES;
    scrollView_.delegate = self;
	scrollView_.contentSize = CGSizeMake(self.view.frame.size.width, 155 * floorf((1+picNumber_) / 2) + 5);
    
    //NSLog(@"%d¥n",picNumber_);
    for (int p = 0; p < picNumber_; p++) {
        UIButton *pictureButton = [UIButton buttonWithType:UIButtonTypeCustom];
        pictureButton.frame = CGRectMake(5 + 8 * (p % 2) + 150 * (p % 2), 5 + (150 + 5) * (floorf(p / 2)), 150, 150);
        [pictureButton setImage:[UIImage imageWithData:[userDefaults dataForKey:[NSString stringWithFormat:@"Image%d",p]]] forState:UIControlStateNormal];
        pictureButton.tag = p;
        [pictureButton addTarget:self action:@selector(pictureButtonPush:) forControlEvents:UIControlEventTouchUpInside];
        [scrollView_ addSubview:pictureButton];
    }
    [self.view addSubview:scrollView_];
}

-(void)pictureButtonPush:(id)sender{
    
    if (!deleteFlag) {
        PictureEditScene *pictureEditScene = [self.storyboard instantiateViewControllerWithIdentifier:@"picedi"];
        pictureEditScene.pictureNumber_ = [sender tag];
        [self.navigationController pushViewController:pictureEditScene animated:YES];
    }else {
        cancelButtonNumber_ = [sender tag];
        
        UIAlertView *alert = [[UIAlertView alloc] init];
        alert.delegate = self;
        alert.title = @"この画像を削除しますか？";
        [alert addButtonWithTitle:@"いいえ"];
        [alert addButtonWithTitle:@"はい"];
        alert.cancelButtonIndex = 0;
        [alert show];
    }
}

-(void)alertView:(UIAlertView*)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if (buttonIndex != alertView.cancelButtonIndex) {
        //ユーザーデフォルト読み込み
        NSUserDefaults *userDefaults;
        userDefaults = [NSUserDefaults standardUserDefaults];
        
        for (int p = cancelButtonNumber_; p < picNumber_-1; p++) {
            [userDefaults setObject:[userDefaults dataForKey:[NSString stringWithFormat:@"Image%d",p+1]] forKey:[NSString stringWithFormat:@"Image%d",p]];
        }
        [userDefaults removeObjectForKey:[NSString stringWithFormat:@"Image%d",picNumber_-1]];
        picNumber_--;
        [userDefaults setInteger:picNumber_ forKey:@"PictureNumber"];
        
        [scrollView_ removeFromSuperview];
        [self drawPicture];
    }
}

-(void)addPush{
    UIImagePickerControllerSourceType *sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    if ([UIImagePickerController isSourceTypeAvailable:sourceType]) {
        UIImagePickerController *picker = [[UIImagePickerController alloc] init];
        picker.delegate = self;
        picker.sourceType = sourceType;
        picker.allowsEditing = YES;
        [self presentViewController:picker animated:YES completion:nil];
    }
}

-(void)deleteButtonPush{
    //削除ボタン貼り付け
	UIBarButtonItem *DeleteDone = [[UIBarButtonItem alloc] initWithTitle:@"完了" style:UIBarButtonItemStyleDone target:self action:@selector(deleteDonePush)];
    DeleteDone.tintColor = [UIColor redColor];
    self.navigationItem.rightBarButtonItems = [NSArray arrayWithObjects:DeleteDone,nil];
    self.title = @"削除画像選択";
    
    deleteFlag = YES;
}

-(void)deleteDonePush{
    //完了ボタン貼り付け
	UIBarButtonItem *Done = [[UIBarButtonItem alloc] initWithTitle:@"追加" style:UIBarButtonItemStyleDone target:self action:@selector(addPush)];
    //削除ボタン貼り付け
	UIBarButtonItem *Delete = [[UIBarButtonItem alloc] initWithTitle:@"削除" style:UIBarButtonItemStyleDone target:self action:@selector(deleteButtonPush)];
    Delete.tintColor = [UIColor redColor];
    
    self.navigationItem.rightBarButtonItems = [NSArray arrayWithObjects:Done,Delete,nil];
    self.title = @"背景画像選択";
    
    deleteFlag = NO;
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    
    originalImage_ = [info objectForKey:UIImagePickerControllerEditedImage];

    //ユーザーデフォルト読み込み
    NSUserDefaults *userDefaults;
    userDefaults = [NSUserDefaults standardUserDefaults];
    
    //  きりたいサイズ
    CGSize size = CGSizeMake(320, 320);
    
    UIGraphicsBeginImageContext(size);
    [originalImage_ drawInRect:CGRectMake(0, 0, 320, 320)];
    editedImage_ = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    // JPEGのデータとしてNSDataを作成
    NSData *data = UIImageJPEGRepresentation(editedImage_, 0.5);
    
    //イメージ名
    NSString *imageName = [NSString stringWithFormat:@"Image%d",picNumber_];
    //登録
    [userDefaults setObject:data forKey:imageName];
    picNumber_++;
    [userDefaults setInteger:picNumber_ forKey:@"PictureNumber"];
    [userDefaults synchronize];
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)viewWillAppear:(BOOL)animated{
    [scrollView_ removeFromSuperview];
    [self drawPicture];
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
