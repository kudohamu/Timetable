//
//  PictureSelect.h
//  Timetable
//
//  Created by 田中 裕悟 on 13/02/03.
//
//

#import <UIKit/UIKit.h>
#import "PictureEditScene.h"

@interface PictureSelect : UIViewController<UINavigationControllerDelegate,UIImagePickerControllerDelegate,UIScrollViewDelegate>{
    int picNumber_, cancelButtonNumber_;
    BOOL deleteFlag;
    
    UIImageView *originalImageView_, *editedImageView_;
    UIImage *originalImage_, *editedImage_;
    UIScrollView *scrollView_;
}
-(void)pictureButtonPush:(id)sender;
@end
