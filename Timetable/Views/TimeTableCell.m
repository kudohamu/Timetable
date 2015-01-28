//
//  TimeTableCell.m
//  Timetable
//
//  Created by 田中 裕悟 on 2015/01/21.
//
//

#import "TimeTableCell.h"

@implementation TimeTableCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setTableInfo:(NSUInteger)semester :(NSIndexPath *)indexPath {
    LessonInfoManager *lessonInfo = [LessonInfoManager init:semester :indexPath.section :indexPath.row];
    NSArray *evaluations = [EvaluationsManager getEvaluations:semester :indexPath.section :indexPath.row];
    NSArray *assignments = [AssignmentsManager getAssignments:semester :indexPath.section :indexPath.row];
    _timeLabel.text = [NSString stringWithFormat:@"%d", (int)lessonInfo.tableTime];
    _lessonLabel.text = lessonInfo.lesson;
    _professorLabel.text = lessonInfo.professor;
    _roomLabel.text = lessonInfo.room;
    for (int i = 0; i < evaluations.count; i++) {
        UILabel *evaluationLabel = [[UILabel alloc] init];
        evaluationLabel.text = [NSString stringWithFormat:@"%@：%d％", ((EvaluationsManager *)evaluations[i]).content, (int)((EvaluationsManager *)evaluations[i]).ratio];
        [evaluationLabel setFrame:CGRectMake(0, i * _lessonLabel.frame.size.height, _lessonLabel.frame.size.width, _lessonLabel.frame.size.height)];
        [_evaluationsView addSubview:evaluationLabel];
    }
    [self addConstraint:[NSLayoutConstraint constraintWithItem:_evaluationsView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:_lessonLabel attribute:NSLayoutAttributeHeight multiplier:evaluations.count constant: 0]];
    for (int i = 0; i < assignments.count; i++) {
        UILabel *assignmentLabel = [[UILabel alloc] init];
        assignmentLabel.text = ((AssignmentsManager *)assignments[i]).content;
        [assignmentLabel setFrame:CGRectMake(0, i * _lessonLabel.frame.size.height, _lessonLabel.frame.size.width, _lessonLabel.frame.size.height)];
        [_assignmentsView addSubview:assignmentLabel];
    }
    [self addConstraint:[NSLayoutConstraint constraintWithItem:_assignmentsView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:_lessonLabel attribute:NSLayoutAttributeHeight multiplier:assignments.count constant: 0]];
    _absenceLabel.text = [NSString stringWithFormat:@"欠：%d", (int)lessonInfo.absence];
    _latenessLabel.text = [NSString stringWithFormat:@"遅：%d", (int)lessonInfo.lateness];
    _memoField.text = lessonInfo.memo;
}

@end
