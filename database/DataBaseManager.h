//
//  DataBaseManager.h
//  Timetable
//
//  Created by 田中 裕悟 on 2015/01/20.
//
//

#import <Foundation/Foundation.h>
#import "FMDatabase.h"

@interface DataBaseManager : NSObject
-(FMDatabase *)connectDataBase;
@end
