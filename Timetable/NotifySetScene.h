//
//  NotifySetScene.h
//  Timetable
//
//  Created by 裕悟 on 12/11/15.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NotifySetScene : UIViewController<UIPickerViewDelegate, UIPickerViewDataSource>{
    NSArray *TimeArray;
    
    UIPickerView *picker;
}

@end
