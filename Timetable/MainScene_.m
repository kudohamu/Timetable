//
//  MainScene_.m
//  Timetable
//
//  Created by 裕悟 on 12/11/08.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "MainScene_.h"
#import "NaviTextInputScene.h"
#import "TextInputScene_.h"
#import "GADBannerView.h"
#import "ShowAllTableScene.h"

#define MY_BANNER_UNIT_ID  @"d20a47e805bc4496"

@interface MainScene_ (){
}
@end

@implementation MainScene_

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [[UIApplication sharedApplication] setStatusBarHidden:YES];
    
    //初期変数
    {
    FirstValueUserDefaults = [NSDictionary dictionaryWithObjectsAndKeys:
                              @"5",@"TableNumber",
                              @"0",@"WeekNumber",
                              @"1",@"SelectedIndex",
                              @"0",@"FirstOrSecond",
                              @"16",@"NotificationTime",
                              @"1",@"NotificationOn",
                              
                              @"0:00", @"1StartTime", 
                              @"12:00", @"1EndTime",
                              @"0:00", @"2StartTime", 
                              @"12:00", @"2EndTime",
                              @"0:00", @"3StartTime", 
                              @"12:00", @"3EndTime",
                              @"0:00", @"4StartTime", 
                              @"12:00", @"4EndTime",
                              @"0:00", @"5StartTime", 
                              @"12:00", @"5EndTime",
                              @"0:00", @"6StartTime", 
                              @"12:00", @"6EndTime",
                              @"0:00", @"7StartTime", 
                              @"12:00", @"7EndTime",
                              @"0:00", @"8StartTime", 
                              @"12:00", @"8EndTime",
                              @"0:00", @"9StartTime", 
                              @"12:00", @"9EndTime",
                              @"0:00", @"10StartTime", 
                              @"12:00", @"10EndTime",
                              
                              @"0", @"Start1-1",
                              @"0", @"Start1-2",
                              @"0", @"Start2-1",
                              @"0", @"Start2-2",
                              @"0", @"Start3-1",
                              @"0", @"Start3-2",
                              @"0", @"Start4-1",
                              @"0", @"Start4-2",
                              @"0", @"Start5-1",
                              @"0", @"Start5-2",
                              @"0", @"Start6-1",
                              @"0", @"Start6-2",
                              @"0", @"Start7-1",
                              @"0", @"Start7-2",
                              @"0", @"Start8-1",
                              @"0", @"Start8-2",
                              @"0", @"Start9-1",
                              @"0", @"Start9-2",
                              @"0", @"Start10-1",
                              @"0", @"Start10-2",
                              
                              @"0", @"End1-1",
                              @"0", @"End1-2",
                              @"0", @"End2-1",
                              @"0", @"End2-2",
                              @"0", @"End3-1",
                              @"0", @"End3-2",
                              @"0", @"End4-1",
                              @"0", @"End4-2",
                              @"0", @"End5-1",
                              @"0", @"End5-2",
                              @"0", @"End6-1",
                              @"0", @"End6-2",
                              @"0", @"End7-1",
                              @"0", @"End7-2",
                              @"0", @"End8-1",
                              @"0", @"End8-2",
                              @"0", @"End9-1",
                              @"0", @"End9-2",
                              @"0", @"End10-1",
                              @"0", @"End10-2",
                              
                              @"", @"FMon1LessonName",
                              @"", @"FMon2LessonName",
                              @"", @"FMon3LessonName",
                              @"", @"FMon4LessonName",
                              @"", @"FMon5LessonName",
                              @"", @"FMon6LessonName",
                              @"", @"FMon7LessonName",
                              @"", @"FMon8LessonName",
                              @"", @"FMon9LessonName",
                              @"", @"FMon10LessonName",
                              
                              @"", @"FTue1LessonName",
                              @"", @"FTue2LessonName",
                              @"", @"FTue3LessonName",
                              @"", @"FTue4LessonName",
                              @"", @"FTue5LessonName",
                              @"", @"FTue6LessonName",
                              @"", @"FTue7LessonName",
                              @"", @"FTue8LessonName",
                              @"", @"FTue9LessonName",
                              @"", @"FTue10LessonName",
                              
                              @"", @"FWed1LessonName",
                              @"", @"FWed2LessonName",
                              @"", @"FWed3LessonName",
                              @"", @"FWed4LessonName",
                              @"", @"FWed5LessonName",
                              @"", @"FWed6LessonName",
                              @"", @"FWed7LessonName",
                              @"", @"FWed8LessonName",
                              @"", @"FWed9LessonName",
                              @"", @"FWed10LessonName",
                              
                              @"", @"FThu1LessonName",
                              @"", @"FThu2LessonName",
                              @"", @"FThu3LessonName",
                              @"", @"FThu4LessonName",
                              @"", @"FThu5LessonName",
                              @"", @"FThu6LessonName",
                              @"", @"FThu7LessonName",
                              @"", @"FThu8LessonName",
                              @"", @"FThu9LessonName",
                              @"", @"FThu10LessonName",
                              
                              @"", @"FFri1LessonName",
                              @"", @"FFri2LessonName",
                              @"", @"FFri3LessonName",
                              @"", @"FFri4LessonName",
                              @"", @"FFri5LessonName",
                              @"", @"FFri6LessonName",
                              @"", @"FFri7LessonName",
                              @"", @"FFri8LessonName",
                              @"", @"FFri9LessonName",
                              @"", @"FFri10LessonName",
                              
                              @"", @"FSat1LessonName",
                              @"", @"FSat2LessonName",
                              @"", @"FSat3LessonName",
                              @"", @"FSat4LessonName",
                              @"", @"FSat5LessonName",
                              @"", @"FSat6LessonName",
                              @"", @"FSat7LessonName",
                              @"", @"FSat8LessonName",
                              @"", @"FSat9LessonName",
                              @"", @"FSat10LessonName",
                              
                              @"", @"FSun1LessonName",
                              @"", @"FSun2LessonName",
                              @"", @"FSun3LessonName",
                              @"", @"FSun4LessonName",
                              @"", @"FSun5LessonName",
                              @"", @"FSun6LessonName",
                              @"", @"FSun7LessonName",
                              @"", @"FSun8LessonName",
                              @"", @"FSun9LessonName",
                              @"", @"FSun10LessonName",
                              
                              @"", @"FMon1ProfessorName", 
                              @"", @"FMon2ProfessorName", 
                              @"", @"FMon3ProfessorName", 
                              @"", @"FMon4ProfessorName", 
                              @"", @"FMon5ProfessorName", 
                              @"", @"FMon6ProfessorName", 
                              @"", @"FMon7ProfessorName", 
                              @"", @"FMon8ProfessorName",
                              @"", @"FMon9ProfessorName", 
                              @"", @"FMon10ProfessorName", 
                              
                              @"", @"FTue1ProfessorName",
                              @"", @"FTue2ProfessorName",
                              @"", @"FTue3ProfessorName",
                              @"", @"FTue4ProfessorName",
                              @"", @"FTue5ProfessorName",
                              @"", @"FTue6ProfessorName",
                              @"", @"FTue7ProfessorName",
                              @"", @"FTue8ProfessorName",
                              @"", @"FTue9ProfessorName",
                              @"", @"FTue10ProfessorName",
                              
                              @"", @"FWed1ProfessorName",
                              @"", @"FWed2ProfessorName",
                              @"", @"FWed3ProfessorName",
                              @"", @"FWed4ProfessorName",
                              @"", @"FWed5ProfessorName",
                              @"", @"FWed6ProfessorName",
                              @"", @"FWed7ProfessorName",
                              @"", @"FWed8ProfessorName",
                              @"", @"FWed9ProfessorName",
                              @"", @"FWed10ProfessorName",
                              
                              @"", @"FThu1ProfessorName",
                              @"", @"FThu2ProfessorName",
                              @"", @"FThu3ProfessorName",
                              @"", @"FThu4ProfessorName",
                              @"", @"FThu5ProfessorName",
                              @"", @"FThu6ProfessorName",
                              @"", @"FThu7ProfessorName",
                              @"", @"FThu8ProfessorName",
                              @"", @"FThu9ProfessorName",
                              @"", @"FThu10ProfessorName",
                              
                              @"", @"FFri1ProfessorName",
                              @"", @"FFri2ProfessorName",
                              @"", @"FFri3ProfessorName",
                              @"", @"FFri4ProfessorName",
                              @"", @"FFri5ProfessorName",
                              @"", @"FFri6ProfessorName",
                              @"", @"FFri7ProfessorName",
                              @"", @"FFri8ProfessorName",
                              @"", @"FFri9ProfessorName",
                              @"", @"FFri10ProfessorName",
                              
                              @"", @"FSat1ProfessorName",
                              @"", @"FSat2ProfessorName",
                              @"", @"FSat3ProfessorName",
                              @"", @"FSat4ProfessorName",
                              @"", @"FSat5ProfessorName",
                              @"", @"FSat6ProfessorName",
                              @"", @"FSat7ProfessorName",
                              @"", @"FSat8ProfessorName",
                              @"", @"FSat9ProfessorName",
                              @"", @"FSat10ProfessorName",
                              
                              @"", @"FSun1ProfessorName",
                              @"", @"FSun2ProfessorName",
                              @"", @"FSun3ProfessorName",
                              @"", @"FSun4ProfessorName",
                              @"", @"FSun5ProfessorName",
                              @"", @"FSun6ProfessorName",
                              @"", @"FSun7ProfessorName",
                              @"", @"FSun8ProfessorName",
                              @"", @"FSun9ProfessorName",
                              @"", @"FSun10ProfessorName",
                              
                              @"", @"FMon1RoomName",
                              @"", @"FMon2RoomName",
                              @"", @"FMon3RoomName",
                              @"", @"FMon4RoomName",
                              @"", @"FMon5RoomName",
                              @"", @"FMon6RoomName",
                              @"", @"FMon7RoomName",
                              @"", @"FMon8RoomName",
                              @"", @"FMon9RoomName",
                              @"", @"FMon10RoomName",
                              
                              @"", @"FTue1RoomName",
                              @"", @"FTue2RoomName",
                              @"", @"FTue3RoomName",
                              @"", @"FTue4RoomName",
                              @"", @"FTue5RoomName",
                              @"", @"FTue6RoomName",
                              @"", @"FTue7RoomName",
                              @"", @"FTue8RoomName",
                              @"", @"FTue9RoomName",
                              @"", @"FTue10RoomName",
                              
                              @"", @"FWed1RoomName",
                              @"", @"FWed2RoomName",
                              @"", @"FWed3RoomName",
                              @"", @"FWed4RoomName",
                              @"", @"FWed5RoomName",
                              @"", @"FWed6RoomName",
                              @"", @"FWed7RoomName",
                              @"", @"FWed8RoomName",
                              @"", @"FWed9RoomName",
                              @"", @"FWed10RoomName",
                              
                              @"", @"FThu1RoomName",
                              @"", @"FThu2RoomName",
                              @"", @"FThu3RoomName",
                              @"", @"FThu4RoomName",
                              @"", @"FThu5RoomName",
                              @"", @"FThu6RoomName",
                              @"", @"FThu7RoomName",
                              @"", @"FThu8RoomName",
                              @"", @"FThu9RoomName",
                              @"", @"FThu10RoomName",
                              
                              @"", @"FFri1RoomName",
                              @"", @"FFri2RoomName",
                              @"", @"FFri3RoomName",
                              @"", @"FFri4RoomName",
                              @"", @"FFri5RoomName",
                              @"", @"FFri6RoomName",
                              @"", @"FFri7RoomName",
                              @"", @"FFri8RoomName",
                              @"", @"FFri9RoomName",
                              @"", @"FFri10RoomName",
                              
                              @"", @"FSat1RoomName",
                              @"", @"FSat2RoomName",
                              @"", @"FSat3RoomName",
                              @"", @"FSat4RoomName",
                              @"", @"FSat5RoomName",
                              @"", @"FSat6RoomName",
                              @"", @"FSat7RoomName",
                              @"", @"FSat8RoomName",
                              @"", @"FSat9RoomName",
                              @"", @"FSat10RoomName",
                              
                              @"", @"FSun1RoomName",
                              @"", @"FSun2RoomName",
                              @"", @"FSun3RoomName",
                              @"", @"FSun4RoomName",
                              @"", @"FSun5RoomName",
                              @"", @"FSun6RoomName",
                              @"", @"FSun7RoomName",
                              @"", @"FSun8RoomName",
                              @"", @"FSun9RoomName",
                              @"", @"FSun10RoomName",
                              
                              @"", @"FMon1ValuationBasis1",
                              @"", @"FMon2ValuationBasis1",
                              @"", @"FMon3ValuationBasis1",
                              @"", @"FMon4ValuationBasis1",
                              @"", @"FMon5ValuationBasis1",
                              @"", @"FMon6ValuationBasis1",
                              @"", @"FMon7ValuationBasis1",
                              @"", @"FMon8ValuationBasis1",
                              @"", @"FMon9ValuationBasis1",
                              @"", @"FMon10ValuationBasis1",
                              
                              @"", @"FTue1ValuationBasis1",
                              @"", @"FTue2ValuationBasis1",
                              @"", @"FTue3ValuationBasis1",
                              @"", @"FTue4ValuationBasis1",
                              @"", @"FTue5ValuationBasis1",
                              @"", @"FTue6ValuationBasis1",
                              @"", @"FTue7ValuationBasis1",
                              @"", @"FTue8ValuationBasis1",
                              @"", @"FTue9ValuationBasis1",
                              @"", @"FTue10ValuationBasis1",
                              
                              @"", @"FWed1ValuationBasis1",
                              @"", @"FWed2ValuationBasis1",
                              @"", @"FWed3ValuationBasis1",
                              @"", @"FWed4ValuationBasis1",
                              @"", @"FWed5ValuationBasis1",
                              @"", @"FWed6ValuationBasis1",
                              @"", @"FWed7ValuationBasis1",
                              @"", @"FWed8ValuationBasis1",
                              @"", @"FWed9ValuationBasis1",
                              @"", @"FWed10ValuationBasis1",
                              
                              @"", @"FThu1ValuationBasis1",
                              @"", @"FThu2ValuationBasis1",
                              @"", @"FThu3ValuationBasis1",
                              @"", @"FThu4ValuationBasis1",
                              @"", @"FThu5ValuationBasis1",
                              @"", @"FThu6ValuationBasis1",
                              @"", @"FThu7ValuationBasis1",
                              @"", @"FThu8ValuationBasis1",
                              @"", @"FThu9ValuationBasis1",
                              @"", @"FThu10ValuationBasis1",
                              
                              @"", @"FFri1ValuationBasis1",
                              @"", @"FFri2ValuationBasis1",
                              @"", @"FFri3ValuationBasis1",
                              @"", @"FFri4ValuationBasis1",
                              @"", @"FFri5ValuationBasis1",
                              @"", @"FFri6ValuationBasis1",
                              @"", @"FFri7ValuationBasis1",
                              @"", @"FFri8ValuationBasis1",
                              @"", @"FFri9ValuationBasis1",
                              @"", @"FFri10ValuationBasis1",
                              
                              @"", @"FSat1ValuationBasis1",
                              @"", @"FSat2ValuationBasis1",
                              @"", @"FSat3ValuationBasis1",
                              @"", @"FSat4ValuationBasis1",
                              @"", @"FSat5ValuationBasis1",
                              @"", @"FSat6ValuationBasis1",
                              @"", @"FSat7ValuationBasis1",
                              @"", @"FSat8ValuationBasis1",
                              @"", @"FSat9ValuationBasis1",
                              @"", @"FSat10ValuationBasis1",
                              
                              @"", @"FSun1ValuationBasis1",
                              @"", @"FSun2ValuationBasis1",
                              @"", @"FSun3ValuationBasis1",
                              @"", @"FSun4ValuationBasis1",
                              @"", @"FSun5ValuationBasis1",
                              @"", @"FSun6ValuationBasis1",
                              @"", @"FSun7ValuationBasis1",
                              @"", @"FSun8ValuationBasis1",
                              @"", @"FSun9ValuationBasis1",
                              @"", @"FSun10ValuationBasis1",
                              
                              @"", @"FMon1ValuationRatio1",
                              @"", @"FMon2ValuationRatio1",
                              @"", @"FMon3ValuationRatio1",
                              @"", @"FMon4ValuationRatio1",
                              @"", @"FMon5ValuationRatio1",
                              @"", @"FMon6ValuationRatio1",
                              @"", @"FMon7ValuationRatio1",
                              @"", @"FMon8ValuationRatio1",
                              @"", @"FMon9ValuationRatio1",
                              @"", @"FMon10ValuationRatio1",
                              
                              @"", @"FTue1ValuationRatio1",
                              @"", @"FTue2ValuationRatio1",
                              @"", @"FTue3ValuationRatio1",
                              @"", @"FTue4ValuationRatio1",
                              @"", @"FTue5ValuationRatio1",
                              @"", @"FTue6ValuationRatio1",
                              @"", @"FTue7ValuationRatio1",
                              @"", @"FTue8ValuationRatio1",
                              @"", @"FTue9ValuationRatio1",
                              @"", @"FTue10ValuationRatio1",
                              
                              @"", @"FWed1ValuationRatio1",
                              @"", @"FWed2ValuationRatio1",
                              @"", @"FWed3ValuationRatio1",
                              @"", @"FWed4ValuationRatio1",
                              @"", @"FWed5ValuationRatio1",
                              @"", @"FWed6ValuationRatio1",
                              @"", @"FWed7ValuationRatio1",
                              @"", @"FWed8ValuationRatio1",
                              @"", @"FWed9ValuationRatio1",
                              @"", @"FWed10ValuationRatio1",
                              
                              @"", @"FThu1ValuationRatio1",
                              @"", @"FThu2ValuationRatio1",
                              @"", @"FThu3ValuationRatio1",
                              @"", @"FThu4ValuationRatio1",
                              @"", @"FThu5ValuationRatio1",
                              @"", @"FThu6ValuationRatio1",
                              @"", @"FThu7ValuationRatio1",
                              @"", @"FThu8ValuationRatio1",
                              @"", @"FThu9ValuationRatio1",
                              @"", @"FThu10ValuationRatio1",
                              
                              @"", @"FFri1ValuationRatio1",
                              @"", @"FFri2ValuationRatio1",
                              @"", @"FFri3ValuationRatio1",
                              @"", @"FFri4ValuationRatio1",
                              @"", @"FFri5ValuationRatio1",
                              @"", @"FFri6ValuationRatio1",
                              @"", @"FFri7ValuationRatio1",
                              @"", @"FFri8ValuationRatio1",
                              @"", @"FFri9ValuationRatio1",
                              @"", @"FFri10ValuationRatio1",
                              
                              @"", @"FSat1ValuationRatio1",
                              @"", @"FSat2ValuationRatio1",
                              @"", @"FSat3ValuationRatio1",
                              @"", @"FSat4ValuationRatio1",
                              @"", @"FSat5ValuationRatio1",
                              @"", @"FSat6ValuationRatio1",
                              @"", @"FSat7ValuationRatio1",
                              @"", @"FSat8ValuationRatio1",
                              @"", @"FSat9ValuationRatio1",
                              @"", @"FSat10ValuationRatio1",
                              
                              @"", @"FSun1ValuationRatio1",
                              @"", @"FSun2ValuationRatio1",
                              @"", @"FSun3ValuationRatio1",
                              @"", @"FSun4ValuationRatio1",
                              @"", @"FSun5ValuationRatio1",
                              @"", @"FSun6ValuationRatio1",
                              @"", @"FSun7ValuationRatio1",
                              @"", @"FSun8ValuationRatio1",
                              @"", @"FSun9ValuationRatio1",
                              @"", @"FSun10ValuationRatio1",
                              
                              @"", @"FMon1ValuationBasis2",
                              @"", @"FMon2ValuationBasis2",
                              @"", @"FMon3ValuationBasis2",
                              @"", @"FMon4ValuationBasis2",
                              @"", @"FMon5ValuationBasis2",
                              @"", @"FMon6ValuationBasis2",
                              @"", @"FMon7ValuationBasis2",
                              @"", @"FMon8ValuationBasis2",
                              @"", @"FMon9ValuationBasis2",
                              @"", @"FMon10ValuationBasis2",
                              
                              @"", @"FTue1ValuationBasis2",
                              @"", @"FTue2ValuationBasis2",
                              @"", @"FTue3ValuationBasis2",
                              @"", @"FTue4ValuationBasis2",
                              @"", @"FTue5ValuationBasis2",
                              @"", @"FTue6ValuationBasis2",
                              @"", @"FTue7ValuationBasis2",
                              @"", @"FTue8ValuationBasis2",
                              @"", @"FTue9ValuationBasis2",
                              @"", @"FTue10ValuationBasis2",
                              
                              @"", @"FWed1ValuationBasis2",
                              @"", @"FWed2ValuationBasis2",
                              @"", @"FWed3ValuationBasis2",
                              @"", @"FWed4ValuationBasis2",
                              @"", @"FWed5ValuationBasis2",
                              @"", @"FWed6ValuationBasis2",
                              @"", @"FWed7ValuationBasis2",
                              @"", @"FWed8ValuationBasis2",
                              @"", @"FWed9ValuationBasis2",
                              @"", @"FWed10ValuationBasis2",
                              
                              @"", @"FThu1ValuationBasis2",
                              @"", @"FThu2ValuationBasis2",
                              @"", @"FThu3ValuationBasis2",
                              @"", @"FThu4ValuationBasis2",
                              @"", @"FThu5ValuationBasis2",
                              @"", @"FThu6ValuationBasis2",
                              @"", @"FThu7ValuationBasis2",
                              @"", @"FThu8ValuationBasis2",
                              @"", @"FThu9ValuationBasis2",
                              @"", @"FThu10ValuationBasis2",
                              
                              @"", @"FFri1ValuationBasis2",
                              @"", @"FFri2ValuationBasis2",
                              @"", @"FFri3ValuationBasis2",
                              @"", @"FFri4ValuationBasis2",
                              @"", @"FFri5ValuationBasis2",
                              @"", @"FFri6ValuationBasis2",
                              @"", @"FFri7ValuationBasis2",
                              @"", @"FFri8ValuationBasis2",
                              @"", @"FFri9ValuationBasis2",
                              @"", @"FFri10ValuationBasis2",
                              
                              @"", @"FSat1ValuationBasis2",
                              @"", @"FSat2ValuationBasis2",
                              @"", @"FSat3ValuationBasis2",
                              @"", @"FSat4ValuationBasis2",
                              @"", @"FSat5ValuationBasis2",
                              @"", @"FSat6ValuationBasis2",
                              @"", @"FSat7ValuationBasis2",
                              @"", @"FSat8ValuationBasis2",
                              @"", @"FSat9ValuationBasis2",
                              @"", @"FSat10ValuationBasis2",
                              
                              @"", @"FSun1ValuationBasis2",
                              @"", @"FSun2ValuationBasis2",
                              @"", @"FSun3ValuationBasis2",
                              @"", @"FSun4ValuationBasis2",
                              @"", @"FSun5ValuationBasis2",
                              @"", @"FSun6ValuationBasis2",
                              @"", @"FSun7ValuationBasis2",
                              @"", @"FSun8ValuationBasis2",
                              @"", @"FSun9ValuationBasis2",
                              @"", @"FSun10ValuationBasis2",
                              
                              @"", @"FMon1ValuationRatio2",
                              @"", @"FMon2ValuationRatio2", 
                              @"", @"FMon3ValuationRatio2", 
                              @"", @"FMon4ValuationRatio2", 
                              @"", @"FMon5ValuationRatio2", 
                              @"", @"FMon6ValuationRatio2", 
                              @"", @"FMon7ValuationRatio2", 
                              @"", @"FMon8ValuationRatio2", 
                              @"", @"FMon9ValuationRatio2", 
                              @"", @"FMon10ValuationRatio2",
                              
                              @"", @"FTue1ValuationRatio2",
                              @"", @"FTue2ValuationRatio2",
                              @"", @"FTue3ValuationRatio2",
                              @"", @"FTue4ValuationRatio2",
                              @"", @"FTue5ValuationRatio2",
                              @"", @"FTue6ValuationRatio2",
                              @"", @"FTue7ValuationRatio2",
                              @"", @"FTue8ValuationRatio2",
                              @"", @"FTue9ValuationRatio2",
                              @"", @"FTue10ValuationRatio2",
                              
                              @"", @"FWed1ValuationRatio2",
                              @"", @"FWed2ValuationRatio2",
                              @"", @"FWed3ValuationRatio2",
                              @"", @"FWed4ValuationRatio2",
                              @"", @"FWed5ValuationRatio2",
                              @"", @"FWed6ValuationRatio2",
                              @"", @"FWed7ValuationRatio2",
                              @"", @"FWed8ValuationRatio2",
                              @"", @"FWed9ValuationRatio2",
                              @"", @"FWed10ValuationRatio2",
                              
                              @"", @"FThu1ValuationRatio2",
                              @"", @"FThu2ValuationRatio2",
                              @"", @"FThu3ValuationRatio2",
                              @"", @"FThu4ValuationRatio2",
                              @"", @"FThu5ValuationRatio2",
                              @"", @"FThu6ValuationRatio2",
                              @"", @"FThu7ValuationRatio2",
                              @"", @"FThu8ValuationRatio2",
                              @"", @"FThu9ValuationRatio2",
                              @"", @"FThu10ValuationRatio2",
                              
                              @"", @"FFri1ValuationRatio2",
                              @"", @"FFri2ValuationRatio2",
                              @"", @"FFri3ValuationRatio2",
                              @"", @"FFri4ValuationRatio2",
                              @"", @"FFri5ValuationRatio2",
                              @"", @"FFri6ValuationRatio2",
                              @"", @"FFri7ValuationRatio2",
                              @"", @"FFri8ValuationRatio2",
                              @"", @"FFri9ValuationRatio2",
                              @"", @"FFri10ValuationRatio2",
                              
                              @"", @"FSat1ValuationRatio2",
                              @"", @"FSat2ValuationRatio2",
                              @"", @"FSat3ValuationRatio2",
                              @"", @"FSat4ValuationRatio2",
                              @"", @"FSat5ValuationRatio2",
                              @"", @"FSat6ValuationRatio2",
                              @"", @"FSat7ValuationRatio2",
                              @"", @"FSat8ValuationRatio2",
                              @"", @"FSat9ValuationRatio2",
                              @"", @"FSat10ValuationRatio2",
                              
                              @"", @"FSun1ValuationRatio2",
                              @"", @"FSun2ValuationRatio2",
                              @"", @"FSun3ValuationRatio2",
                              @"", @"FSun4ValuationRatio2",
                              @"", @"FSun5ValuationRatio2",
                              @"", @"FSun6ValuationRatio2",
                              @"", @"FSun7ValuationRatio2",
                              @"", @"FSun8ValuationRatio2",
                              @"", @"FSun9ValuationRatio2",
                              @"", @"FSun10ValuationRatio2",
                              
                              @"", @"FMon1Homework", 
                              @"", @"FMon2Homework",
                              @"", @"FMon3Homework",
                              @"", @"FMon4Homework",
                              @"", @"FMon5Homework",
                              @"", @"FMon6Homework",
                              @"", @"FMon7Homework",
                              @"", @"FMon8Homework",
                              @"", @"FMon9Homework",
                              @"", @"FMon10Homework",
                              
                              @"", @"FTue1Homework",
                              @"", @"FTue2Homework",
                              @"", @"FTue3Homework",
                              @"", @"FTue4Homework",
                              @"", @"FTue5Homework",
                              @"", @"FTue6Homework",
                              @"", @"FTue7Homework",
                              @"", @"FTue8Homework",
                              @"", @"FTue9Homework",
                              @"", @"FTue10Homework",
                              
                              @"", @"FWed1Homework",
                              @"", @"FWed2Homework",
                              @"", @"FWed3Homework",
                              @"", @"FWed4Homework",
                              @"", @"FWed5Homework",
                              @"", @"FWed6Homework",
                              @"", @"FWed7Homework",
                              @"", @"FWed8Homework",
                              @"", @"FWed9Homework",
                              @"", @"FWed10Homework",
                              
                              @"", @"FThu1Homework",
                              @"", @"FThu2Homework",
                              @"", @"FThu3Homework",
                              @"", @"FThu4Homework",
                              @"", @"FThu5Homework",
                              @"", @"FThu6Homework",
                              @"", @"FThu7Homework",
                              @"", @"FThu8Homework",
                              @"", @"FThu9Homework",
                              @"", @"FThu10Homework",
                              
                              @"", @"FFri1Homework",
                              @"", @"FFri2Homework",
                              @"", @"FFri3Homework",
                              @"", @"FFri4Homework",
                              @"", @"FFri5Homework",
                              @"", @"FFri6Homework",
                              @"", @"FFri7Homework",
                              @"", @"FFri8Homework",
                              @"", @"FFri9Homework",
                              @"", @"FFri10Homework",
                              
                              @"", @"FSat1Homework",
                              @"", @"FSat2Homework",
                              @"", @"FSat3Homework",
                              @"", @"FSat4Homework",
                              @"", @"FSat5Homework",
                              @"", @"FSat6Homework",
                              @"", @"FSat7Homework",
                              @"", @"FSat8Homework",
                              @"", @"FSat9Homework",
                              @"", @"FSat10Homework",
                              
                              @"", @"FSun1Homework",
                              @"", @"FSun2Homework",
                              @"", @"FSun3Homework",
                              @"", @"FSun4Homework",
                              @"", @"FSun5Homework",
                              @"", @"FSun6Homework",
                              @"", @"FSun7Homework",
                              @"", @"FSun8Homework",
                              @"", @"FSun9Homework",
                              @"", @"FSun10Homework",
                              
                              @"", @"SMon1LessonName",
                              @"", @"SMon2LessonName",
                              @"", @"SMon3LessonName",
                              @"", @"SMon4LessonName",
                              @"", @"SMon5LessonName",
                              @"", @"SMon6LessonName",
                              @"", @"SMon7LessonName",
                              @"", @"SMon8LessonName",
                              @"", @"SMon9LessonName",
                              @"", @"SMon10LessonName",
                              
                              @"", @"STue1LessonName",
                              @"", @"STue2LessonName",
                              @"", @"STue3LessonName",
                              @"", @"STue4LessonName",
                              @"", @"STue5LessonName",
                              @"", @"STue6LessonName",
                              @"", @"STue7LessonName",
                              @"", @"STue8LessonName",
                              @"", @"STue9LessonName",
                              @"", @"STue10LessonName",
                              
                              @"", @"SWed1LessonName",
                              @"", @"SWed2LessonName",
                              @"", @"SWed3LessonName",
                              @"", @"SWed4LessonName",
                              @"", @"SWed5LessonName",
                              @"", @"SWed6LessonName",
                              @"", @"SWed7LessonName",
                              @"", @"SWed8LessonName",
                              @"", @"SWed9LessonName",
                              @"", @"SWed10LessonName",
                              
                              @"", @"SThu1LessonName",
                              @"", @"SThu2LessonName",
                              @"", @"SThu3LessonName",
                              @"", @"SThu4LessonName",
                              @"", @"SThu5LessonName",
                              @"", @"SThu6LessonName",
                              @"", @"SThu7LessonName",
                              @"", @"SThu8LessonName",
                              @"", @"SThu9LessonName",
                              @"", @"SThu10LessonName",
                              
                              @"", @"SFri1LessonName",
                              @"", @"SFri2LessonName",
                              @"", @"SFri3LessonName",
                              @"", @"SFri4LessonName",
                              @"", @"SFri5LessonName",
                              @"", @"SFri6LessonName",
                              @"", @"SFri7LessonName",
                              @"", @"SFri8LessonName",
                              @"", @"SFri9LessonName",
                              @"", @"SFri10LessonName",
                              
                              @"", @"SSat1LessonName",
                              @"", @"SSat2LessonName",
                              @"", @"SSat3LessonName",
                              @"", @"SSat4LessonName",
                              @"", @"SSat5LessonName",
                              @"", @"SSat6LessonName",
                              @"", @"SSat7LessonName",
                              @"", @"SSat8LessonName",
                              @"", @"SSat9LessonName",
                              @"", @"SSat10LessonName",
                              
                              @"", @"SSun1LessonName",
                              @"", @"SSun2LessonName",
                              @"", @"SSun3LessonName",
                              @"", @"SSun4LessonName",
                              @"", @"SSun5LessonName",
                              @"", @"SSun6LessonName",
                              @"", @"SSun7LessonName",
                              @"", @"SSun8LessonName",
                              @"", @"SSun9LessonName",
                              @"", @"SSun10LessonName",
                              
                              @"", @"SMon1ProfessorName", 
                              @"", @"SMon2ProfessorName", 
                              @"", @"SMon3ProfessorName", 
                              @"", @"SMon4ProfessorName", 
                              @"", @"SMon5ProfessorName", 
                              @"", @"SMon6ProfessorName", 
                              @"", @"SMon7ProfessorName", 
                              @"", @"SMon8ProfessorName",
                              @"", @"SMon9ProfessorName", 
                              @"", @"SMon10ProfessorName", 
                              
                              @"", @"STue1ProfessorName",
                              @"", @"STue2ProfessorName",
                              @"", @"STue3ProfessorName",
                              @"", @"STue4ProfessorName",
                              @"", @"STue5ProfessorName",
                              @"", @"STue6ProfessorName",
                              @"", @"STue7ProfessorName",
                              @"", @"STue8ProfessorName",
                              @"", @"STue9ProfessorName",
                              @"", @"STue10ProfessorName",
                              
                              @"", @"SWed1ProfessorName",
                              @"", @"SWed2ProfessorName",
                              @"", @"SWed3ProfessorName",
                              @"", @"SWed4ProfessorName",
                              @"", @"SWed5ProfessorName",
                              @"", @"SWed6ProfessorName",
                              @"", @"SWed7ProfessorName",
                              @"", @"SWed8ProfessorName",
                              @"", @"SWed9ProfessorName",
                              @"", @"SWed10ProfessorName",
                              
                              @"", @"SThu1ProfessorName",
                              @"", @"SThu2ProfessorName",
                              @"", @"SThu3ProfessorName",
                              @"", @"SThu4ProfessorName",
                              @"", @"SThu5ProfessorName",
                              @"", @"SThu6ProfessorName",
                              @"", @"SThu7ProfessorName",
                              @"", @"SThu8ProfessorName",
                              @"", @"SThu9ProfessorName",
                              @"", @"SThu10ProfessorName",
                              
                              @"", @"SFri1ProfessorName",
                              @"", @"SFri2ProfessorName",
                              @"", @"SFri3ProfessorName",
                              @"", @"SFri4ProfessorName",
                              @"", @"SFri5ProfessorName",
                              @"", @"SFri6ProfessorName",
                              @"", @"SFri7ProfessorName",
                              @"", @"SFri8ProfessorName",
                              @"", @"SFri9ProfessorName",
                              @"", @"SFri10ProfessorName",
                              
                              @"", @"SSat1ProfessorName",
                              @"", @"SSat2ProfessorName",
                              @"", @"SSat3ProfessorName",
                              @"", @"SSat4ProfessorName",
                              @"", @"SSat5ProfessorName",
                              @"", @"SSat6ProfessorName",
                              @"", @"SSat7ProfessorName",
                              @"", @"SSat8ProfessorName",
                              @"", @"SSat9ProfessorName",
                              @"", @"SSat10ProfessorName",
                              
                              @"", @"SSun1ProfessorName",
                              @"", @"SSun2ProfessorName",
                              @"", @"SSun3ProfessorName",
                              @"", @"SSun4ProfessorName",
                              @"", @"SSun5ProfessorName",
                              @"", @"SSun6ProfessorName",
                              @"", @"SSun7ProfessorName",
                              @"", @"SSun8ProfessorName",
                              @"", @"SSun9ProfessorName",
                              @"", @"SSun10ProfessorName",
                              
                              @"", @"SMon1RoomName",
                              @"", @"SMon2RoomName",
                              @"", @"SMon3RoomName",
                              @"", @"SMon4RoomName",
                              @"", @"SMon5RoomName",
                              @"", @"SMon6RoomName",
                              @"", @"SMon7RoomName",
                              @"", @"SMon8RoomName",
                              @"", @"SMon9RoomName",
                              @"", @"SMon10RoomName",
                              
                              @"", @"STue1RoomName",
                              @"", @"STue2RoomName",
                              @"", @"STue3RoomName",
                              @"", @"STue4RoomName",
                              @"", @"STue5RoomName",
                              @"", @"STue6RoomName",
                              @"", @"STue7RoomName",
                              @"", @"STue8RoomName",
                              @"", @"STue9RoomName",
                              @"", @"STue10RoomName",
                              
                              @"", @"SWed1RoomName",
                              @"", @"SWed2RoomName",
                              @"", @"SWed3RoomName",
                              @"", @"SWed4RoomName",
                              @"", @"SWed5RoomName",
                              @"", @"SWed6RoomName",
                              @"", @"SWed7RoomName",
                              @"", @"SWed8RoomName",
                              @"", @"SWed9RoomName",
                              @"", @"SWed10RoomName",
                              
                              @"", @"SThu1RoomName",
                              @"", @"SThu2RoomName",
                              @"", @"SThu3RoomName",
                              @"", @"SThu4RoomName",
                              @"", @"SThu5RoomName",
                              @"", @"SThu6RoomName",
                              @"", @"SThu7RoomName",
                              @"", @"SThu8RoomName",
                              @"", @"SThu9RoomName",
                              @"", @"SThu10RoomName",
                              
                              @"", @"SFri1RoomName",
                              @"", @"SFri2RoomName",
                              @"", @"SFri3RoomName",
                              @"", @"SFri4RoomName",
                              @"", @"SFri5RoomName",
                              @"", @"SFri6RoomName",
                              @"", @"SFri7RoomName",
                              @"", @"SFri8RoomName",
                              @"", @"SFri9RoomName",
                              @"", @"SFri10RoomName",
                              
                              @"", @"SSat1RoomName",
                              @"", @"SSat2RoomName",
                              @"", @"SSat3RoomName",
                              @"", @"SSat4RoomName",
                              @"", @"SSat5RoomName",
                              @"", @"SSat6RoomName",
                              @"", @"SSat7RoomName",
                              @"", @"SSat8RoomName",
                              @"", @"SSat9RoomName",
                              @"", @"SSat10RoomName",
                              
                              @"", @"SSun1RoomName",
                              @"", @"SSun2RoomName",
                              @"", @"SSun3RoomName",
                              @"", @"SSun4RoomName",
                              @"", @"SSun5RoomName",
                              @"", @"SSun6RoomName",
                              @"", @"SSun7RoomName",
                              @"", @"SSun8RoomName",
                              @"", @"SSun9RoomName",
                              @"", @"SSun10RoomName",
                              
                              @"", @"SMon1ValuationBasis1",
                              @"", @"SMon2ValuationBasis1",
                              @"", @"SMon3ValuationBasis1",
                              @"", @"SMon4ValuationBasis1",
                              @"", @"SMon5ValuationBasis1",
                              @"", @"SMon6ValuationBasis1",
                              @"", @"SMon7ValuationBasis1",
                              @"", @"SMon8ValuationBasis1",
                              @"", @"SMon9ValuationBasis1",
                              @"", @"SMon10ValuationBasis1",
                              
                              @"", @"STue1ValuationBasis1",
                              @"", @"STue2ValuationBasis1",
                              @"", @"STue3ValuationBasis1",
                              @"", @"STue4ValuationBasis1",
                              @"", @"STue5ValuationBasis1",
                              @"", @"STue6ValuationBasis1",
                              @"", @"STue7ValuationBasis1",
                              @"", @"STue8ValuationBasis1",
                              @"", @"STue9ValuationBasis1",
                              @"", @"STue10ValuationBasis1",
                              
                              @"", @"SWed1ValuationBasis1",
                              @"", @"SWed2ValuationBasis1",
                              @"", @"SWed3ValuationBasis1",
                              @"", @"SWed4ValuationBasis1",
                              @"", @"SWed5ValuationBasis1",
                              @"", @"SWed6ValuationBasis1",
                              @"", @"SWed7ValuationBasis1",
                              @"", @"SWed8ValuationBasis1",
                              @"", @"SWed9ValuationBasis1",
                              @"", @"SWed10ValuationBasis1",
                              
                              @"", @"SThu1ValuationBasis1",
                              @"", @"SThu2ValuationBasis1",
                              @"", @"SThu3ValuationBasis1",
                              @"", @"SThu4ValuationBasis1",
                              @"", @"SThu5ValuationBasis1",
                              @"", @"SThu6ValuationBasis1",
                              @"", @"SThu7ValuationBasis1",
                              @"", @"SThu8ValuationBasis1",
                              @"", @"SThu9ValuationBasis1",
                              @"", @"SThu10ValuationBasis1",
                              
                              @"", @"SFri1ValuationBasis1",
                              @"", @"SFri2ValuationBasis1",
                              @"", @"SFri3ValuationBasis1",
                              @"", @"SFri4ValuationBasis1",
                              @"", @"SFri5ValuationBasis1",
                              @"", @"SFri6ValuationBasis1",
                              @"", @"SFri7ValuationBasis1",
                              @"", @"SFri8ValuationBasis1",
                              @"", @"SFri9ValuationBasis1",
                              @"", @"SFri10ValuationBasis1",
                              
                              @"", @"SSat1ValuationBasis1",
                              @"", @"SSat2ValuationBasis1",
                              @"", @"SSat3ValuationBasis1",
                              @"", @"SSat4ValuationBasis1",
                              @"", @"SSat5ValuationBasis1",
                              @"", @"SSat6ValuationBasis1",
                              @"", @"SSat7ValuationBasis1",
                              @"", @"SSat8ValuationBasis1",
                              @"", @"SSat9ValuationBasis1",
                              @"", @"SSat10ValuationBasis1",
                              
                              @"", @"SSun1ValuationBasis1",
                              @"", @"SSun2ValuationBasis1",
                              @"", @"SSun3ValuationBasis1",
                              @"", @"SSun4ValuationBasis1",
                              @"", @"SSun5ValuationBasis1",
                              @"", @"SSun6ValuationBasis1",
                              @"", @"SSun7ValuationBasis1",
                              @"", @"SSun8ValuationBasis1",
                              @"", @"SSun9ValuationBasis1",
                              @"", @"SSun10ValuationBasis1",
                              
                              @"", @"SMon1ValuationRatio1",
                              @"", @"SMon2ValuationRatio1",
                              @"", @"SMon3ValuationRatio1",
                              @"", @"SMon4ValuationRatio1",
                              @"", @"SMon5ValuationRatio1",
                              @"", @"SMon6ValuationRatio1",
                              @"", @"SMon7ValuationRatio1",
                              @"", @"SMon8ValuationRatio1",
                              @"", @"SMon9ValuationRatio1",
                              @"", @"SMon10ValuationRatio1",
                              
                              @"", @"STue1ValuationRatio1",
                              @"", @"STue2ValuationRatio1",
                              @"", @"STue3ValuationRatio1",
                              @"", @"STue4ValuationRatio1",
                              @"", @"STue5ValuationRatio1",
                              @"", @"STue6ValuationRatio1",
                              @"", @"STue7ValuationRatio1",
                              @"", @"STue8ValuationRatio1",
                              @"", @"STue9ValuationRatio1",
                              @"", @"STue10ValuationRatio1",
                              
                              @"", @"SWed1ValuationRatio1",
                              @"", @"SWed2ValuationRatio1",
                              @"", @"SWed3ValuationRatio1",
                              @"", @"SWed4ValuationRatio1",
                              @"", @"SWed5ValuationRatio1",
                              @"", @"SWed6ValuationRatio1",
                              @"", @"SWed7ValuationRatio1",
                              @"", @"SWed8ValuationRatio1",
                              @"", @"SWed9ValuationRatio1",
                              @"", @"SWed10ValuationRatio1",
                              
                              @"", @"SThu1ValuationRatio1",
                              @"", @"SThu2ValuationRatio1",
                              @"", @"SThu3ValuationRatio1",
                              @"", @"SThu4ValuationRatio1",
                              @"", @"SThu5ValuationRatio1",
                              @"", @"SThu6ValuationRatio1",
                              @"", @"SThu7ValuationRatio1",
                              @"", @"SThu8ValuationRatio1",
                              @"", @"SThu9ValuationRatio1",
                              @"", @"SThu10ValuationRatio1",
                              
                              @"", @"SFri1ValuationRatio1",
                              @"", @"SFri2ValuationRatio1",
                              @"", @"SFri3ValuationRatio1",
                              @"", @"SFri4ValuationRatio1",
                              @"", @"SFri5ValuationRatio1",
                              @"", @"SFri6ValuationRatio1",
                              @"", @"SFri7ValuationRatio1",
                              @"", @"SFri8ValuationRatio1",
                              @"", @"SFri9ValuationRatio1",
                              @"", @"SFri10ValuationRatio1",
                              
                              @"", @"SSat1ValuationRatio1",
                              @"", @"SSat2ValuationRatio1",
                              @"", @"SSat3ValuationRatio1",
                              @"", @"SSat4ValuationRatio1",
                              @"", @"SSat5ValuationRatio1",
                              @"", @"SSat6ValuationRatio1",
                              @"", @"SSat7ValuationRatio1",
                              @"", @"SSat8ValuationRatio1",
                              @"", @"SSat9ValuationRatio1",
                              @"", @"SSat10ValuationRatio1",
                              
                              @"", @"SSun1ValuationRatio1",
                              @"", @"SSun2ValuationRatio1",
                              @"", @"SSun3ValuationRatio1",
                              @"", @"SSun4ValuationRatio1",
                              @"", @"SSun5ValuationRatio1",
                              @"", @"SSun6ValuationRatio1",
                              @"", @"SSun7ValuationRatio1",
                              @"", @"SSun8ValuationRatio1",
                              @"", @"SSun9ValuationRatio1",
                              @"", @"SSun10ValuationRatio1",
                              
                              @"", @"SMon1ValuationBasis2",
                              @"", @"SMon2ValuationBasis2",
                              @"", @"SMon3ValuationBasis2",
                              @"", @"SMon4ValuationBasis2",
                              @"", @"SMon5ValuationBasis2",
                              @"", @"SMon6ValuationBasis2",
                              @"", @"SMon7ValuationBasis2",
                              @"", @"SMon8ValuationBasis2",
                              @"", @"SMon9ValuationBasis2",
                              @"", @"SMon10ValuationBasis2",
                              
                              @"", @"STue1ValuationBasis2",
                              @"", @"STue2ValuationBasis2",
                              @"", @"STue3ValuationBasis2",
                              @"", @"STue4ValuationBasis2",
                              @"", @"STue5ValuationBasis2",
                              @"", @"STue6ValuationBasis2",
                              @"", @"STue7ValuationBasis2",
                              @"", @"STue8ValuationBasis2",
                              @"", @"STue9ValuationBasis2",
                              @"", @"STue10ValuationBasis2",
                              
                              @"", @"SWed1ValuationBasis2",
                              @"", @"SWed2ValuationBasis2",
                              @"", @"SWed3ValuationBasis2",
                              @"", @"SWed4ValuationBasis2",
                              @"", @"SWed5ValuationBasis2",
                              @"", @"SWed6ValuationBasis2",
                              @"", @"SWed7ValuationBasis2",
                              @"", @"SWed8ValuationBasis2",
                              @"", @"SWed9ValuationBasis2",
                              @"", @"SWed10ValuationBasis2",
                              
                              @"", @"SThu1ValuationBasis2",
                              @"", @"SThu2ValuationBasis2",
                              @"", @"SThu3ValuationBasis2",
                              @"", @"SThu4ValuationBasis2",
                              @"", @"SThu5ValuationBasis2",
                              @"", @"SThu6ValuationBasis2",
                              @"", @"SThu7ValuationBasis2",
                              @"", @"SThu8ValuationBasis2",
                              @"", @"SThu9ValuationBasis2",
                              @"", @"SThu10ValuationBasis2",
                              
                              @"", @"SFri1ValuationBasis2",
                              @"", @"SFri2ValuationBasis2",
                              @"", @"SFri3ValuationBasis2",
                              @"", @"SFri4ValuationBasis2",
                              @"", @"SFri5ValuationBasis2",
                              @"", @"SFri6ValuationBasis2",
                              @"", @"SFri7ValuationBasis2",
                              @"", @"SFri8ValuationBasis2",
                              @"", @"SFri9ValuationBasis2",
                              @"", @"SFri10ValuationBasis2",
                              
                              @"", @"SSat1ValuationBasis2",
                              @"", @"SSat2ValuationBasis2",
                              @"", @"SSat3ValuationBasis2",
                              @"", @"SSat4ValuationBasis2",
                              @"", @"SSat5ValuationBasis2",
                              @"", @"SSat6ValuationBasis2",
                              @"", @"SSat7ValuationBasis2",
                              @"", @"SSat8ValuationBasis2",
                              @"", @"SSat9ValuationBasis2",
                              @"", @"SSat10ValuationBasis2",
                              
                              @"", @"SSun1ValuationBasis2",
                              @"", @"SSun2ValuationBasis2",
                              @"", @"SSun3ValuationBasis2",
                              @"", @"SSun4ValuationBasis2",
                              @"", @"SSun5ValuationBasis2",
                              @"", @"SSun6ValuationBasis2",
                              @"", @"SSun7ValuationBasis2",
                              @"", @"SSun8ValuationBasis2",
                              @"", @"SSun9ValuationBasis2",
                              @"", @"SSun10ValuationBasis2",
                              
                              @"", @"SMon1ValuationRatio2",
                              @"", @"SMon2ValuationRatio2", 
                              @"", @"SMon3ValuationRatio2", 
                              @"", @"SMon4ValuationRatio2", 
                              @"", @"SMon5ValuationRatio2", 
                              @"", @"SMon6ValuationRatio2", 
                              @"", @"SMon7ValuationRatio2", 
                              @"", @"SMon8ValuationRatio2", 
                              @"", @"SMon9ValuationRatio2", 
                              @"", @"SMon10ValuationRatio2",
                              
                              @"", @"STue1ValuationRatio2",
                              @"", @"STue2ValuationRatio2",
                              @"", @"STue3ValuationRatio2",
                              @"", @"STue4ValuationRatio2",
                              @"", @"STue5ValuationRatio2",
                              @"", @"STue6ValuationRatio2",
                              @"", @"STue7ValuationRatio2",
                              @"", @"STue8ValuationRatio2",
                              @"", @"STue9ValuationRatio2",
                              @"", @"STue10ValuationRatio2",
                              
                              @"", @"SWed1ValuationRatio2",
                              @"", @"SWed2ValuationRatio2",
                              @"", @"SWed3ValuationRatio2",
                              @"", @"SWed4ValuationRatio2",
                              @"", @"SWed5ValuationRatio2",
                              @"", @"SWed6ValuationRatio2",
                              @"", @"SWed7ValuationRatio2",
                              @"", @"SWed8ValuationRatio2",
                              @"", @"SWed9ValuationRatio2",
                              @"", @"SWed10ValuationRatio2",
                              
                              @"", @"SThu1ValuationRatio2",
                              @"", @"SThu2ValuationRatio2",
                              @"", @"SThu3ValuationRatio2",
                              @"", @"SThu4ValuationRatio2",
                              @"", @"SThu5ValuationRatio2",
                              @"", @"SThu6ValuationRatio2",
                              @"", @"SThu7ValuationRatio2",
                              @"", @"SThu8ValuationRatio2",
                              @"", @"SThu9ValuationRatio2",
                              @"", @"SThu10ValuationRatio2",
                              
                              @"", @"SFri1ValuationRatio2",
                              @"", @"SFri2ValuationRatio2",
                              @"", @"SFri3ValuationRatio2",
                              @"", @"SFri4ValuationRatio2",
                              @"", @"SFri5ValuationRatio2",
                              @"", @"SFri6ValuationRatio2",
                              @"", @"SFri7ValuationRatio2",
                              @"", @"SFri8ValuationRatio2",
                              @"", @"SFri9ValuationRatio2",
                              @"", @"SFri10ValuationRatio2",
                              
                              @"", @"SSat1ValuationRatio2",
                              @"", @"SSat2ValuationRatio2",
                              @"", @"SSat3ValuationRatio2",
                              @"", @"SSat4ValuationRatio2",
                              @"", @"SSat5ValuationRatio2",
                              @"", @"SSat6ValuationRatio2",
                              @"", @"SSat7ValuationRatio2",
                              @"", @"SSat8ValuationRatio2",
                              @"", @"SSat9ValuationRatio2",
                              @"", @"SSat10ValuationRatio2",
                              
                              @"", @"SSun1ValuationRatio2",
                              @"", @"SSun2ValuationRatio2",
                              @"", @"SSun3ValuationRatio2",
                              @"", @"SSun4ValuationRatio2",
                              @"", @"SSun5ValuationRatio2",
                              @"", @"SSun6ValuationRatio2",
                              @"", @"SSun7ValuationRatio2",
                              @"", @"SSun8ValuationRatio2",
                              @"", @"SSun9ValuationRatio2",
                              @"", @"SSun10ValuationRatio2",
                              
                              @"", @"SMon1Homework", 
                              @"", @"SMon2Homework",
                              @"", @"SMon3Homework",
                              @"", @"SMon4Homework",
                              @"", @"SMon5Homework",
                              @"", @"SMon6Homework",
                              @"", @"SMon7Homework",
                              @"", @"SMon8Homework",
                              @"", @"SMon9Homework",
                              @"", @"SMon10Homework",
                              
                              @"", @"STue1Homework",
                              @"", @"STue2Homework",
                              @"", @"STue3Homework",
                              @"", @"STue4Homework",
                              @"", @"STue5Homework",
                              @"", @"STue6Homework",
                              @"", @"STue7Homework",
                              @"", @"STue8Homework",
                              @"", @"STue9Homework",
                              @"", @"STue10Homework",
                              
                              @"", @"SWed1Homework",
                              @"", @"SWed2Homework",
                              @"", @"SWed3Homework",
                              @"", @"SWed4Homework",
                              @"", @"SWed5Homework",
                              @"", @"SWed6Homework",
                              @"", @"SWed7Homework",
                              @"", @"SWed8Homework",
                              @"", @"SWed9Homework",
                              @"", @"SWed10Homework",
                              
                              @"", @"SThu1Homework",
                              @"", @"SThu2Homework",
                              @"", @"SThu3Homework",
                              @"", @"SThu4Homework",
                              @"", @"SThu5Homework",
                              @"", @"SThu6Homework",
                              @"", @"SThu7Homework",
                              @"", @"SThu8Homework",
                              @"", @"SThu9Homework",
                              @"", @"SThu10Homework",
                              
                              @"", @"SFri1Homework",
                              @"", @"SFri2Homework",
                              @"", @"SFri3Homework",
                              @"", @"SFri4Homework",
                              @"", @"SFri5Homework",
                              @"", @"SFri6Homework",
                              @"", @"SFri7Homework",
                              @"", @"SFri8Homework",
                              @"", @"SFri9Homework",
                              @"", @"SFri10Homework",
                              
                              @"", @"SSat1Homework",
                              @"", @"SSat2Homework",
                              @"", @"SSat3Homework",
                              @"", @"SSat4Homework",
                              @"", @"SSat5Homework",
                              @"", @"SSat6Homework",
                              @"", @"SSat7Homework",
                              @"", @"SSat8Homework",
                              @"", @"SSat9Homework",
                              @"", @"SSat10Homework",
                              
                              @"", @"SSun1Homework",
                              @"", @"SSun2Homework",
                              @"", @"SSun3Homework",
                              @"", @"SSun4Homework",
                              @"", @"SSun5Homework",
                              @"", @"SSun6Homework",
                              @"", @"SSun7Homework",
                              @"", @"SSun8Homework",
                              @"", @"SSun9Homework",
                              @"", @"SSun10Homework",
                              
                              0, @"FMon1Absence",
                              0, @"FMon2Absence",
                              0, @"FMon3Absence",
                              0, @"FMon4Absence",
                              0, @"FMon5Absence",
                              0, @"FMon6Absence",
                              0, @"FMon7Absence",
                              0, @"FMon8Absence",
                              0, @"FMon9Absence",
                              0, @"FMon10Absence",
                              
                              0, @"FTue1Absence",
                              0, @"FTue2Absence",
                              0, @"FTue3Absence",
                              0, @"FTue4Absence",
                              0, @"FTue5Absence",
                              0, @"FTue6Absence",
                              0, @"FTue7Absence",
                              0, @"FTue8Absence",
                              0, @"FTue9Absence",
                              0, @"FTue10Absence",
                              
                              0, @"FWed1Absence",
                              0, @"FWed2Absence",
                              0, @"FWed3Absence",
                              0, @"FWed4Absence",
                              0, @"FWed5Absence",
                              0, @"FWed6Absence",
                              0, @"FWed7Absence",
                              0, @"FWed8Absence",
                              0, @"FWed9Absence",
                              0, @"FWed10Absence",
                              
                              0, @"FThu1Absence",
                              0, @"FThu2Absence",
                              0, @"FThu3Absence",
                              0, @"FThu4Absence",
                              0, @"FThu5Absence",
                              0, @"FThu6Absence",
                              0, @"FThu7Absence",
                              0, @"FThu8Absence",
                              0, @"FThu9Absence",
                              0, @"FThu10Absence",
                              
                              0, @"FFri1Absence",
                              0, @"FFri2Absence",
                              0, @"FFri3Absence",
                              0, @"FFri4Absence",
                              0, @"FFri5Absence",
                              0, @"FFri6Absence",
                              0, @"FFri7Absence",
                              0, @"FFri8Absence",
                              0, @"FFri9Absence",
                              0, @"FFri10Absence",
                              
                              0, @"FSat1Absence",
                              0, @"FSat2Absence",
                              0, @"FSat3Absence",
                              0, @"FSat4Absence",
                              0, @"FSat5Absence",
                              0, @"FSat6Absence",
                              0, @"FSat7Absence",
                              0, @"FSat8Absence",
                              0, @"FSat9Absence",
                              0, @"FSat10Absence",
                              
                              0, @"FSun1Absence",
                              0, @"FSun2Absence",
                              0, @"FSun3Absence",
                              0, @"FSun4Absence",
                              0, @"FSun5Absence",
                              0, @"FSun6Absence",
                              0, @"FSun7Absence",
                              0, @"FSun8Absence",
                              0, @"FSun9Absence",
                              0, @"FSun10Absence",
                              
                              0, @"SMon1Absence",
                              0, @"SMon2Absence",
                              0, @"SMon3Absence",
                              0, @"SMon4Absence",
                              0, @"SMon5Absence",
                              0, @"SMon6Absence",
                              0, @"SMon7Absence",
                              0, @"SMon8Absence",
                              0, @"SMon9Absence",
                              0, @"SMon10Absence",
                              
                              0, @"STue1Absence",
                              0, @"STue2Absence",
                              0, @"STue3Absence",
                              0, @"STue4Absence",
                              0, @"STue5Absence",
                              0, @"STue6Absence",
                              0, @"STue7Absence",
                              0, @"STue8Absence",
                              0, @"STue9Absence",
                              0, @"STue10Absence",
                              
                              0, @"SWed1Absence",
                              0, @"SWed2Absence",
                              0, @"SWed3Absence",
                              0, @"SWed4Absence",
                              0, @"SWed5Absence",
                              0, @"SWed6Absence",
                              0, @"SWed7Absence",
                              0, @"SWed8Absence",
                              0, @"SWed9Absence",
                              0, @"SWed10Absence",
                              
                              0, @"SThu1Absence",
                              0, @"SThu2Absence",
                              0, @"SThu3Absence",
                              0, @"SThu4Absence",
                              0, @"SThu5Absence",
                              0, @"SThu6Absence",
                              0, @"SThu7Absence",
                              0, @"SThu8Absence",
                              0, @"SThu9Absence",
                              0, @"SThu10Absence",
                              
                              0, @"SFri1Absence",
                              0, @"SFri2Absence",
                              0, @"SFri3Absence",
                              0, @"SFri4Absence",
                              0, @"SFri5Absence",
                              0, @"SFri6Absence",
                              0, @"SFri7Absence",
                              0, @"SFri8Absence",
                              0, @"SFri9Absence",
                              0, @"SFri10Absence",
                              
                              0, @"SSat1Absence",
                              0, @"SSat2Absence",
                              0, @"SSat3Absence",
                              0, @"SSat4Absence",
                              0, @"SSat5Absence",
                              0, @"SSat6Absence",
                              0, @"SSat7Absence",
                              0, @"SSat8Absence",
                              0, @"SSat9Absence",
                              0, @"SSat10Absence",
                              
                              0, @"SSun1Absence",
                              0, @"SSun2Absence",
                              0, @"SSun3Absence",
                              0, @"SSun4Absence",
                              0, @"SSun5Absence",
                              0, @"SSun6Absence",
                              0, @"SSun7Absence",
                              0, @"SSun8Absence",
                              0, @"SSun9Absence",
                              0, @"SSun10Absence",
                              
                              0, @"FMon1Lateness",
                              0, @"FMon2Lateness",
                              0, @"FMon3Lateness",
                              0, @"FMon4Lateness",
                              0, @"FMon5Lateness",
                              0, @"FMon6Lateness",
                              0, @"FMon7Lateness",
                              0, @"FMon8Lateness",
                              0, @"FMon9Lateness",
                              0, @"FMon10Lateness",
                              
                              0, @"FTue1Lateness",
                              0, @"FTue2Lateness",
                              0, @"FTue3Lateness",
                              0, @"FTue4Lateness",
                              0, @"FTue5Lateness",
                              0, @"FTue6Lateness",
                              0, @"FTue7Lateness",
                              0, @"FTue8Lateness",
                              0, @"FTue9Lateness",
                              0, @"FTue10Lateness",
                              
                              0, @"FWed1Lateness",
                              0, @"FWed2Lateness",
                              0, @"FWed3Lateness",
                              0, @"FWed4Lateness",
                              0, @"FWed5Lateness",
                              0, @"FWed6Lateness",
                              0, @"FWed7Lateness",
                              0, @"FWed8Lateness",
                              0, @"FWed9Lateness",
                              0, @"FWed10Lateness",
                              
                              0, @"FThu1Lateness",
                              0, @"FThu2Lateness",
                              0, @"FThu3Lateness",
                              0, @"FThu4Lateness",
                              0, @"FThu5Lateness",
                              0, @"FThu6Lateness",
                              0, @"FThu7Lateness",
                              0, @"FThu8Lateness",
                              0, @"FThu9Lateness",
                              0, @"FThu10Lateness",
                              
                              0, @"FFri1Lateness",
                              0, @"FFri2Lateness",
                              0, @"FFri3Lateness",
                              0, @"FFri4Lateness",
                              0, @"FFri5Lateness",
                              0, @"FFri6Lateness",
                              0, @"FFri7Lateness",
                              0, @"FFri8Lateness",
                              0, @"FFri9Lateness",
                              0, @"FFri10Lateness",
                              
                              0, @"FSat1Lateness",
                              0, @"FSat2Lateness",
                              0, @"FSat3Lateness",
                              0, @"FSat4Lateness",
                              0, @"FSat5Lateness",
                              0, @"FSat6Lateness",
                              0, @"FSat7Lateness",
                              0, @"FSat8Lateness",
                              0, @"FSat9Lateness",
                              0, @"FSat10Lateness",
                              
                              0, @"FSun1Lateness",
                              0, @"FSun2Lateness",
                              0, @"FSun1Lateness",
                              0, @"FSun2Lateness",
                              0, @"FSun1Lateness",
                              0, @"FSun2Lateness",
                              0, @"FSun1Lateness",
                              0, @"FSun2Lateness",
                              0, @"FSun1Lateness",
                              0, @"FSun2Lateness",
                              
                              0, @"SMon1Lateness",
                              0, @"SMon2Lateness",
                              0, @"SMon3Lateness",
                              0, @"SMon4Lateness",
                              0, @"SMon5Lateness",
                              0, @"SMon6Lateness",
                              0, @"SMon7Lateness",
                              0, @"SMon8Lateness",
                              0, @"SMon9Lateness",
                              0, @"SMon10Lateness",
                              
                              0, @"STue1Lateness",
                              0, @"STue2Lateness",
                              0, @"STue3Lateness",
                              0, @"STue4Lateness",
                              0, @"STue5Lateness",
                              0, @"STue6Lateness",
                              0, @"STue7Lateness",
                              0, @"STue8Lateness",
                              0, @"STue9Lateness",
                              0, @"STue10Lateness",
                              
                              0, @"SWed1Lateness",
                              0, @"SWed2Lateness",
                              0, @"SWed3Lateness",
                              0, @"SWed4Lateness",
                              0, @"SWed5Lateness",
                              0, @"SWed6Lateness",
                              0, @"SWed7Lateness",
                              0, @"SWed8Lateness",
                              0, @"SWed9Lateness",
                              0, @"SWed10Lateness",
                              
                              0, @"SThu1Lateness",
                              0, @"SThu2Lateness",
                              0, @"SThu3Lateness",
                              0, @"SThu4Lateness",
                              0, @"SThu5Lateness",
                              0, @"SThu6Lateness",
                              0, @"SThu7Lateness",
                              0, @"SThu8Lateness",
                              0, @"SThu9Lateness",
                              0, @"SThu10Lateness",
                              
                              0, @"SFri1Lateness",
                              0, @"SFri2Lateness",
                              0, @"SFri3Lateness",
                              0, @"SFri4Lateness",
                              0, @"SFri5Lateness",
                              0, @"SFri6Lateness",
                              0, @"SFri7Lateness",
                              0, @"SFri8Lateness",
                              0, @"SFri9Lateness",
                              0, @"SFri10Lateness",
                              
                              0, @"SSat1Lateness",
                              0, @"SSat2Lateness",
                              0, @"SSat3Lateness",
                              0, @"SSat4Lateness",
                              0, @"SSat5Lateness",
                              0, @"SSat6Lateness",
                              0, @"SSat7Lateness",
                              0, @"SSat8Lateness",
                              0, @"SSat9Lateness",
                              0, @"SSat10Lateness",
                              
                              0, @"SSun1Lateness",
                              0, @"SSun2Lateness",
                              0, @"SSun3Lateness",
                              0, @"SSun4Lateness",
                              0, @"SSun5Lateness",
                              0, @"SSun6Lateness",
                              0, @"SSun7Lateness",
                              0, @"SSun8Lateness",
                              0, @"SSun9Lateness",
                              0, @"SSun10Lateness",
                              
                              @"", @"FMon1Memorandum",
                              @"", @"FMon2Memorandum",
                              @"", @"FMon3Memorandum",
                              @"", @"FMon4Memorandum",
                              @"", @"FMon5Memorandum",
                              @"", @"FMon6Memorandum",
                              @"", @"FMon7Memorandum",
                              @"", @"FMon8Memorandum",
                              @"", @"FMon9Memorandum",
                              @"", @"FMon10Memorandum",
                              
                              @"", @"FTue1Memorandum",
                              @"", @"FTue2Memorandum",
                              @"", @"FTue3Memorandum",
                              @"", @"FTue4Memorandum",
                              @"", @"FTue5Memorandum",
                              @"", @"FTue6Memorandum",
                              @"", @"FTue7Memorandum",
                              @"", @"FTue8Memorandum",
                              @"", @"FTue9Memorandum",
                              @"", @"FTue10Memorandum",
                              
                              @"", @"FWed1Memorandum",
                              @"", @"FWed2Memorandum",
                              @"", @"FWed3Memorandum",
                              @"", @"FWed4Memorandum",
                              @"", @"FWed5Memorandum",
                              @"", @"FWed6Memorandum",
                              @"", @"FWed7Memorandum",
                              @"", @"FWed8Memorandum",
                              @"", @"FWed9Memorandum",
                              @"", @"FWed10Memorandum",
                              
                              @"", @"FThu1Memorandum",
                              @"", @"FThu2Memorandum",
                              @"", @"FThu3Memorandum",
                              @"", @"FThu4Memorandum",
                              @"", @"FThu5Memorandum",
                              @"", @"FThu6Memorandum",
                              @"", @"FThu7Memorandum",
                              @"", @"FThu8Memorandum",
                              @"", @"FThu9Memorandum",
                              @"", @"FThu10Memorandum",
                              
                              @"", @"FFri1Memorandum",
                              @"", @"FFri2Memorandum",
                              @"", @"FFri3Memorandum",
                              @"", @"FFri4Memorandum",
                              @"", @"FFri5Memorandum",
                              @"", @"FFri6Memorandum",
                              @"", @"FFri7Memorandum",
                              @"", @"FFri8Memorandum",
                              @"", @"FFri9Memorandum",
                              @"", @"FFri10Memorandum",
                              
                              @"", @"FSat1Memorandum",
                              @"", @"FSat2Memorandum",
                              @"", @"FSat3Memorandum",
                              @"", @"FSat4Memorandum",
                              @"", @"FSat5Memorandum",
                              @"", @"FSat6Memorandum",
                              @"", @"FSat7Memorandum",
                              @"", @"FSat8Memorandum",
                              @"", @"FSat9Memorandum",
                              @"", @"FSat10Memorandum",
                              
                              @"", @"FSun1Memorandum",
                              @"", @"FSun2Memorandum",
                              @"", @"FSun3Memorandum",
                              @"", @"FSun4Memorandum",
                              @"", @"FSun5Memorandum",
                              @"", @"FSun6Memorandum",
                              @"", @"FSun7Memorandum",
                              @"", @"FSun8Memorandum",
                              @"", @"FSun9Memorandum",
                              @"", @"FSun10Memorandum",
                              
                              @"", @"SMon1Memorandum",
                              @"", @"SMon2Memorandum",
                              @"", @"SMon3Memorandum",
                              @"", @"SMon4Memorandum",
                              @"", @"SMon5Memorandum",
                              @"", @"SMon6Memorandum",
                              @"", @"SMon7Memorandum",
                              @"", @"SMon8Memorandum",
                              @"", @"SMon9Memorandum",
                              @"", @"SMon10Memorandum",
                              
                              @"", @"STue1Memorandum",
                              @"", @"STue2Memorandum",
                              @"", @"STue3Memorandum",
                              @"", @"STue4Memorandum",
                              @"", @"STue5Memorandum",
                              @"", @"STue6Memorandum",
                              @"", @"STue7Memorandum",
                              @"", @"STue8Memorandum",
                              @"", @"STue9Memorandum",
                              @"", @"STue10Memorandum",
                              
                              @"", @"SWed1Memorandum",
                              @"", @"SWed2Memorandum",
                              @"", @"SWed3Memorandum",
                              @"", @"SWed4Memorandum",
                              @"", @"SWed5Memorandum",
                              @"", @"SWed6Memorandum",
                              @"", @"SWed7Memorandum",
                              @"", @"SWed8Memorandum",
                              @"", @"SWed9Memorandum",
                              @"", @"SWed10Memorandum",
                              
                              @"", @"SThu1Memorandum",
                              @"", @"SThu2Memorandum",
                              @"", @"SThu3Memorandum",
                              @"", @"SThu4Memorandum",
                              @"", @"SThu5Memorandum",
                              @"", @"SThu6Memorandum",
                              @"", @"SThu7Memorandum",
                              @"", @"SThu8Memorandum",
                              @"", @"SThu9Memorandum",
                              @"", @"SThu10Memorandum",
                              
                              @"", @"SFri1Memorandum",
                              @"", @"SFri2Memorandum",
                              @"", @"SFri3Memorandum",
                              @"", @"SFri4Memorandum",
                              @"", @"SFri5Memorandum",
                              @"", @"SFri6Memorandum",
                              @"", @"SFri7Memorandum",
                              @"", @"SFri8Memorandum",
                              @"", @"SFri9Memorandum",
                              @"", @"SFri10Memorandum",
                              
                              @"", @"SSat1Memorandum",
                              @"", @"SSat2Memorandum",
                              @"", @"SSat3Memorandum",
                              @"", @"SSat4Memorandum",
                              @"", @"SSat5Memorandum",
                              @"", @"SSat6Memorandum",
                              @"", @"SSat7Memorandum",
                              @"", @"SSat8Memorandum",
                              @"", @"SSat9Memorandum",
                              @"", @"SSat10Memorandum",
                              
                              @"", @"SSun1Memorandum",
                              @"", @"SSun2Memorandum",
                              @"", @"SSun3Memorandum",
                              @"", @"SSun4Memorandum",
                              @"", @"SSun5Memorandum",
                              @"", @"SSun6Memorandum",
                              @"", @"SSun7Memorandum",
                              @"", @"SSun8Memorandum",
                              @"", @"SSun9Memorandum",
                              @"", @"SSun10Memorandum",
                              
                              2, @"MonBGINumber",
                              2, @"TueBGINumber",
                              2, @"WedBGINumber",
                              2, @"ThuBGINumber",
                              2, @"FriBGINumber",
                              2, @"SatBGINumber",
                              2, @"SunBGINumber", 
                              
                              0, @"AllorIndividual",
                              1, @"PictureNumber",
                              
                              @"", @"CashMemorandum",
                              
                              @"1", @"TableTime1",
                              @"2", @"TableTime2",
                              @"3", @"TableTime3",
                              @"4", @"TableTime4",
                              @"5", @"TableTime5",
                              @"6", @"TableTime6",
                              @"7", @"TableTime7",
                              @"8", @"TableTime8",
                              @"9", @"TableTime9",
                              @"10", @"TableTime10", 
                              nil];
    }
    
    //ユーザーデフォルト読み込み
    NSUserDefaults *userDefaults;
    userDefaults = [NSUserDefaults standardUserDefaults];
    
    [userDefaults registerDefaults:FirstValueUserDefaults];
    [userDefaults synchronize];
    
    ForS = [[NSArray alloc] initWithObjects:@"F", @"S", nil];
    
    week = [[NSArray alloc] initWithObjects:@"Mon", @"Tue", @"Wed", @"Thu", @"Fri", @"Sat", @"Sun", nil];
    
    weekJapanese_ = [[NSArray alloc] initWithObjects:@"月曜日", @"火曜日", @"水曜日", @"木曜日", @"金曜日", @"土曜日", @"日曜日", nil];
    
    for (int i = 0; i < 10; i++) {
        timeTableButton_[i] = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        bgImage_[i] = [[UIImage alloc] init];
        tableTimeLabel_[i] = [[UILabel alloc] init];
        startTimeLabel_[i] = [[UILabel alloc] init];
        waveLabel_[i] = [[UILabel alloc] init];
        endTimeLabel_[i] = [[UILabel alloc] init];
        lessonNameLabel_[i] = [[UILabel alloc] init];
        professorNameLabel_[i] = [[UILabel alloc] init];
        roomNameLabel_[i] = [[UILabel alloc] init];
        valuationBasis1Label_[i] = [[UILabel alloc] init];
        valuationBasis2Label_[i] = [[UILabel alloc] init];
        valuationRatio1Label_[i] = [[UILabel alloc] init];
        valuationRatio2Label_[i] = [[UILabel alloc] init];
        homeworkLabel_[i] = [[UILabel alloc] init];
        absenceLabel_[i] = [[UILabel alloc] init];
        latenessLabel_[i] = [[UILabel alloc] init];
        memorandumLabel_[i] = [[UILabel alloc] init];
        
        if ([[userDefaults objectForKey:[NSString stringWithFormat:@"TableTime%d", i+1]] length] == 0) {
            [userDefaults setObject:[NSString stringWithFormat:@"%d",i+1] forKey:[NSString stringWithFormat:@"TableTime%d", i+1]];
        }
    }
    
    
    
    
    BGIDictionary = [NSDictionary dictionary];
    ColorDictionary = [NSDictionary dictionary];
    AlphaDictionary = [NSDictionary dictionary];
    
    BGIDictionary = [userDefaults dictionaryForKey:@"BGIName"];
    ColorDictionary = [userDefaults dictionaryForKey:@"TextColor"];
    AlphaDictionary = [userDefaults dictionaryForKey:@"BGIAlpha"];
    
    if ([ColorDictionary count] <= 1) {
        NSMutableDictionary *originColorDictionary = [[NSMutableDictionary alloc] initWithObjectsAndKeys:
                                                      @"5",@"0",
                                                      @"5",@"1",
                                                      @"5",@"2",
                                                      @"5",@"3",
                                                      @"5",@"4",
                                                      @"5",@"5",
                                                      @"5",@"6",
                                                      nil];
        [userDefaults setObject:originColorDictionary forKey:@"TextColor"];
    }
    
    if ([BGIDictionary count] <= 1) {
        selectImage = [UIImage imageNamed:@"01.png"];
        NSData *ImageData = [[NSData alloc] initWithData:UIImagePNGRepresentation(selectImage)];
        NSMutableDictionary  *originBGIdictionary = [[NSMutableDictionary alloc] initWithObjectsAndKeys:
                                                     ImageData, @"0",
                                                     ImageData, @"1",
                                                     ImageData, @"2",
                                                     ImageData, @"3",
                                                     ImageData, @"4",
                                                     ImageData, @"5",
                                                     ImageData, @"6",
                                                     nil];
        [userDefaults setObject:originBGIdictionary forKey:@"BGIName"];
    }
    
    if ([AlphaDictionary count] <= 1) {
        NSMutableDictionary *originAlphaDictionary = [[NSMutableDictionary alloc] initWithObjectsAndKeys:
                                                      @"1", @"0",
                                                      @"1", @"1",
                                                      @"1", @"2",
                                                      @"1", @"3",
                                                      @"1", @"4",
                                                      @"1", @"5",
                                                      @"1", @"6", 
                                                      nil];
        [userDefaults setObject:originAlphaDictionary forKey:@"BGIAlpha"];
    }
    
    
    self.view.backgroundColor = [UIColor blackColor];
    
