//
//  _AppDelegate.m
//  Timetable
//
//  Created by 裕悟 on 12/11/06.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "_AppDelegate.h"

@implementation _AppDelegate


@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (NSString *)applicationDocumentsDirectory {
    return [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
}



//アプリケーション終了時に保存
- (void)applicationWillTerminate:(UIApplication *)application
{
    //[self saveContext];
}

//バックグランド移行時に保存
- (void)applicationDidEnterBackground:(UIApplication *)application
{
    //[self saveContext];
}

//メモリ警告時に保存、リセット
- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application
{
    //[self saveContext];
    //[[self managedObjectContext] reset];
}

@end
