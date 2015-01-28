//
//  TimeSetScene.h
//  Timetable
//
//  Created by 裕悟 on 12/11/11.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TimeSetScene : UIViewController<UIPickerViewDelegate, UIPickerViewDataSource>{
    UIPickerView *picker;
    NSArray* hourArray;
    NSArray* minuteArray;
}

@property NSNumber* selectNumber;

-(IBAction)DonePush;
@end