#warning AdMobの設定
    {
    bannerView_ = [[GADBannerView alloc] initWithFrame:CGRectMake(0.0, self.view.frame.size.height-GAD_SIZE_320x50.height-88, GAD_SIZE_320x50.width, GAD_SIZE_320x50.height)];
    
    // 広告の「ユニット ID」を指定する。これは AdMob パブリッシャー ID です。
    bannerView_.adUnitID = MY_BANNER_UNIT_ID;
    bannerView_.delegate = self;
    
    // ユーザーに広告を表示した場所に後で復元する UIViewController をランタイムに知らせて
    // ビュー階層に追加する。
    bannerView_.rootViewController = self;
    [self.view addSubview:bannerView_];
    
    // 一般的なリクエストを行って広告を読み込む。
    // For Testing
    
    GADRequest *rq = [GADRequest request];
    //rq.testing = YES;
    [bannerView_ loadRequest:rq];
    }
    
    
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleBlackOpaque];
    
    //[self viewWillAppear:NO];
}

-(void)viewWillAppear:(BOOL)animated{
       
    self.navigationController.toolbarHidden = NO;
    
    [self setToolbarItems:nil];
    
    //ユーザーデフォルト読み込み
    NSUserDefaults *userDefaults;
    userDefaults = [NSUserDefaults standardUserDefaults];
    
    BGIDictionary = [userDefaults dictionaryForKey:@"BGIName"];
    ColorDictionary = [userDefaults dictionaryForKey:@"TextColor"];
    AlphaDictionary = [userDefaults dictionaryForKey:@"BGIAlpha"];
    
    switch ([[ColorDictionary objectForKey:[userDefaults objectForKey:@"SelectedIndex"]] integerValue]) {
        case 0:
            textColor = [UIColor blackColor];
            break;
        case 1:
            textColor = [UIColor darkGrayColor];
            break;
        case 2:
            textColor = [UIColor lightGrayColor];
            break;
        case 3:
            textColor = [UIColor whiteColor];
            break;
        case 4:
            textColor = [UIColor grayColor];
            break;
        case 5:
            textColor = [UIColor redColor];
            break;
        case 6:
            textColor = [UIColor greenColor];
            break;
        case 7:
            textColor = [UIColor blueColor];
            break;
        case 8:
            textColor = [UIColor cyanColor];
            break;
        case 9:
            textColor = [UIColor yellowColor];
            break;
        case 10:
            textColor = [UIColor magentaColor];
            break;
        case 11:
            textColor = [UIColor orangeColor];
            break;
        case 12:
            textColor = [UIColor purpleColor];
            break;
        case 13:
            textColor = [UIColor brownColor];
            break;
        default:
            textColor = [UIColor blackColor];
            break;
    }
    selectImage = [UIImage imageWithData:[BGIDictionary objectForKey:[userDefaults objectForKey:@"SelectedIndex"]]];
    BGIAlpha = [[AlphaDictionary objectForKey:[userDefaults objectForKey:@"SelectedIndex"]] floatValue];
    
    //初期代入
    for (int i = 0; i < 10; i++) {
        lessonName_[i] = [NSString stringWithFormat:@"%@%@%dLessonName", [ForS objectAtIndex:[[userDefaults objectForKey:@"FirstOrSecond"] intValue]], [week objectAtIndex:[[userDefaults objectForKey:@"SelectedIndex"] intValue]], i+1];
        
        roomName_[i] = [NSString stringWithFormat:@"%@%@%dRoomName", [ForS objectAtIndex:[[userDefaults objectForKey:@"FirstOrSecond"] intValue]], [week objectAtIndex:[[userDefaults objectForKey:@"SelectedIndex"] intValue]], i+1];
        
        professorName_[i] = [NSString stringWithFormat:@"%@%@%dProfessorName", [ForS objectAtIndex:[[userDefaults objectForKey:@"FirstOrSecond"] intValue]], [week objectAtIndex:[[userDefaults objectForKey:@"SelectedIndex"] intValue]], i+1];
        
        valuationBasis1_[i] = [NSString stringWithFormat:@"%@%@%dValuationBasis1", [ForS objectAtIndex:[[userDefaults objectForKey:@"FirstOrSecond"] intValue]], [week objectAtIndex:[[userDefaults objectForKey:@"SelectedIndex"] intValue]], i+1];
        
        valuationBasis2_[i] = [NSString stringWithFormat:@"%@%@%dValuationBasis2", [ForS objectAtIndex:[[userDefaults objectForKey:@"FirstOrSecond"] intValue]], [week objectAtIndex:[[userDefaults objectForKey:@"SelectedIndex"] intValue]], i+1];
        
        valuationRatio1_[i] = [NSString stringWithFormat:@"%@%@%dValuationRatio1", [ForS objectAtIndex:[[userDefaults objectForKey:@"FirstOrSecond"] intValue]], [week objectAtIndex:[[userDefaults objectForKey:@"SelectedIndex"] intValue]], i+1];
        
        valuationRatio2_[i] = [NSString stringWithFormat:@"%@%@%dValuationRatio2", [ForS objectAtIndex:[[userDefaults objectForKey:@"FirstOrSecond"] intValue]], [week objectAtIndex:[[userDefaults objectForKey:@"SelectedIndex"] intValue]], i+1];
        
        homework_[i] = [NSString stringWithFormat:@"%@%@%dHomework", [ForS objectAtIndex:[[userDefaults objectForKey:@"FirstOrSecond"] intValue]], [week objectAtIndex:[[userDefaults objectForKey:@"SelectedIndex"] intValue]], i+1];
        
        absence_[i] = [NSString stringWithFormat:@"%@%@%dAbsence", [ForS objectAtIndex:[[userDefaults objectForKey:@"FirstOrSecond"] integerValue]], [week objectAtIndex:[[userDefaults objectForKey:@"SelectedIndex"] integerValue]], i+1];
        
        lateness_[i] = [NSString stringWithFormat:@"%@%@%dLateness", [ForS objectAtIndex:[[userDefaults objectForKey:@"FirstOrSecond"] integerValue]], [week objectAtIndex:[[userDefaults objectForKey:@"SelectedIndex"] integerValue]], i+1];
        
        memorandum_[i] = [NSString stringWithFormat:@"%@%@%dMemorandum", [ForS objectAtIndex:[[userDefaults objectForKey:@"FirstOrSecond"] integerValue]], [week objectAtIndex:[[userDefaults objectForKey:@"SelectedIndex"] integerValue]], i+1];
        
        startTime_[i] = [userDefaults objectForKey:[NSString stringWithFormat:@"%dStartTime",i + 1]];
        
        endTime_[i] = [userDefaults objectForKey:[NSString stringWithFormat:@"%dEndTime",i + 1]];
        
        tableTime_[i] = [userDefaults objectForKey:[NSString stringWithFormat:@"TableTime%d", i + 1]];
        
        self.navigationItem.title = [weekJapanese_ objectAtIndex:[[userDefaults objectForKey:@"SelectedIndex"] intValue]];
    }
    
    /*
    UIView *view;
    view.frame = CGRectMake(0, 0, 320, 480);
    */
    [scrollView removeFromSuperview];
    
    {
        scrollView = [[UIScrollView alloc] init];
        scrollView.frame = self.view.bounds;
        scrollView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        
        UIView *bgView = [[UIView alloc] init];
        bgView.backgroundColor = [UIColor whiteColor];
        bgView.frame = CGRectMake(0, 0, 320, 320 * [[userDefaults objectForKey:@"TableNumber"] intValue] + 50);
        [scrollView addSubview:bgView];
        
        for (int i = 0; i < [[userDefaults objectForKey:@"TableNumber"] intValue]; i++) {
            //ボタン
            [timeTableButton_[i] setFrame:CGRectMake(0, i * 320, 320, 320)];
            bgImage_[i] = selectImage;
            bgImage_[i] = [bgImage_[i] stretchableImageWithLeftCapWidth:0 topCapHeight:0];
            [timeTableButton_[i] setBackgroundImage:bgImage_[i] forState:UIControlStateNormal];
            [timeTableButton_[i] setTag:i];
            [timeTableButton_[i] addTarget:self action:@selector(timeTableButtonPush:) forControlEvents:UIControlEventTouchUpInside];
            [timeTableButton_[i] setAlpha:BGIAlpha];
            [timeTableButton_[i] setBackgroundColor:[UIColor whiteColor]];
            [scrollView addSubview:timeTableButton_[i]];
            
            //時限
            [tableTimeLabel_[i] setFrame:CGRectMake(3, i * 320 + 5, 60, 60)];
            [tableTimeLabel_[i] setText:tableTime_[i]];
            [tableTimeLabel_[i] setFont:[UIFont systemFontOfSize:50]];
            [tableTimeLabel_[i] setTextAlignment:NSTextAlignmentCenter];
            [tableTimeLabel_[i] setTextColor:textColor];
            [tableTimeLabel_[i] setAdjustsFontSizeToFitWidth:YES];
            [tableTimeLabel_[i] setBackgroundColor:[UIColor clearColor]];
            [scrollView addSubview:tableTimeLabel_[i]];
            
            //開始時刻
            [startTimeLabel_[i] setFrame:CGRectMake(5, i * 320 + 210, 55, 25)];
            [startTimeLabel_[i] setText:startTime_[i]];
            [startTimeLabel_[i] setFont:[UIFont systemFontOfSize:20]];
            [startTimeLabel_[i] setTextAlignment:NSTextAlignmentRight];
            [startTimeLabel_[i] setTextColor:textColor];
            [startTimeLabel_[i] setBackgroundColor:[UIColor clearColor]];
            [scrollView addSubview:startTimeLabel_[i]];
            
            //"|"
            [waveLabel_[i] setFrame:CGRectMake(4, i * 320 + 242, 60, 25)];
            [waveLabel_[i] setText:@"|"];
            [waveLabel_[i] setFont:[UIFont systemFontOfSize:20]];
            [waveLabel_[i] setTextAlignment:NSTextAlignmentCenter];
            [waveLabel_[i] setTextColor:textColor];
            [waveLabel_[i] setBackgroundColor:[UIColor clearColor]];
            [scrollView addSubview:waveLabel_[i]];
            
            //終了時刻
            [endTimeLabel_[i] setFrame:CGRectMake(5, i * 320 + 275, 55, 25)];
            [endTimeLabel_[i] setText:endTime_[i]];
            [endTimeLabel_[i] setFont:[UIFont systemFontOfSize:20]];
            [endTimeLabel_[i] setTextAlignment:NSTextAlignmentRight];
            [endTimeLabel_[i] setTextColor:textColor];
            [endTimeLabel_[i] setBackgroundColor:[UIColor clearColor]];
            [scrollView addSubview:endTimeLabel_[i]];
            
            //授業名
            [lessonNameLabel_[i] setFrame:CGRectMake(80, i * 320, 235, 50)];
            [lessonNameLabel_[i] setText:[@"" stringByAppendingFormat:@"%@",[userDefaults objectForKey:lessonName_[i]]]];
            [lessonNameLabel_[i] setFont:[UIFont systemFontOfSize:20]];
            [lessonNameLabel_[i] setTextAlignment:NSTextAlignmentLeft];
            [lessonNameLabel_[i] setTextColor:textColor];
            [lessonNameLabel_[i] setBackgroundColor:[UIColor clearColor]];
            [scrollView addSubview:lessonNameLabel_[i]];
            
            //教授名
            [professorNameLabel_[i] setFrame:CGRectMake(80, i * 320 + 28, 235, 50)];
            [professorNameLabel_[i] setText:[@"" stringByAppendingFormat:@"%@",[userDefaults objectForKey:professorName_[i]]]];
            [professorNameLabel_[i] setFont:[UIFont systemFontOfSize:18]];
            [professorNameLabel_[i] setTextAlignment:NSTextAlignmentLeft];
            [professorNameLabel_[i] setTextColor:textColor];
            [professorNameLabel_[i] setBackgroundColor:[UIColor clearColor]];
            [scrollView addSubview:professorNameLabel_[i]];
            
            //教室名
            [roomNameLabel_[i] setFrame:CGRectMake(80, i * 320 + 55, 235, 50)];
            [roomNameLabel_[i] setText:[@"" stringByAppendingFormat:@"%@",[userDefaults objectForKey:roomName_[i]]]];
            [roomNameLabel_[i] setFont:[UIFont systemFontOfSize:18]];
            [roomNameLabel_[i] setTextAlignment:NSTextAlignmentLeft];
            [roomNameLabel_[i] setTextColor:textColor];
            [roomNameLabel_[i] setBackgroundColor:[UIColor clearColor]];
            [scrollView addSubview:roomNameLabel_[i]];
            
            //評価基準1
            [valuationBasis1Label_[i] setFrame:CGRectMake(80, i * 320 + 82, 235, 50)];
            if ([[userDefaults objectForKey:valuationBasis1_[i]] length] != 0) {
                [valuationBasis1Label_[i] setText:[[userDefaults objectForKey:valuationBasis1_[i]] stringByAppendingFormat:@"：%@",[userDefaults objectForKey:valuationRatio1_[i]]]];
            }else {
                [valuationBasis1Label_[i] setText:@""];
            }
            [valuationBasis1Label_[i] setFont:[UIFont systemFontOfSize:18]];
            [valuationBasis1Label_[i] setTextAlignment:NSTextAlignmentLeft];
            [valuationBasis1Label_[i] setTextColor:textColor];
            [valuationBasis1Label_[i] setBackgroundColor:[UIColor clearColor]];
            [scrollView addSubview:valuationBasis1Label_[i]];
            
            //評価基準2
            [valuationBasis2Label_[i] setFrame:CGRectMake(80, i * 320 + 109, 235, 50)];
            if ([[userDefaults objectForKey:valuationBasis2_[i]] length] != 0) {
                [valuationBasis2Label_[i] setText:[[userDefaults objectForKey:valuationBasis2_[i]] stringByAppendingFormat:@"：%@",[userDefaults objectForKey:valuationRatio2_[i]]]];
            }else {
                [valuationBasis2Label_[i] setText:@""];
            }
            [valuationBasis2Label_[i] setFont:[UIFont systemFontOfSize:18]];
            [valuationBasis2Label_[i] setTextAlignment:NSTextAlignmentLeft];
            [valuationBasis2Label_[i] setTextColor:textColor];
            [valuationBasis2Label_[i] setBackgroundColor:[UIColor clearColor]];
            [scrollView addSubview:valuationBasis2Label_[i]];
            
            //課題
            [homeworkLabel_[i] setFrame:CGRectMake(80, i * 320 + 136, 235, 50)];
            if ([[userDefaults objectForKey:homework_[i]] length] != 0) {
                [homeworkLabel_[i] setText:[@"課題：" stringByAppendingFormat:@"%@",[userDefaults objectForKey:homework_[i]]]];
            }else {
                [homeworkLabel_[i] setText:@""];
            }
            [homeworkLabel_[i] setFont:[UIFont systemFontOfSize:18]];
            [homeworkLabel_[i] setTextAlignment:NSTextAlignmentLeft];
            [homeworkLabel_[i] setTextColor:textColor];
            [homeworkLabel_[i] setBackgroundColor:[UIColor clearColor]];
            [scrollView addSubview:homeworkLabel_[i]];
            
            //欠席数
            [absenceLabel_[i] setFrame:CGRectMake(80, i * 320 + 163, 100, 50)];
            [absenceLabel_[i] setText:[NSString stringWithFormat:@"欠：%d", [userDefaults integerForKey:absence_[i]]]];
            [absenceLabel_[i] setFont:[UIFont systemFontOfSize:18]];
            [absenceLabel_[i] setTextAlignment:NSTextAlignmentLeft];
            [absenceLabel_[i] setTextColor:textColor];
            [absenceLabel_[i] setBackgroundColor:[UIColor clearColor]];
            [scrollView addSubview:absenceLabel_[i]];
            
            //遅刻数
            [latenessLabel_[i] setFrame:CGRectMake(180, i * 320 + 163, 100, 50)];
            [latenessLabel_[i] setText:[NSString stringWithFormat:@"遅：%d", [userDefaults integerForKey:lateness_[i]]]];
            [latenessLabel_[i] setFont:[UIFont systemFontOfSize:18]];
            [latenessLabel_[i] setTextAlignment:NSTextAlignmentLeft];
            [latenessLabel_[i] setTextColor:textColor];
            [latenessLabel_[i] setBackgroundColor:[UIColor clearColor]];
            [scrollView addSubview:latenessLabel_[i]];
            
            //教科書などの諸メモ欄
            [memorandumLabel_[i] setFrame:CGRectMake(80, i * 320 + 190, 235, 120)];
            
            if ([[userDefaults objectForKey:memorandum_[i]] length] != 0) {
                [memorandumLabel_[i] setText:[@"" stringByAppendingFormat:@"%@", [userDefaults objectForKey:memorandum_[i]]]];
                //NSLog(@"log");
            }else {
                [memorandumLabel_[i] setText:@" "];
                //NSLog(@"");
            }
             
            //[memorandumLabel_[i] setText:[@"" stringByAppendingFormat:@"%@", [userDefaults objectForKey:memorandum_[i]]]];
            [memorandumLabel_[i] setFont:[UIFont systemFontOfSize:18]];
            [memorandumLabel_[i] setTextAlignment:NSTextAlignmentLeft];
            [memorandumLabel_[i] setTextColor:textColor];
            [memorandumLabel_[i] setBackgroundColor:[UIColor clearColor]];
            [memorandumLabel_[i] setNumberOfLines:4];
            //memorandumLabel_[i].backgroundColor = [UIColor whiteColor];
            [scrollView addSubview:memorandumLabel_[i]];
            
            scrollView.contentSize = CGSizeMake(320, 320 * [[userDefaults objectForKey:@"TableNumber"] intValue] + 50);
            
            [self.view addSubview:scrollView];
            
        }
    }
    
    //UISegmentedControlをツールバーに
    if ([[userDefaults objectForKey:@"WeekNumber"] intValue] == 2) {
        segments = [NSArray arrayWithObjects:@"月",@"火",@"水",@"木",@"金",@"土",@"日", nil];
    }else if ([[userDefaults objectForKey:@"WeekNumber"] intValue] == 1) {
        segments = [NSArray arrayWithObjects:@"月",@"火",@"水",@"木",@"金",@"土", nil];
    }else{
        segments = [NSArray arrayWithObjects:@"月",@"火",@"水",@"木",@"金", nil];
    }
    
    self.navigationController.navigationBar.tintColor = [UIColor blackColor];
    self.navigationController.toolbar.tintColor = [UIColor blackColor];
    UISegmentedControl *segmentedControl = [[UISegmentedControl alloc] initWithItems:segments];
    segmentedControl.frame = CGRectMake(0, 0, 300, 40);
    //セグメントの選択が変更される時に呼ばれるメソッドを登録
    [segmentedControl addTarget:self action:@selector(segmentDidChange:) forControlEvents:UIControlEventValueChanged];
    segmentedControl.segmentedControlStyle = UISegmentedControlStyleBar;
    segmentedControl.tintColor = [UIColor colorWithRed:0.8 green:0.59 blue:0.8 alpha:1];
    segmentedControl.selectedSegmentIndex = [[userDefaults objectForKey:@"SelectedIndex"] intValue];
    UIBarButtonItem *segmentBarButton = [[UIBarButtonItem alloc] initWithCustomView:segmentedControl];
    
    [self setToolbarItems:[NSArray arrayWithObjects:segmentBarButton, nil]];
    
    
    //課題の通知をする処理
    {
    if ([[userDefaults objectForKey:@"NotificationOn"] intValue] == 0) {
        homeworkCall = [[UILocalNotification alloc] init];
        
        if ([[userDefaults objectForKey:@"FirstOrSecond"] intValue] == 0) {
            //ローカル通知をすべて取り消し
            [[UIApplication sharedApplication] cancelAllLocalNotifications];
            
            //月曜
            if ([[userDefaults objectForKey:@"FMon1Homework"] length] != 0 || [[userDefaults objectForKey:@"FMon2Homework"] length] != 0 || [[userDefaults objectForKey:@"FMon3Homework"] length] != 0 || [[userDefaults objectForKey:@"FMon4Homework"] length] != 0 || [[userDefaults objectForKey:@"FMon5Homework"] length] != 0 || [[userDefaults objectForKey:@"FMon6Homework"] length] != 0 || [[userDefaults objectForKey:@"FMon7Homework"] length] != 0 || [[userDefaults objectForKey:@"FMon8Homework"] length] != 0 || [[userDefaults objectForKey:@"FMon9Homework"] length] != 0 || [[userDefaults objectForKey:@"FMon10Homework"] length] != 0) {
                
                //時間作成
                //今の時刻を取得
                NSDate *now;
                now = [NSDate date];
                
                //現在のカレンダー取得
                NSCalendar *calendar = [NSCalendar currentCalendar];
                //時分秒,曜日を取得
                NSUInteger flags = NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit | NSWeekdayCalendarUnit;
                NSDateComponents *comps00 = [calendar components:flags fromDate:now];
                NSDateComponents *setComps = [[NSDateComponents alloc] init];
                //時分秒を00:00:00にセット
                [setComps setHour:-[comps00 hour]];
                [setComps setMinute:-[comps00 minute]];
                [setComps setSecond:-[comps00 second]];
                NSDate *date00 = [calendar dateByAddingComponents:setComps toDate:now options:0];
                
                //日曜なら
                if ([comps00 weekday] == 1) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+0];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //月曜なら
                }else if ([comps00 weekday] == 2) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+6];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //火曜なら
                }else if ([comps00 weekday] == 3) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+5];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //水曜なら
                }else if ([comps00 weekday] == 4) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+4];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //木曜なら
                }else if ([comps00 weekday] == 5) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+3];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //金曜なら
                }else if ([comps00 weekday] == 6) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+2];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //土曜なら
                }else if ([comps00 weekday] == 7) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+1];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                }
                
                
                //通知時刻を設定
                [homeworkCall setFireDate:setHomeworkDate];
                //タイムゾーン設定
                [homeworkCall setTimeZone:[NSTimeZone localTimeZone]];
                //メッセージ設定
                [homeworkCall setAlertBody:@"明日提出しなければならない課題があります。"];
                //サウンド設定
                [homeworkCall setSoundName:UILocalNotificationDefaultSoundName];
                //ボタンタイトルの設定
                [homeworkCall setAlertAction:@"確認"];
                //ローカル通知を登録
                [[UIApplication sharedApplication] scheduleLocalNotification:homeworkCall];
                
            }
            //火曜
            if ([[userDefaults objectForKey:@"FTue1Homework"] length] != 0 || [[userDefaults objectForKey:@"FTue2Homework"] length] != 0 || [[userDefaults objectForKey:@"FTue3Homework"] length] != 0 || [[userDefaults objectForKey:@"FTue4Homework"] length] != 0 || [[userDefaults objectForKey:@"FTue5Homework"] length] != 0 || [[userDefaults objectForKey:@"FTue6Homework"] length] != 0 || [[userDefaults objectForKey:@"FTue7Homework"] length] != 0 || [[userDefaults objectForKey:@"FTue8Homework"] length] != 0 || [[userDefaults objectForKey:@"FTue9Homework"] length] != 0 || [[userDefaults objectForKey:@"FTue10Homework"] length] != 0) {
                
                //ローカル通知を作成
                //UILocalNotification *homeworkCall = [[UILocalNotification alloc] init];
                //時間作成
                //今の時刻を取得
                NSDate *now;
                now = [NSDate date];
                
                //現在のカレンダー取得
                NSCalendar *calendar = [NSCalendar currentCalendar];
                //時分秒,曜日を取得
                NSUInteger flags = NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit | NSWeekdayCalendarUnit;
                NSDateComponents *comps00 = [calendar components:flags fromDate:now];
                NSDateComponents *setComps = [[NSDateComponents alloc] init];
                //時分秒を00:00:00にセット
                [setComps setHour:-[comps00 hour]];
                [setComps setMinute:-[comps00 minute]];
                [setComps setSecond:-[comps00 second]];
                NSDate *date00 = [calendar dateByAddingComponents:setComps toDate:now options:0];
                
                //日曜なら
                if ([comps00 weekday] == 1) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+1];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //月曜なら
                }else if ([comps00 weekday] == 2) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+0];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //火曜なら
                }else if ([comps00 weekday] == 3) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+6];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //水曜なら
                }else if ([comps00 weekday] == 4) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+5];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //木曜なら
                }else if ([comps00 weekday] == 5) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+4];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //金曜なら
                }else if ([comps00 weekday] == 6) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+3];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //土曜なら
                }else if ([comps00 weekday] == 7) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+2];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                }
                
                
                //通知時刻を設定
                [homeworkCall setFireDate:setHomeworkDate];
                //タイムゾーン設定
                [homeworkCall setTimeZone:[NSTimeZone localTimeZone]];
                //メッセージ設定
                [homeworkCall setAlertBody:@"明日提出しなければならない課題があります。"];
                //サウンド設定
                [homeworkCall setSoundName:UILocalNotificationDefaultSoundName];
                //ボタンタイトルの設定
                [homeworkCall setAlertAction:@"確認"];
                //ローカル通知を登録
                [[UIApplication sharedApplication] scheduleLocalNotification:homeworkCall];
                
            }
            //水曜
            if ([[userDefaults objectForKey:@"FWed1Homework"] length] != 0 || [[userDefaults objectForKey:@"FWed2Homework"] length] != 0 || [[userDefaults objectForKey:@"FWed3Homework"] length] != 0 || [[userDefaults objectForKey:@"FWed4Homework"] length] != 0 || [[userDefaults objectForKey:@"FWed5Homework"] length] != 0 || [[userDefaults objectForKey:@"FWed6Homework"] length] != 0 || [[userDefaults objectForKey:@"FWed7Homework"] length] != 0 || [[userDefaults objectForKey:@"FWed8Homework"] length] != 0 || [[userDefaults objectForKey:@"FWed9Homework"] length] != 0 || [[userDefaults objectForKey:@"FWed10Homework"] length] != 0) {
                
                //ローカル通知を作成
                //UILocalNotification *homeworkCall = [[UILocalNotification alloc] init];
                //時間作成
                //今の時刻を取得
                NSDate *now;
                now = [NSDate date];
                
                //現在のカレンダー取得
                NSCalendar *calendar = [NSCalendar currentCalendar];
                //時分秒,曜日を取得
                NSUInteger flags = NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit | NSWeekdayCalendarUnit;
                NSDateComponents *comps00 = [calendar components:flags fromDate:now];
                NSDateComponents *setComps = [[NSDateComponents alloc] init];
                //時分秒を00:00:00にセット
                [setComps setHour:-[comps00 hour]];
                [setComps setMinute:-[comps00 minute]];
                [setComps setSecond:-[comps00 second]];
                NSDate *date00 = [calendar dateByAddingComponents:setComps toDate:now options:0];
                
                //日曜なら
                if ([comps00 weekday] == 1) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+2];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //月曜なら
                }else if ([comps00 weekday] == 2) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+1];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //火曜なら
                }else if ([comps00 weekday] == 3) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+0];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //水曜なら
                }else if ([comps00 weekday] == 4) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+6];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //木曜なら
                }else if ([comps00 weekday] == 5) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+5];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //金曜なら
                }else if ([comps00 weekday] == 6) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+4];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //土曜なら
                }else if ([comps00 weekday] == 7) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+3];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                }
                
                
                //通知時刻を設定
                [homeworkCall setFireDate:setHomeworkDate];
                //タイムゾーン設定
                [homeworkCall setTimeZone:[NSTimeZone localTimeZone]];
                //メッセージ設定
                [homeworkCall setAlertBody:@"明日提出しなければならない課題があります。"];
                //サウンド設定
                [homeworkCall setSoundName:UILocalNotificationDefaultSoundName];
                //ボタンタイトルの設定
                [homeworkCall setAlertAction:@"確認"];
                //ローカル通知を登録
                [[UIApplication sharedApplication] scheduleLocalNotification:homeworkCall];
                
            }
            //木曜
            if ([[userDefaults objectForKey:@"FThu1Homework"] length] != 0 || [[userDefaults objectForKey:@"FThu2Homework"] length] != 0 || [[userDefaults objectForKey:@"FThu3Homework"] length] != 0 || [[userDefaults objectForKey:@"FThu4Homework"] length] != 0 || [[userDefaults objectForKey:@"FThu5Homework"] length] != 0 || [[userDefaults objectForKey:@"FThu6Homework"] length] != 0 || [[userDefaults objectForKey:@"FThu7Homework"] length] != 0 || [[userDefaults objectForKey:@"FThu8Homework"] length] != 0 || [[userDefaults objectForKey:@"FThu9Homework"] length] != 0 || [[userDefaults objectForKey:@"FThu10Homework"] length] != 0) {
                
                //ローカル通知を作成
                //UILocalNotification *homeworkCall = [[UILocalNotification alloc] init];
                //時間作成
                //今の時刻を取得
                NSDate *now;
                now = [NSDate date];
                
                //現在のカレンダー取得
                NSCalendar *calendar = [NSCalendar currentCalendar];
                //時分秒,曜日を取得
                NSUInteger flags = NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit | NSWeekdayCalendarUnit;
                NSDateComponents *comps00 = [calendar components:flags fromDate:now];
                NSDateComponents *setComps = [[NSDateComponents alloc] init];
                //時分秒を00:00:00にセット
                [setComps setHour:-[comps00 hour]];
                [setComps setMinute:-[comps00 minute]];
                [setComps setSecond:-[comps00 second]];
                NSDate *date00 = [calendar dateByAddingComponents:setComps toDate:now options:0];
                
                //日曜なら
                if ([comps00 weekday] == 1) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+3];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //月曜なら
                }else if ([comps00 weekday] == 2) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+2];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //火曜なら
                }else if ([comps00 weekday] == 3) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+1];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //水曜なら
                }else if ([comps00 weekday] == 4) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+0];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //木曜なら
                }else if ([comps00 weekday] == 5) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+6];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //金曜なら
                }else if ([comps00 weekday] == 6) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+5];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //土曜なら
                }else if ([comps00 weekday] == 7) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+4];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                }
                
                
                //通知時刻を設定
                [homeworkCall setFireDate:setHomeworkDate];
                //タイムゾーン設定
                [homeworkCall setTimeZone:[NSTimeZone localTimeZone]];
                //メッセージ設定
                [homeworkCall setAlertBody:@"明日提出しなければならない課題があります。"];
                //サウンド設定
                [homeworkCall setSoundName:UILocalNotificationDefaultSoundName];
                //ボタンタイトルの設定
                [homeworkCall setAlertAction:@"確認"];
                //ローカル通知を登録
                [[UIApplication sharedApplication] scheduleLocalNotification:homeworkCall];
                
            }
            //金曜
            if ([[userDefaults objectForKey:@"FFri1Homework"] length] != 0 || [[userDefaults objectForKey:@"FFri2Homework"] length] != 0 || [[userDefaults objectForKey:@"FFri3Homework"] length] != 0 || [[userDefaults objectForKey:@"FFri4Homework"] length] != 0 || [[userDefaults objectForKey:@"FFri5Homework"] length] != 0 || [[userDefaults objectForKey:@"FFri6Homework"] length] != 0 || [[userDefaults objectForKey:@"FFri7Homework"] length] != 0 || [[userDefaults objectForKey:@"FFri8Homework"] length] != 0 || [[userDefaults objectForKey:@"FFri9Homework"] length] != 0 || [[userDefaults objectForKey:@"FFri10Homework"] length] != 0) {
                
                //ローカル通知を作成
                //UILocalNotification *homeworkCall = [[UILocalNotification alloc] init];
                //時間作成
                //今の時刻を取得
                NSDate *now;
                now = [NSDate date];
                
                //現在のカレンダー取得
                NSCalendar *calendar = [NSCalendar currentCalendar];
                //時分秒,曜日を取得
                NSUInteger flags = NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit | NSWeekdayCalendarUnit;
                NSDateComponents *comps00 = [calendar components:flags fromDate:now];
                NSDateComponents *setComps = [[NSDateComponents alloc] init];
                //時分秒を00:00:00にセット
                [setComps setHour:-[comps00 hour]];
                [setComps setMinute:-[comps00 minute]];
                [setComps setSecond:-[comps00 second]];
                NSDate *date00 = [calendar dateByAddingComponents:setComps toDate:now options:0];
                
                //日曜なら
                if ([comps00 weekday] == 1) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+4];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //月曜なら
                }else if ([comps00 weekday] == 2) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+3];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //火曜なら
                }else if ([comps00 weekday] == 3) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+2];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //水曜なら
                }else if ([comps00 weekday] == 4) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+1];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //木曜なら
                }else if ([comps00 weekday] == 5) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+0];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //金曜なら
                }else if ([comps00 weekday] == 6) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+6];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //土曜なら
                }else if ([comps00 weekday] == 7) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+5];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                }
                
                
                //通知時刻を設定
                [homeworkCall setFireDate:setHomeworkDate];
                //タイムゾーン設定
                [homeworkCall setTimeZone:[NSTimeZone localTimeZone]];
                //メッセージ設定
                [homeworkCall setAlertBody:@"明日提出しなければならない課題があります。"];
                //サウンド設定
                [homeworkCall setSoundName:UILocalNotificationDefaultSoundName];
                //ボタンタイトルの設定
                [homeworkCall setAlertAction:@"確認"];
                //ローカル通知を登録
                [[UIApplication sharedApplication] scheduleLocalNotification:homeworkCall];
                
            }
            //土曜
            if ([[userDefaults objectForKey:@"FSat1Homework"] length] != 0 || [[userDefaults objectForKey:@"FSat2Homework"] length] != 0 || [[userDefaults objectForKey:@"FSat3Homework"] length] != 0 || [[userDefaults objectForKey:@"FSat4Homework"] length] != 0 || [[userDefaults objectForKey:@"FSat5Homework"] length] != 0 || [[userDefaults objectForKey:@"FSat6Homework"] length] != 0 || [[userDefaults objectForKey:@"FSat7Homework"] length] != 0 || [[userDefaults objectForKey:@"FSat8Homework"] length] != 0 || [[userDefaults objectForKey:@"FSat9Homework"] length] != 0 || [[userDefaults objectForKey:@"FSat10Homework"] length] != 0) {
                
                //ローカル通知を作成
                //UILocalNotification *homeworkCall = [[UILocalNotification alloc] init];
                //時間作成
                //今の時刻を取得
                NSDate *now;
                now = [NSDate date];
                
                //現在のカレンダー取得
                NSCalendar *calendar = [NSCalendar currentCalendar];
                //時分秒,曜日を取得
                NSUInteger flags = NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit | NSWeekdayCalendarUnit;
                NSDateComponents *comps00 = [calendar components:flags fromDate:now];
                NSDateComponents *setComps = [[NSDateComponents alloc] init];
                //時分秒を00:00:00にセット
                [setComps setHour:-[comps00 hour]];
                [setComps setMinute:-[comps00 minute]];
                [setComps setSecond:-[comps00 second]];
                NSDate *date00 = [calendar dateByAddingComponents:setComps toDate:now options:0];
                
                //日曜なら
                if ([comps00 weekday] == 1) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+5];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //月曜なら
                }else if ([comps00 weekday] == 2) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+4];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //火曜なら
                }else if ([comps00 weekday] == 3) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+3];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //水曜なら
                }else if ([comps00 weekday] == 4) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+2];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //木曜なら
                }else if ([comps00 weekday] == 5) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+1];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //金曜なら
                }else if ([comps00 weekday] == 6) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+0];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //土曜なら
                }else if ([comps00 weekday] == 7) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+6];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                }
                
                
                //通知時刻を設定
                [homeworkCall setFireDate:setHomeworkDate];
                //タイムゾーン設定
                [homeworkCall setTimeZone:[NSTimeZone localTimeZone]];
                //メッセージ設定
                [homeworkCall setAlertBody:@"明日提出しなければならない課題があります。"];
                //サウンド設定
                [homeworkCall setSoundName:UILocalNotificationDefaultSoundName];
                //ボタンタイトルの設定
                [homeworkCall setAlertAction:@"確認"];
                //ローカル通知を登録
                [[UIApplication sharedApplication] scheduleLocalNotification:homeworkCall];
                
            }
            //日曜
            if ([[userDefaults objectForKey:@"FSun1Homework"] length] != 0 || [[userDefaults objectForKey:@"FSun2Homework"] length] != 0 || [[userDefaults objectForKey:@"FSun3Homework"] length] != 0 || [[userDefaults objectForKey:@"FSun4Homework"] length] != 0 || [[userDefaults objectForKey:@"FSun5Homework"] length] != 0 || [[userDefaults objectForKey:@"FSun6Homework"] length] != 0 || [[userDefaults objectForKey:@"FSun7Homework"] length] != 0 || [[userDefaults objectForKey:@"FSun8Homework"] length] != 0 || [[userDefaults objectForKey:@"FSun9Homework"] length] != 0 || [[userDefaults objectForKey:@"FSun10Homework"] length] != 0) {
                
                //ローカル通知を作成
                //UILocalNotification *homeworkCall = [[UILocalNotification alloc] init];
                //時間作成
                //今の時刻を取得
                NSDate *now;
                now = [NSDate date];
                
                //現在のカレンダー取得
                NSCalendar *calendar = [NSCalendar currentCalendar];
                //時分秒,曜日を取得
                NSUInteger flags = NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit | NSWeekdayCalendarUnit;
                NSDateComponents *comps00 = [calendar components:flags fromDate:now];
                NSDateComponents *setComps = [[NSDateComponents alloc] init];
                //時分秒を00:00:00にセット
                [setComps setHour:-[comps00 hour]];
                [setComps setMinute:-[comps00 minute]];
                [setComps setSecond:-[comps00 second]];
                NSDate *date00 = [calendar dateByAddingComponents:setComps toDate:now options:0];
                
                //日曜なら
                if ([comps00 weekday] == 1) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+6];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //月曜なら
                }else if ([comps00 weekday] == 2) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+5];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //火曜なら
                }else if ([comps00 weekday] == 3) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+4];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //水曜なら
                }else if ([comps00 weekday] == 4) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+3];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //木曜なら
                }else if ([comps00 weekday] == 5) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+2];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //金曜なら
                }else if ([comps00 weekday] == 6) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+1];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //土曜なら
                }else if ([comps00 weekday] == 7) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+0];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                }
                
                
                //通知時刻を設定
                [homeworkCall setFireDate:setHomeworkDate];
                //タイムゾーン設定
                [homeworkCall setTimeZone:[NSTimeZone localTimeZone]];
                //メッセージ設定
                [homeworkCall setAlertBody:@"明日提出しなければならない課題があります。"];
                //サウンド設定
                [homeworkCall setSoundName:UILocalNotificationDefaultSoundName];
                //ボタンタイトルの設定
                [homeworkCall setAlertAction:@"確認"];
                //ローカル通知を登録
                [[UIApplication sharedApplication] scheduleLocalNotification:homeworkCall];
                
            }
            
        }else {
            //ローカル通知をすべて取り消し
            [[UIApplication sharedApplication] cancelAllLocalNotifications];
            
            //月曜
            if ([[userDefaults objectForKey:@"SMon1Homework"] length] != 0 || [[userDefaults objectForKey:@"SMon2Homework"] length] != 0 || [[userDefaults objectForKey:@"SMon3Homework"] length] != 0 || [[userDefaults objectForKey:@"SMon4Homework"] length] != 0 || [[userDefaults objectForKey:@"SMon5Homework"] length] != 0 || [[userDefaults objectForKey:@"SMon6Homework"] length] != 0 || [[userDefaults objectForKey:@"SMon7Homework"] length] != 0 || [[userDefaults objectForKey:@"SMon8Homework"] length] != 0 || [[userDefaults objectForKey:@"SMon9Homework"] length] != 0 || [[userDefaults objectForKey:@"SMon10Homework"] length] != 0) {
                
                //ローカル通知を作成
                //homeworkCall = [[UILocalNotification alloc] init];
                //時間作成
                //今の時刻を取得
                NSDate *now;
                now = [NSDate date];
                
                //現在のカレンダー取得
                NSCalendar *calendar = [NSCalendar currentCalendar];
                //時分秒,曜日を取得
                NSUInteger flags = NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit | NSWeekdayCalendarUnit;
                NSDateComponents *comps00 = [calendar components:flags fromDate:now];
                NSDateComponents *setComps = [[NSDateComponents alloc] init];
                //時分秒を00:00:00にセット
                [setComps setHour:-[comps00 hour]];
                [setComps setMinute:-[comps00 minute]];
                [setComps setSecond:-[comps00 second]];
                NSDate *date00 = [calendar dateByAddingComponents:setComps toDate:now options:0];
                
                //日曜なら
                if ([comps00 weekday] == 1) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+0];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //月曜なら
                }else if ([comps00 weekday] == 2) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+6];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //火曜なら
                }else if ([comps00 weekday] == 3) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+5];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //水曜なら
                }else if ([comps00 weekday] == 4) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+4];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //木曜なら
                }else if ([comps00 weekday] == 5) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+3];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //金曜なら
                }else if ([comps00 weekday] == 6) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+2];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //土曜なら
                }else if ([comps00 weekday] == 7) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+1];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                }
                
                
                //通知時刻を設定
                [homeworkCall setFireDate:setHomeworkDate];
                //タイムゾーン設定
                [homeworkCall setTimeZone:[NSTimeZone localTimeZone]];
                //メッセージ設定
                [homeworkCall setAlertBody:@"明日提出しなければならない課題があります。"];
                //サウンド設定
                [homeworkCall setSoundName:UILocalNotificationDefaultSoundName];
                //ボタンタイトルの設定
                [homeworkCall setAlertAction:@"確認"];
                //ローカル通知を登録
                [[UIApplication sharedApplication] scheduleLocalNotification:homeworkCall];
                
            }
            //火曜
            if ([[userDefaults objectForKey:@"STue1Homework"] length] != 0 || [[userDefaults objectForKey:@"STue2Homework"] length] != 0 || [[userDefaults objectForKey:@"STue3Homework"] length] != 0 || [[userDefaults objectForKey:@"STue4Homework"] length] != 0 || [[userDefaults objectForKey:@"STue5Homework"] length] != 0 || [[userDefaults objectForKey:@"STue6Homework"] length] != 0 || [[userDefaults objectForKey:@"STue7Homework"] length] != 0 || [[userDefaults objectForKey:@"STue8Homework"] length] != 0 || [[userDefaults objectForKey:@"STue9Homework"] length] != 0 || [[userDefaults objectForKey:@"STue10Homework"] length] != 0) {
                
                //ローカル通知を作成
                //UILocalNotification *homeworkCall = [[UILocalNotification alloc] init];
                //時間作成
                //今の時刻を取得
                NSDate *now;
                now = [NSDate date];
                
                //現在のカレンダー取得
                NSCalendar *calendar = [NSCalendar currentCalendar];
                //時分秒,曜日を取得
                NSUInteger flags = NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit | NSWeekdayCalendarUnit;
                NSDateComponents *comps00 = [calendar components:flags fromDate:now];
                NSDateComponents *setComps = [[NSDateComponents alloc] init];
                //時分秒を00:00:00にセット
                [setComps setHour:-[comps00 hour]];
                [setComps setMinute:-[comps00 minute]];
                [setComps setSecond:-[comps00 second]];
                NSDate *date00 = [calendar dateByAddingComponents:setComps toDate:now options:0];
                
                //日曜なら
                if ([comps00 weekday] == 1) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+1];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //月曜なら
                }else if ([comps00 weekday] == 2) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+0];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //火曜なら
                }else if ([comps00 weekday] == 3) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+6];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //水曜なら
                }else if ([comps00 weekday] == 4) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+5];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //木曜なら
                }else if ([comps00 weekday] == 5) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+4];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //金曜なら
                }else if ([comps00 weekday] == 6) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+3];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //土曜なら
                }else if ([comps00 weekday] == 7) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+2];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                }
                
                
                //通知時刻を設定
                [homeworkCall setFireDate:setHomeworkDate];
                //タイムゾーン設定
                [homeworkCall setTimeZone:[NSTimeZone localTimeZone]];
                //メッセージ設定
                [homeworkCall setAlertBody:@"明日提出しなければならない課題があります。"];
                //サウンド設定
                [homeworkCall setSoundName:UILocalNotificationDefaultSoundName];
                //ボタンタイトルの設定
                [homeworkCall setAlertAction:@"確認"];
                //ローカル通知を登録
                [[UIApplication sharedApplication] scheduleLocalNotification:homeworkCall];
                
            }
            //水曜
            if ([[userDefaults objectForKey:@"SWed1Homework"] length] != 0 || [[userDefaults objectForKey:@"SWed2Homework"] length] != 0 || [[userDefaults objectForKey:@"SWed3Homework"] length] != 0 || [[userDefaults objectForKey:@"SWed4Homework"] length] != 0 || [[userDefaults objectForKey:@"SWed5Homework"] length] != 0 || [[userDefaults objectForKey:@"SWed6Homework"] length] != 0 || [[userDefaults objectForKey:@"SWed7Homework"] length] != 0 || [[userDefaults objectForKey:@"SWed8Homework"] length] != 0 || [[userDefaults objectForKey:@"SWed9Homework"] length] != 0 || [[userDefaults objectForKey:@"SWed10Homework"] length] != 0) {
                
                //ローカル通知を作成
                //UILocalNotification *homeworkCall = [[UILocalNotification alloc] init];
                //時間作成
                //今の時刻を取得
                NSDate *now;
                now = [NSDate date];
                
                //現在のカレンダー取得
                NSCalendar *calendar = [NSCalendar currentCalendar];
                //時分秒,曜日を取得
                NSUInteger flags = NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit | NSWeekdayCalendarUnit;
                NSDateComponents *comps00 = [calendar components:flags fromDate:now];
                NSDateComponents *setComps = [[NSDateComponents alloc] init];
                //時分秒を00:00:00にセット
                [setComps setHour:-[comps00 hour]];
                [setComps setMinute:-[comps00 minute]];
                [setComps setSecond:-[comps00 second]];
                NSDate *date00 = [calendar dateByAddingComponents:setComps toDate:now options:0];
                
                //日曜なら
                if ([comps00 weekday] == 1) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+2];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //月曜なら
                }else if ([comps00 weekday] == 2) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+1];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //火曜なら
                }else if ([comps00 weekday] == 3) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+0];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //水曜なら
                }else if ([comps00 weekday] == 4) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+6];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //木曜なら
                }else if ([comps00 weekday] == 5) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+5];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //金曜なら
                }else if ([comps00 weekday] == 6) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+4];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //土曜なら
                }else if ([comps00 weekday] == 7) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+3];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                }
                
                
                //通知時刻を設定
                [homeworkCall setFireDate:setHomeworkDate];
                //タイムゾーン設定
                [homeworkCall setTimeZone:[NSTimeZone localTimeZone]];
                //メッセージ設定
                [homeworkCall setAlertBody:@"明日提出しなければならない課題があります。"];
                //サウンド設定
                [homeworkCall setSoundName:UILocalNotificationDefaultSoundName];
                //ボタンタイトルの設定
                [homeworkCall setAlertAction:@"確認"];
                //ローカル通知を登録
                [[UIApplication sharedApplication] scheduleLocalNotification:homeworkCall];
                
            }
            //木曜
            if ([[userDefaults objectForKey:@"SThu1Homework"] length] != 0 || [[userDefaults objectForKey:@"SThu2Homework"] length] != 0 || [[userDefaults objectForKey:@"SThu3Homework"] length] != 0 || [[userDefaults objectForKey:@"SThu4Homework"] length] != 0 || [[userDefaults objectForKey:@"SThu5Homework"] length] != 0 || [[userDefaults objectForKey:@"SThu6Homework"] length] != 0 || [[userDefaults objectForKey:@"SThu7Homework"] length] != 0 || [[userDefaults objectForKey:@"SThu8Homework"] length] != 0 || [[userDefaults objectForKey:@"SThu9Homework"] length] != 0 || [[userDefaults objectForKey:@"SThu10Homework"] length] != 0) {
                
                //ローカル通知を作成
                //UILocalNotification *homeworkCall = [[UILocalNotification alloc] init];
                //時間作成
                //今の時刻を取得
                NSDate *now;
                now = [NSDate date];
                
                //現在のカレンダー取得
                NSCalendar *calendar = [NSCalendar currentCalendar];
                //時分秒,曜日を取得
                NSUInteger flags = NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit | NSWeekdayCalendarUnit;
                NSDateComponents *comps00 = [calendar components:flags fromDate:now];
                NSDateComponents *setComps = [[NSDateComponents alloc] init];
                //時分秒を00:00:00にセット
                [setComps setHour:-[comps00 hour]];
                [setComps setMinute:-[comps00 minute]];
                [setComps setSecond:-[comps00 second]];
                NSDate *date00 = [calendar dateByAddingComponents:setComps toDate:now options:0];
                
                //日曜なら
                if ([comps00 weekday] == 1) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+3];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //月曜なら
                }else if ([comps00 weekday] == 2) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+2];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //火曜なら
                }else if ([comps00 weekday] == 3) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+1];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //水曜なら
                }else if ([comps00 weekday] == 4) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+0];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //木曜なら
                }else if ([comps00 weekday] == 5) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+6];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //金曜なら
                }else if ([comps00 weekday] == 6) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+5];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //土曜なら
                }else if ([comps00 weekday] == 7) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+4];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                }
                
                
                //通知時刻を設定
                [homeworkCall setFireDate:setHomeworkDate];
                //タイムゾーン設定
                [homeworkCall setTimeZone:[NSTimeZone localTimeZone]];
                //メッセージ設定
                [homeworkCall setAlertBody:@"明日提出しなければならない課題があります。"];
                //サウンド設定
                [homeworkCall setSoundName:UILocalNotificationDefaultSoundName];
                //ボタンタイトルの設定
                [homeworkCall setAlertAction:@"確認"];
                //ローカル通知を登録
                [[UIApplication sharedApplication] scheduleLocalNotification:homeworkCall];
                
            }
            //金曜
            if ([[userDefaults objectForKey:@"SFri1Homework"] length] != 0 || [[userDefaults objectForKey:@"SFri2Homework"] length] != 0 || [[userDefaults objectForKey:@"SFri3Homework"] length] != 0 || [[userDefaults objectForKey:@"SFri4Homework"] length] != 0 || [[userDefaults objectForKey:@"SFri5Homework"] length] != 0 || [[userDefaults objectForKey:@"SFri6Homework"] length] != 0 || [[userDefaults objectForKey:@"SFri7Homework"] length] != 0 || [[userDefaults objectForKey:@"SFri8Homework"] length] != 0 || [[userDefaults objectForKey:@"SFri9Homework"] length] != 0 || [[userDefaults objectForKey:@"SFri10Homework"] length] != 0) {
                
                //ローカル通知を作成
                //UILocalNotification *homeworkCall = [[UILocalNotification alloc] init];
                //時間作成
                //今の時刻を取得
                NSDate *now;
                now = [NSDate date];
                
                //現在のカレンダー取得
                NSCalendar *calendar = [NSCalendar currentCalendar];
                //時分秒,曜日を取得
                NSUInteger flags = NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit | NSWeekdayCalendarUnit;
                NSDateComponents *comps00 = [calendar components:flags fromDate:now];
                NSDateComponents *setComps = [[NSDateComponents alloc] init];
                //時分秒を00:00:00にセット
                [setComps setHour:-[comps00 hour]];
                [setComps setMinute:-[comps00 minute]];
                [setComps setSecond:-[comps00 second]];
                NSDate *date00 = [calendar dateByAddingComponents:setComps toDate:now options:0];
                
                //日曜なら
                if ([comps00 weekday] == 1) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+4];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //月曜なら
                }else if ([comps00 weekday] == 2) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+3];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //火曜なら
                }else if ([comps00 weekday] == 3) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+2];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //水曜なら
                }else if ([comps00 weekday] == 4) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+1];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //木曜なら
                }else if ([comps00 weekday] == 5) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+0];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //金曜なら
                }else if ([comps00 weekday] == 6) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+6];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //土曜なら
                }else if ([comps00 weekday] == 7) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+5];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                }
                
                
                //通知時刻を設定
                [homeworkCall setFireDate:setHomeworkDate];
                //タイムゾーン設定
                [homeworkCall setTimeZone:[NSTimeZone localTimeZone]];
                //メッセージ設定
                [homeworkCall setAlertBody:@"明日提出しなければならない課題があります。"];
                //サウンド設定
                [homeworkCall setSoundName:UILocalNotificationDefaultSoundName];
                //ボタンタイトルの設定
                [homeworkCall setAlertAction:@"確認"];
                //ローカル通知を登録
                [[UIApplication sharedApplication] scheduleLocalNotification:homeworkCall];
                
            }
            //土曜
            if ([[userDefaults objectForKey:@"SSat1Homework"] length] != 0 || [[userDefaults objectForKey:@"SSat2Homework"] length] != 0 || [[userDefaults objectForKey:@"SSat3Homework"] length] != 0 || [[userDefaults objectForKey:@"SSat4Homework"] length] != 0 || [[userDefaults objectForKey:@"SSat5Homework"] length] != 0 || [[userDefaults objectForKey:@"SSat6Homework"] length] != 0 || [[userDefaults objectForKey:@"SSat7Homework"] length] != 0 || [[userDefaults objectForKey:@"SSat8Homework"] length] != 0 || [[userDefaults objectForKey:@"SSat9Homework"] length] != 0 || [[userDefaults objectForKey:@"SSat10Homework"] length] != 0) {
                
                //ローカル通知を作成
                //UILocalNotification *homeworkCall = [[UILocalNotification alloc] init];
                //時間作成
                //今の時刻を取得
                NSDate *now;
                now = [NSDate date];
                
                //現在のカレンダー取得
                NSCalendar *calendar = [NSCalendar currentCalendar];
                //時分秒,曜日を取得
                NSUInteger flags = NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit | NSWeekdayCalendarUnit;
                NSDateComponents *comps00 = [calendar components:flags fromDate:now];
                NSDateComponents *setComps = [[NSDateComponents alloc] init];
                //時分秒を00:00:00にセット
                [setComps setHour:-[comps00 hour]];
                [setComps setMinute:-[comps00 minute]];
                [setComps setSecond:-[comps00 second]];
                NSDate *date00 = [calendar dateByAddingComponents:setComps toDate:now options:0];
                
                //日曜なら
                if ([comps00 weekday] == 1) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+5];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //月曜なら
                }else if ([comps00 weekday] == 2) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+4];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //火曜なら
                }else if ([comps00 weekday] == 3) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+3];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //水曜なら
                }else if ([comps00 weekday] == 4) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+2];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //木曜なら
                }else if ([comps00 weekday] == 5) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+1];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //金曜なら
                }else if ([comps00 weekday] == 6) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+0];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //土曜なら
                }else if ([comps00 weekday] == 7) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+6];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                }
                
                
                //通知時刻を設定
                [homeworkCall setFireDate:setHomeworkDate];
                //タイムゾーン設定
                [homeworkCall setTimeZone:[NSTimeZone localTimeZone]];
                //メッセージ設定
                [homeworkCall setAlertBody:@"明日提出しなければならない課題があります。"];
                //サウンド設定
                [homeworkCall setSoundName:UILocalNotificationDefaultSoundName];
                //ボタンタイトルの設定
                [homeworkCall setAlertAction:@"確認"];
                //ローカル通知を登録
                [[UIApplication sharedApplication] scheduleLocalNotification:homeworkCall];
                
            }
            //日曜
            if ([[userDefaults objectForKey:@"SSun1Homework"] length] != 0 || [[userDefaults objectForKey:@"SSun2Homework"] length] != 0 || [[userDefaults objectForKey:@"SSun3Homework"] length] != 0 || [[userDefaults objectForKey:@"SSun4Homework"] length] != 0 || [[userDefaults objectForKey:@"SSun5Homework"] length] != 0 || [[userDefaults objectForKey:@"SSun6Homework"] length] != 0 || [[userDefaults objectForKey:@"SSun7Homework"] length] != 0 || [[userDefaults objectForKey:@"SSun8Homework"] length] != 0 || [[userDefaults objectForKey:@"SSun9Homework"] length] != 0 || [[userDefaults objectForKey:@"SSun10Homework"] length] != 0) {
                
                //ローカル通知を作成
                //UILocalNotification *homeworkCall = [[UILocalNotification alloc] init];
                //時間作成
                //今の時刻を取得
                NSDate *now;
                now = [NSDate date];
                
                //現在のカレンダー取得
                NSCalendar *calendar = [NSCalendar currentCalendar];
                //時分秒,曜日を取得
                NSUInteger flags = NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit | NSWeekdayCalendarUnit;
                NSDateComponents *comps00 = [calendar components:flags fromDate:now];
                NSDateComponents *setComps = [[NSDateComponents alloc] init];
                //時分秒を00:00:00にセット
                [setComps setHour:-[comps00 hour]];
                [setComps setMinute:-[comps00 minute]];
                [setComps setSecond:-[comps00 second]];
                NSDate *date00 = [calendar dateByAddingComponents:setComps toDate:now options:0];
                
                //日曜なら
                if ([comps00 weekday] == 1) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+6];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //月曜なら
                }else if ([comps00 weekday] == 2) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+5];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //火曜なら
                }else if ([comps00 weekday] == 3) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+4];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //水曜なら
                }else if ([comps00 weekday] == 4) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+3];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //木曜なら
                }else if ([comps00 weekday] == 5) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+2];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //金曜なら
                }else if ([comps00 weekday] == 6) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+1];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                    //土曜なら
                }else if ([comps00 weekday] == 7) {
                    NSDateComponents *setDateComps = [[NSDateComponents alloc] init];
                    [setDateComps setDay:+0];
                    [setDateComps setHour:+[[userDefaults objectForKey:@"NotificationTime"] intValue]];
                    setHomeworkDate = [calendar dateByAddingComponents:setDateComps toDate:date00 options:0];
                }
                
                
                //通知時刻を設定
                [homeworkCall setFireDate:setHomeworkDate];
                //タイムゾーン設定
                [homeworkCall setTimeZone:[NSTimeZone localTimeZone]];
                //メッセージ設定
                [homeworkCall setAlertBody:@"明日提出しなければならない課題があります。"];
                //サウンド設定
                [homeworkCall setSoundName:UILocalNotificationDefaultSoundName];
                //ボタンタイトルの設定
                [homeworkCall setAlertAction:@"確認"];
                //ローカル通知を登録
                [[UIApplication sharedApplication] scheduleLocalNotification:homeworkCall];
                
            }
        }
        
    }
    }
    [self.view bringSubviewToFront:bannerView_];
    [UIApplication sharedApplication].applicationIconBadgeNumber = 0;
}


