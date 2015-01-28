//
//  DataBaseManager.m
//  Timetable
//
//  Created by 田中 裕悟 on 2015/01/20.
//
//

#import "DataBaseManager.h"

@implementation DataBaseManager
-(FMDatabase *)connectDataBase {
    NSArray  *paths = NSSearchPathForDirectoriesInDomains( NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *dir = [paths objectAtIndex:0];
    NSString *db_path  = [dir stringByAppendingPathComponent:@"timetable.db"];
    NSLog(@"%@", db_path);
    FMDatabase *db = [FMDatabase databaseWithPath:db_path];
    
    return db;
}
@end
