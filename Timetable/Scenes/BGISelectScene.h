//
//  BGISelectScene.h
//  Timetable
//
//  Created by 裕悟 on 12/11/20.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BGISelectScene : UIViewController{

    UIImageView *selectView0,*selectView1,*selectView2;
    UIImage *select0,*select1,*select2;
    UIImage *selectImage;
    NSString *ColorData;
    
    NSMutableDictionary *BGIdictionary, *ColorDctionary, *alphaDictionary;
    NSDictionary *originBGIdictionary, *originColorDictionary, *originAlphaDictionary;
}

@end