-(void)segmentDidChange:(id)sender{
    if([sender isKindOfClass:[UISegmentedControl class]]){
        UISegmentedControl *segment = sender;
        
        //ユーザーデフォルト読み込み
        NSUserDefaults *userDefaults;
        userDefaults = [NSUserDefaults standardUserDefaults];
        //NSLog(@"%d",[[ColorDictionary objectForKey:[NSString stringWithFormat:@"%d",segment.selectedSegmentIndex]] integerValue]);
        switch ([[ColorDictionary objectForKey:[NSString stringWithFormat:@"%d",segment.selectedSegmentIndex]] integerValue]) {
            case 0:
                textColor = [UIColor blackColor];
                break;
            case 1:
                textColor = [UIColor darkGrayColor];
                break;
            case 2:
                textColor = [UIColor lightGrayColor];
                break;
            case 3:
                textColor = [UIColor whiteColor];
                break;
            case 4:
                textColor = [UIColor grayColor];
                break;
            case 5:
                textColor = [UIColor redColor];
                break;
            case 6:
                textColor = [UIColor greenColor];
                break;
            case 7:
                textColor = [UIColor blueColor];
                break;
            case 8:
                textColor = [UIColor cyanColor];
                break;
            case 9:
                textColor = [UIColor yellowColor];
                break;
            case 10:
                textColor = [UIColor magentaColor];
                break;
            case 11:
                textColor = [UIColor orangeColor];
                break;
            case 12:
                textColor = [UIColor purpleColor];
                break;
            case 13:
                textColor = [UIColor brownColor];
                break;
            default:
                textColor = [UIColor blackColor];
                break;
        }
        selectImage = [UIImage imageWithData:[BGIDictionary objectForKey:[NSString stringWithFormat:@"%d",segment.selectedSegmentIndex]]];
        BGIAlpha = [[AlphaDictionary objectForKey:[userDefaults objectForKey:@"SelectedIndex"]] floatValue];
        
        //初期代入
        for (int i = 0; i < 10; i++) {
            lessonName_[i] = [NSString stringWithFormat:@"%@%@%dLessonName", [ForS objectAtIndex:[[userDefaults objectForKey:@"FirstOrSecond"] intValue]], [week objectAtIndex:segment.selectedSegmentIndex], i+1];
            
            roomName_[i] = [NSString stringWithFormat:@"%@%@%dRoomName", [ForS objectAtIndex:[[userDefaults objectForKey:@"FirstOrSecond"] intValue]], [week objectAtIndex:segment.selectedSegmentIndex], i+1];
            
            professorName_[i] = [NSString stringWithFormat:@"%@%@%dProfessorName", [ForS objectAtIndex:[[userDefaults objectForKey:@"FirstOrSecond"] intValue]], [week objectAtIndex:segment.selectedSegmentIndex], i+1];
            
            valuationBasis1_[i] = [NSString stringWithFormat:@"%@%@%dValuationBasis1", [ForS objectAtIndex:[[userDefaults objectForKey:@"FirstOrSecond"] intValue]], [week objectAtIndex:segment.selectedSegmentIndex], i+1];
            
            valuationBasis2_[i] = [NSString stringWithFormat:@"%@%@%dValuationBasis2", [ForS objectAtIndex:[[userDefaults objectForKey:@"FirstOrSecond"] intValue]], [week objectAtIndex:segment.selectedSegmentIndex], i+1];
            
            valuationRatio1_[i] = [NSString stringWithFormat:@"%@%@%dValuationRatio1", [ForS objectAtIndex:[[userDefaults objectForKey:@"FirstOrSecond"] intValue]], [week objectAtIndex:segment.selectedSegmentIndex], i+1];
            
            valuationRatio2_[i] = [NSString stringWithFormat:@"%@%@%dValuationRatio2", [ForS objectAtIndex:[[userDefaults objectForKey:@"FirstOrSecond"] intValue]], [week objectAtIndex:segment.selectedSegmentIndex], i+1];
            
            homework_[i] = [NSString stringWithFormat:@"%@%@%dHomework", [ForS objectAtIndex:[[userDefaults objectForKey:@"FirstOrSecond"] intValue]], [week objectAtIndex:segment.selectedSegmentIndex], i+1];
            
            absence_[i] = [NSString stringWithFormat:@"%@%@%dAbsence", [ForS objectAtIndex:[[userDefaults objectForKey:@"FirstOrSecond"] integerValue]], [week objectAtIndex:segment.selectedSegmentIndex], i+1];
            
            lateness_[i] = [NSString stringWithFormat:@"%@%@%dLateness", [ForS objectAtIndex:[[userDefaults objectForKey:@"FirstOrSecond"] integerValue]], [week objectAtIndex:segment.selectedSegmentIndex], i+1];
            
            memorandum_[i] = [NSString stringWithFormat:@"%@%@%dMemorandum", [ForS objectAtIndex:[[userDefaults objectForKey:@"FirstOrSecond"] integerValue]], [week objectAtIndex:segment.selectedSegmentIndex], i+1];
            
            startTime_[i] = [userDefaults objectForKey:[NSString stringWithFormat:@"%dStartTime",i + 1]];
            
            endTime_[i] = [userDefaults objectForKey:[NSString stringWithFormat:@"%dEndTime",i + 1]];
            
            tableTime_[i] = [userDefaults objectForKey:[NSString stringWithFormat:@"TableTime%d", i + 1]];
            
            self.navigationItem.title = [weekJapanese_ objectAtIndex:segment.selectedSegmentIndex];
        }
        
        for (int i = 0; i < [[userDefaults objectForKey:@"TableNumber"] intValue]; i++) {
            //
            [timeTableButton_[i] setFrame:CGRectMake(0, i * 320, 320, 320)];
            bgImage_[i] = selectImage;
            bgImage_[i] = [bgImage_[i] stretchableImageWithLeftCapWidth:0 topCapHeight:0];
            [timeTableButton_[i] setBackgroundImage:bgImage_[i] forState:UIControlStateNormal];
            [timeTableButton_[i] setTag:i];
            [timeTableButton_[i] addTarget:self action:@selector(timeTableButtonPush:) forControlEvents:UIControlEventTouchUpInside];
            [timeTableButton_[i] setAlpha:BGIAlpha];
            [timeTableButton_[i] setBackgroundColor:[UIColor whiteColor]];

            //時限
            [tableTimeLabel_[i] setFrame:CGRectMake(3, i * 320 + 5, 60, 60)];
            [tableTimeLabel_[i] setText:tableTime_[i]];
            [tableTimeLabel_[i] setFont:[UIFont systemFontOfSize:50]];
            [tableTimeLabel_[i] setTextAlignment:NSTextAlignmentCenter];
            [tableTimeLabel_[i] setTextColor:textColor];
            [tableTimeLabel_[i] setAdjustsFontSizeToFitWidth:YES];
            [tableTimeLabel_[i] setBackgroundColor:[UIColor clearColor]];
            //[scrollView addSubview:tableTimeLabel_[i]];
            
            //開始時刻
            [startTimeLabel_[i] setFrame:CGRectMake(5, i * 320 + 210, 55, 25)];
            [startTimeLabel_[i] setText:startTime_[i]];
            [startTimeLabel_[i] setFont:[UIFont systemFontOfSize:20]];
            [startTimeLabel_[i] setTextAlignment:NSTextAlignmentRight];
            [startTimeLabel_[i] setTextColor:textColor];
            [startTimeLabel_[i] setBackgroundColor:[UIColor clearColor]];
            //[scrollView addSubview:startTimeLabel_[i]];
            
            //"|"
            [waveLabel_[i] setFrame:CGRectMake(4, i * 320 + 242, 60, 25)];
            [waveLabel_[i] setText:@"|"];
            [waveLabel_[i] setFont:[UIFont systemFontOfSize:20]];
            [waveLabel_[i] setTextAlignment:NSTextAlignmentCenter];
            [waveLabel_[i] setTextColor:textColor];
            [waveLabel_[i] setBackgroundColor:[UIColor clearColor]];
            //[scrollView addSubview:waveLabel_[i]];
            
            //終了時刻
            [endTimeLabel_[i] setFrame:CGRectMake(5, i * 320 + 275, 55, 25)];
            [endTimeLabel_[i] setText:endTime_[i]];
            [endTimeLabel_[i] setFont:[UIFont systemFontOfSize:20]];
            [endTimeLabel_[i] setTextAlignment:NSTextAlignmentRight];
            [endTimeLabel_[i] setTextColor:textColor];
            [endTimeLabel_[i] setBackgroundColor:[UIColor clearColor]];
            //[scrollView addSubview:endTimeLabel_[i]];
            
            //授業名
            [lessonNameLabel_[i] setFrame:CGRectMake(80, i * 320, 235, 50)];
            [lessonNameLabel_[i] setText:[@"" stringByAppendingFormat:@"%@",[userDefaults objectForKey:lessonName_[i]]]];
            [lessonNameLabel_[i] setFont:[UIFont systemFontOfSize:20]];
            [lessonNameLabel_[i] setTextAlignment:NSTextAlignmentLeft];
            [lessonNameLabel_[i] setTextColor:textColor];
            [lessonNameLabel_[i] setBackgroundColor:[UIColor clearColor]];
            //[scrollView addSubview:lessonNameLabel_[i]];
            
            //教授名
            [professorNameLabel_[i] setFrame:CGRectMake(80, i * 320 + 28, 235, 50)];
            [professorNameLabel_[i] setText:[@"" stringByAppendingFormat:@"%@",[userDefaults objectForKey:professorName_[i]]]];
            [professorNameLabel_[i] setFont:[UIFont systemFontOfSize:18]];
            [professorNameLabel_[i] setTextAlignment:NSTextAlignmentLeft];
            [professorNameLabel_[i] setTextColor:textColor];
            [professorNameLabel_[i] setBackgroundColor:[UIColor clearColor]];
            //[scrollView addSubview:professorNameLabel_[i]];
            
            //教室名
            [roomNameLabel_[i] setFrame:CGRectMake(80, i * 320 + 55, 235, 50)];
            [roomNameLabel_[i] setText:[@"" stringByAppendingFormat:@"%@",[userDefaults objectForKey:roomName_[i]]]];
            [roomNameLabel_[i] setFont:[UIFont systemFontOfSize:18]];
            [roomNameLabel_[i] setTextAlignment:NSTextAlignmentLeft];
            [roomNameLabel_[i] setTextColor:textColor];
            [roomNameLabel_[i] setBackgroundColor:[UIColor clearColor]];
            //[scrollView addSubview:roomNameLabel_[i]];
            
            //評価基準1
            [valuationBasis1Label_[i] setFrame:CGRectMake(80, i * 320 + 82, 235, 50)];
            if ([[userDefaults objectForKey:valuationBasis1_[i]] length] != 0) {
                [valuationBasis1Label_[i] setText:[[userDefaults objectForKey:valuationBasis1_[i]] stringByAppendingFormat:@"：%@",[userDefaults objectForKey:valuationRatio1_[i]]]];
            }else {
                [valuationBasis1Label_[i] setText:@""];
            }
            [valuationBasis1Label_[i] setFont:[UIFont systemFontOfSize:18]];
            [valuationBasis1Label_[i] setTextAlignment:NSTextAlignmentLeft];
            [valuationBasis1Label_[i] setTextColor:textColor];
            [valuationBasis1Label_[i] setBackgroundColor:[UIColor clearColor]];
            //[scrollView addSubview:valuationBasis1Label_[i]];
            
            //評価基準2
            [valuationBasis2Label_[i] setFrame:CGRectMake(80, i * 320 + 109, 235, 50)];
            if ([[userDefaults objectForKey:valuationBasis2_[i]] length] != 0) {
                [valuationBasis2Label_[i] setText:[[userDefaults objectForKey:valuationBasis2_[i]] stringByAppendingFormat:@"：%@",[userDefaults objectForKey:valuationRatio2_[i]]]];
            }else {
                [valuationBasis2Label_[i] setText:@""];
            }
            [valuationBasis2Label_[i] setFont:[UIFont systemFontOfSize:18]];
            [valuationBasis2Label_[i] setTextAlignment:NSTextAlignmentLeft];
            [valuationBasis2Label_[i] setTextColor:textColor];
            [valuationBasis2Label_[i] setBackgroundColor:[UIColor clearColor]];
            //[scrollView addSubview:valuationBasis2Label_[i]];
            
            //課題
            [homeworkLabel_[i] setFrame:CGRectMake(80, i * 320 + 136, 235, 50)];
            if ([[userDefaults objectForKey:homework_[i]] length] != 0) {
                [homeworkLabel_[i] setText:[@"課題：" stringByAppendingFormat:@"%@",[userDefaults objectForKey:homework_[i]]]];
            }else {
                [homeworkLabel_[i] setText:@""];
            }
            [homeworkLabel_[i] setFont:[UIFont systemFontOfSize:18]];
            [homeworkLabel_[i] setTextAlignment:NSTextAlignmentLeft];
            [homeworkLabel_[i] setTextColor:textColor];
            [homeworkLabel_[i] setBackgroundColor:[UIColor clearColor]];
            //[scrollView addSubview:homeworkLabel_[i]];
            
            //欠席数
            [absenceLabel_[i] setFrame:CGRectMake(80, i * 320 + 163, 100, 50)];
            [absenceLabel_[i] setText:[NSString stringWithFormat:@"欠：%d", [userDefaults integerForKey:absence_[i]]]];
            [absenceLabel_[i] setFont:[UIFont systemFontOfSize:18]];
            [absenceLabel_[i] setTextAlignment:NSTextAlignmentLeft];
            [absenceLabel_[i] setTextColor:textColor];
            [absenceLabel_[i] setBackgroundColor:[UIColor clearColor]];
            //[scrollView addSubview:absenceLabel_[i]];
            
            //遅刻数
            [latenessLabel_[i] setFrame:CGRectMake(180, i * 320 + 163, 100, 50)];
            [latenessLabel_[i] setText:[NSString stringWithFormat:@"遅：%d", [userDefaults integerForKey:lateness_[i]]]];
            [latenessLabel_[i] setFont:[UIFont systemFontOfSize:18]];
            [latenessLabel_[i] setTextAlignment:NSTextAlignmentLeft];
            [latenessLabel_[i] setTextColor:textColor];
            [latenessLabel_[i] setBackgroundColor:[UIColor clearColor]];
            //[scrollView addSubview:latenessLabel_[i]];
            
            //教科書などの諸メモ欄
            [memorandumLabel_[i] setFrame:CGRectMake(80, i * 320 + 190, 235, 120)];
            
            if ([[userDefaults objectForKey:memorandum_[i]] length] != 0) {
                [memorandumLabel_[i] setText:[@"" stringByAppendingFormat:@"%@", [userDefaults objectForKey:memorandum_[i]]]];
                //NSLog(@"log");
            }else {
                [memorandumLabel_[i] setText:@" "];
                //NSLog(@"");
            }
            
            //[memorandumLabel_[i] setText:[@"" stringByAppendingFormat:@"%@", [userDefaults objectForKey:memorandum_[i]]]];
            [memorandumLabel_[i] setFont:[UIFont systemFontOfSize:18]];
            [memorandumLabel_[i] setTextAlignment:NSTextAlignmentLeft];
            [memorandumLabel_[i] setTextColor:textColor];
            [memorandumLabel_[i] setBackgroundColor:[UIColor clearColor]];
            [memorandumLabel_[i] setNumberOfLines:4];
            //memorandumLabel_[i].backgroundColor = [UIColor whiteColor];
            //[scrollView addSubview:memorandumLabel_[i]];
            
            
        }
        
        [userDefaults setObject:[NSString stringWithFormat:@"%d", segment.selectedSegmentIndex] forKey:@"SelectedIndex"];
        
    }
}

