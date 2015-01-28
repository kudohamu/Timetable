//
//  LessonInfoManager.h
//  Timetable
//
//  Created by 田中 裕悟 on 2015/01/20.
//
//

#import <Foundation/Foundation.h>
#import "DataBaseManager.h"

@interface LessonInfoManager : DataBaseManager

@property NSUInteger semester;
@property NSUInteger dayOfWeek;
@property NSUInteger tableTime;
@property NSString *lesson;
@property NSString *professor;
@property NSString *room;
@property NSUInteger absence;
@property NSUInteger lateness;
@property NSString *memo;
@property NSDate *startTime;
@property NSDate *endTime;

-(void)regist;
-(void)update;
-(void)delete;
+(NSUInteger)numberOfColumns:(NSUInteger)semester :(NSUInteger)dayOfWeek;
+(LessonInfoManager *)init: (NSUInteger) semester: (NSUInteger) dayOfWeek: (NSUInteger) tableTime;

@end
