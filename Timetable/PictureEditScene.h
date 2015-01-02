//
//  PictureEditScene.h
//  Timetable
//
//  Created by 田中 裕悟 on 13/02/04.
//
//

#import <UIKit/UIKit.h>

@interface PictureEditScene : UIViewController{
    UIImageView *preViewImageView_;
    UIImage *preViewImage_;
    UILabel *colorPalet_, *preViewLabel_, *alphaLabel_;
    
    NSMutableDictionary *BGIdictionary, *ColorDctionary, *alphaDictionary;
    NSDictionary *originBGIdictionary, *originColorDictionary, *originAlphaDictionary;
    NSString *ColorData, *alphaData;
    float BGIAlpha;
    
    UIScrollView *scrollView_;
}
@property int pictureNumber_;
@end