-(IBAction)timeTableButtonPush:(id)sender{
    //ユーザーデフォルト読み込み
    NSUserDefaults *userDefaults;
    userDefaults = [NSUserDefaults standardUserDefaults];
    
    [userDefaults setObject:lessonName_[[sender tag]] forKey:@"CashLesson"];
    [userDefaults setObject:professorName_[[sender tag]] forKey:@"CashProfessor"];
    [userDefaults setObject:roomName_[[sender tag]] forKey:@"CashRoom"];
    [userDefaults setObject:homework_[[sender tag]] forKey:@"CashHomework"];
    [userDefaults setObject:valuationBasis1_[[sender tag]] forKey:@"CashBasis1"];
    [userDefaults setObject:valuationBasis2_[[sender tag]] forKey:@"CashBasis2"];
    [userDefaults setObject:valuationRatio1_[[sender tag]] forKey:@"CashRatio1"];
    [userDefaults setObject:valuationRatio2_[[sender tag]] forKey:@"CashRatio2"];
    [userDefaults setObject:absence_[[sender tag]] forKey:@"CashAbsence"];
    [userDefaults setObject:lateness_[[sender tag]] forKey:@"CashLateness"];
    [userDefaults setObject:memorandum_[[sender tag]] forKey:@"CashMemorandum"];
    
    
    NaviTextInputScene *naviTextInputScene_ = [self.storyboard instantiateViewControllerWithIdentifier:@"navitextinputscene_"];
    [self presentViewController:naviTextInputScene_ animated:YES completion:nil];
}

#warning 一覧
//時間割の一覧を表示する
-(IBAction)viewAllPush:(id)sender{
    ShowAllTableScene *showAllTableScene = [self.storyboard instantiateViewControllerWithIdentifier:@"showalltablescene"];
    [self presentViewController:showAllTableScene animated:YES completion:nil];
    
}

- (void)viewDidUnload
{
    viewAll = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

-(void)viewDidDisappear:(BOOL)animated{
     [UIApplication sharedApplication].applicationIconBadgeNumber = 0;
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


-(BOOL)shouldAutorotate{
    return NO;
}

-(NSUInteger)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskPortrait;
}

@end
