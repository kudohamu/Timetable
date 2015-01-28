//
//  WeekSelectScene.h
//  Timetable
//
//  Created by 裕悟 on 12/11/13.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WeekSelectScene : UIViewController<UIPickerViewDelegate, UIPickerViewDataSource>{
    NSArray *WeekArray;
    
    UIPickerView *picker;
}

@end
