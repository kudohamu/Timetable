//
//  EvaluationsManager.h
//  Timetable
//
//  Created by 田中 裕悟 on 2015/01/21.
//
//

#import "DataBaseManager.h"

@interface EvaluationsManager : DataBaseManager

@property NSUInteger semester;
@property NSUInteger day_of_week;
@property NSUInteger table_time;
@property NSUInteger numerical_order;
@property NSString * content;
@property NSUInteger ratio;

-(void)regist;
-(void)update;
-(void)delete;
+(NSUInteger)numberOfColumns:(NSUInteger)semester :(NSUInteger)dayOfWeek;
+(NSArray *)getEvaluations: (NSUInteger) semester: (NSUInteger) dayOfWeek: (NSUInteger) tableTime;

@end
