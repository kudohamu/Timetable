//
//  TimeTableCell.h
//  Timetable
//
//  Created by 田中 裕悟 on 2015/01/21.
//
//

#import <UIKit/UIKit.h>
#import "LessonInfoManager.h"
#import "EvaluationsManager.h"
#import "AssignmentsManager.h"

@interface TimeTableCell : UITableViewCell {
    
}
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *lessonLabel;
@property (weak, nonatomic) IBOutlet UILabel *professorLabel;
@property (weak, nonatomic) IBOutlet UILabel *roomLabel;
@property (weak, nonatomic) IBOutlet UIView *evaluationsView;
@property (weak, nonatomic) IBOutlet UIView *assignmentsView;
@property (weak, nonatomic) IBOutlet UILabel *absenceLabel;
@property (weak, nonatomic) IBOutlet UILabel *latenessLabel;
@property (weak, nonatomic) IBOutlet UITextView *memoField;
@property (weak, nonatomic) IBOutlet UILabel *startTimeLabel;
@property (weak, nonatomic) IBOutlet UILabel *endTimeLabel;

-(void)setTableInfo:(NSUInteger)semester :(NSIndexPath *)indexPath;

@end
