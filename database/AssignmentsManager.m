//
//  AssignmentsManager.m
//  Timetable
//
//  Created by 田中 裕悟 on 2015/01/21.
//
//

#import "AssignmentsManager.h"

@implementation AssignmentsManager

@synthesize semester;
@synthesize day_of_week;
@synthesize table_time;
@synthesize numerical_order;
@synthesize content;
@synthesize filling_datetime;
@synthesize notification_datetime;

-(void)regist {
    
}
-(void)update {
    
}
-(void)delete {
    
}

+(NSUInteger)numberOfColumns:(NSUInteger)semester :(NSUInteger)dayOfWeek {
    FMDatabase *db = [[[self alloc] init] connectDataBase];
    NSString *query = @"SELECT COUNT(*) as count FROM assignments WHERE semester = ? AND day_of_week = ?";
    
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

+(NSArray *)getAssignments:(NSUInteger)semester :(NSUInteger)dayOfWeek :(NSUInteger)tableTime {
    FMDatabase *db = [[[self alloc] init] connectDataBase];
    NSString *query = @"SELECT * FROM assignments ORDER BY numerical_order ASC";
    
    NSMutableArray *assignments = [NSMutableArray arrayWithObjects: nil];
    [db open];
    FMResultSet *recordSets = [db executeQuery:query, semester, dayOfWeek, tableTime];
    while ([recordSets next]) {
        AssignmentsManager *assignment = [[self alloc] init];
        assignment.semester = semester;
        assignment.day_of_week = dayOfWeek;
        assignment.table_time = tableTime;
        assignment.numerical_order = [recordSets intForColumn:@"numerical_order"];
        assignment.content = [recordSets stringForColumn:@"content"];
        
        NSDateFormatter *format = [[NSDateFormatter alloc] init];
        [format setLocale:[[NSLocale alloc] initWithLocaleIdentifier:@"ja_JP"]];
        [format setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
        assignment.filling_datetime = [format dateFromString:[recordSets stringForColumn:@"filling_datetime"]];
        assignment.notification_datetime = [format dateFromString:[recordSets stringForColumn:@"notification_datetime"]];
        [assignments addObject: assignment];
    }
    [recordSets close];
    [db close];
    return assignments;
}

@end
