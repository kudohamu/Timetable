//
//  ValuationRatioScene.h
//  Timetable
//
//  Created by 裕悟 on 12/11/11.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ValuationRatioScene : UIViewController<UIPickerViewDelegate, UIPickerViewDataSource>{
    NSArray* RatioArray;
    
    UIPickerView* picker;
    
}
@property NSString* RatioName;

-(IBAction)DonePush;
@end
