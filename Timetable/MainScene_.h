//
//  MainScene_.h
//  Timetable
//
//  Created by 裕悟 on 12/11/08.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainScene_ : UIViewController{
    
    UIScrollView *scrollView;
    
    NSDate *setHomeworkDate;
    
    NSArray *segments;
    
    NSArray *week, *number, *ForS, *absenceArray, *latenessArray, *weekJapanese_;
    
    NSInteger inte;
    
    NSArray *TopTime;
    NSDictionary *FirstValueUserDefaults;
    
    UILabel *base;
    
    __weak IBOutlet UIBarButtonItem *viewAll;
    
    IBOutlet UIButton *TableButtonView;
    
    
    NSString *tableTime_[10], *startTime_[10], *endTime_[10], *lessonName_[10], *professorName_[10], *roomName_[10], *valuationBasis1_[10], *valuationBasis2_[10], *valuationRatio1_[10], *valuationRatio2_[10], *homework_[10], *absence_[10], *lateness_[10], *memorandum_[10];
    
    UILabel *tableTimeLabel_[10], *startTimeLabel_[10], *endTimeLabel_[10], *lessonNameLabel_[10], *professorNameLabel_[10], *roomNameLabel_[10], *valuationBasis1Label_[10], *valuationBasis2Label_[10], *valuationRatio1Label_[10], *valuationRatio2Label_[10], *homeworkLabel_[10], *absenceLabel_[10], *latenessLabel_[10], *waveLabel_[10], *memorandumLabel_[10];
    
    
    
    UIButton *timeTableButton_[10];
    UIImage *bgImage_[10];
    
    //ローカル通知を作成
    UILocalNotification *homeworkCall;
    
    UIColor *textColor;
    UIImage *selectImage;
    NSDictionary *BGIDictionary, *ColorDictionary ,*AlphaDictionary;
    float BGIAlpha;
    
}
- (IBAction)viewAllPush:(id)sender;

-(IBAction)Button1;

-(IBAction)TabelButton;
@end
