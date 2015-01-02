//
//  UINavigationController+SetAutorotate.m
//  Timetable
//
//  Created by 田中 裕悟 on 13/04/13.
//
//

#import "UINavigationController+SetAutorotate.h"

@implementation UINavigationController (SetAutorotate)

-(BOOL)shouldAutorotate{
    return [self.viewControllers.lastObject shouldAutorotate];
}

@end
