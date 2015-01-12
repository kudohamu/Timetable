//
//  TextInputScene_.h
//  Timetable
//
//  Created by 裕悟 on 12/11/08.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TextInputScene : UITableViewController<UITextFieldDelegate, UITextViewDelegate>{
    NSString* activeTextName;
    NSString* ValuationRatio1;
    NSString* ValuationRatio2;
    
    IBOutlet UITextField* LessonName;
    IBOutlet UITextField* ProfessorName;
    IBOutlet UITextField* RoomName;
    IBOutlet UITextField* Homework;
    IBOutlet UITextField* ValuationBasis1;
    IBOutlet UITextField* ValuationBasis2;
    IBOutlet UITextView* Memorandum;
    
    NSInteger Absence;
    NSInteger Lateness;
    
    UIStepper *stepper1, *stepper2;
    
}
@property NSString *lessonName,*professorName,*roomName,*homework,*valuationBasis1,*valuationBasis2;

-(IBAction)Done:(id)sender;
-(IBAction)Chancel:(id)sender;
-(IBAction)changeStepper1:(id)sender;
-(IBAction)changeStepper2:(id)sender;

@end
