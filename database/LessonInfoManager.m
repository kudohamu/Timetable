//
//  LessonInfoManager.m
//  Timetable
//
//  Created by 田中 裕悟 on 2015/01/20.
//
//

#import "LessonInfoManager.h"

@implementation LessonInfoManager

@synthesize semester;
@synthesize dayOfWeek;
@synthesize tableTime;
@synthesize lesson;
@synthesize professor;
@synthesize room;
@synthesize absence;
@synthesize lateness;
@synthesize memo;
@synthesize startTime;
@synthesize endTime;

-(void)regist {
    FMDatabase *db = [self connectDataBase];
    NSString *query = @"SELECT COUNT(*) as count FROM lesson_info WHERE semester = ? AND day_of_week = ? AND table_time";
    
    int count = 0;
    [db open];
    FMResultSet *recordSets = [db executeQuery:query, semester, dayOfWeek];
    while ([recordSets next]) {
        count = [recordSets intForColumn:@"count"];
    }
    [recordSets close];
    [db close];
    
    if (count == 0) query = @"INSERT INTO lesson_info (semester, day_of_week, table_time, lesson, professor, room, absence, lateness, memo, start_time, end_time) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    else query = @"UPDATE lesson_info WHERE semester = ?, day_of_week = ?, table_time = ? SET lesson = ?, professor = ?, room = ?, absence = ?, lateness = ?, memo = ?, start_time = ?, end_time = ?";
    
    [db open];
    [db executeUpdate:query, semester, dayOfWeek, tableTime, lesson, professor, room, absence, lateness, memo, startTime, endTime];
    [db close];
}

-(void)update {

}

-(void)delete {

}

+(LessonInfoManager *)init:(NSUInteger)semester :(NSUInteger)dayOfWeek :(NSUInteger)tableTime {
    FMDatabase *db = [[[self alloc] init] connectDataBase];
    NSString *query = [NSString stringWithFormat:@"SELECT * FROM lesson_info WHERE semester = %d AND day_of_week = %d AND table_time = %d", (int)semester, (int)dayOfWeek, (int)tableTime];
    
    LessonInfoManager *lessonInfoManager = [[self alloc] init];
    [db open];
    FMResultSet *recordSets = [db executeQuery:query];
    while ([recordSets next]) {
        lessonInfoManager.semester = semester;
        lessonInfoManager.dayOfWeek = dayOfWeek;
        lessonInfoManager.tableTime = tableTime;
        lessonInfoManager.lesson = [recordSets stringForColumn:@"lesson"];
        lessonInfoManager.professor = [recordSets stringForColumn:@"professor"];
        lessonInfoManager.room = [recordSets stringForColumn:@"room"];
        lessonInfoManager.absence = [recordSets intForColumn:@"absence"];
        lessonInfoManager.lateness = [recordSets intForColumn:@"lateness"];
        lessonInfoManager.memo = [recordSets stringForColumn:@"memo"];
    }
    [recordSets close];
    [db close];
    return lessonInfoManager;
}

+(NSUInteger)numberOfColumns:(NSUInteger)semester :(NSUInteger)dayOfWeek {
    FMDatabase *db = [[[self alloc] init] connectDataBase];
    NSString *query = @"SELECT COUNT(*) as count FROM lesson_info WHERE semester = ? AND day_of_week = ?";
    
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

@end
