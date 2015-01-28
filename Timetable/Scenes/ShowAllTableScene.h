//
//  ShowAllTableScene.h
//  Timetable
//
//  Created by 田中 裕悟 on 13/04/10.
//
//

#import <UIKit/UIKit.h>

@interface ShowAllTableScene : UIViewController<UIScrollViewDelegate>{
    NSString *tableTime_[10];
    
    UIScrollView *allTableScrollView_;
    
    UIView *baseView_;
    
    UILabel *showList_[7][10], *showListWeek_[7], *showListHour_[10], *emptyCell_;
    
    NSArray *weekArray_, *ForS_;
    
    UIButton *returnButton_;
}

@end
