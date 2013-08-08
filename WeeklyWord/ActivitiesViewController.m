//
//  ActivitiesViewController.m
//  WeeklyWord
//
//  Created by Amy Kamrath on 8/6/13.
//  Copyright (c) 2013 Amy Kamrath. All rights reserved.
//

#import "ActivitiesViewController.h"

@interface ActivitiesViewController ()

@end

@implementation ActivitiesViewController

- (IBAction)updateTotalHours:(id)sender {
    NSInteger planningHrs = [_planningHours.text intValue];
    NSInteger languageHrs = [_languageHours.text intValue];
    NSInteger studyingHrs = [_studyingHours.text intValue];
    NSInteger groupRelatedHrs = [_groupRelatedHours.text intValue];
    NSInteger groupResponseHrs = [_groupResponseHours.text intValue];
    NSInteger otherResponseHrs = [_otherResponseHours.text intValue];
    NSInteger totalHours = planningHrs + languageHrs + studyingHrs + groupRelatedHrs + groupResponseHrs + otherResponseHrs;
    _totalHours.text = [NSString stringWithFormat:@"%0.0f", (float)totalHours];
    
}

- (IBAction)textfield:(id)sender {
    [sender resignFirstResponder];
}
@end
