//
//  TableSelectScene.h
//  Timetable
//
//  Created by 裕悟 on 12/11/13.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableSelectScene : UIViewController<UIPickerViewDelegate, UIPickerViewDataSource>{
    NSArray *TableArray;
    
    UIPickerView *picker;
}
@end
