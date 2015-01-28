//
//  EvaluationsManager.m
//  Timetable
//
//  Created by 田中 裕悟 on 2015/01/21.
//
//

#import "EvaluationsManager.h"

@implementation EvaluationsManager

@synthesize semester;
@synthesize day_of_week;
@synthesize table_time;
@synthesize numerical_order;
@synthesize content;
@synthesize ratio;

-(void)regist {

}
-(void)update {

}
-(void)delete {

}

+(NSUInteger)numberOfColumns:(NSUInteger)semester :(NSUInteger)dayOfWeek {
    FMDatabase *db = [[[self alloc] init] connectDataBase];
    NSString *query = @"SELECT COUNT(*) as count FROM evaluations WHERE semester = ? AND day_of_week = ?";
    
    int count = 0;
    [db open];
    FMResultSet *recordSets = [db executeQuery:query, semester, dayOfWeek];
    while ([recordSets next]) {
        count = [recordSets intForColumn:@"count"];
    }
    [recordSets close];
    [db close];
    return count;
}

+(NSArray *)getEvaluations: (NSUInteger) semester: (NSUInteger) dayOfWeek: (NSUInteger) tableTime {
    FMDatabase *db = [[[self alloc] init] connectDataBase];
    NSString *query = @"SELECT * FROM evaluations ORDER BY numerical_order ASC";
    
    NSMutableArray *evaluations = [NSMutableArray arrayWithObjects: nil];
    [db open];
    FMResultSet *recordSets = [db executeQuery:query, semester, dayOfWeek, tableTime];
    while ([recordSets next]) {
        EvaluationsManager *evaluation = [[self alloc] init];
        evaluation.semester = semester;
        evaluation.day_of_week = dayOfWeek;
        evaluation.table_time = tableTime;
        evaluation.numerical_order = [recordSets intForColumn:@"numerical_order"];
        evaluation.content = [recordSets stringForColumn:@"content"];
        evaluation.ratio = [recordSets intForColumn:@"ratio"];
        [evaluations addObject: evaluation];
    }
    [recordSets close];
    [db close];
    return evaluations;
}

@end
