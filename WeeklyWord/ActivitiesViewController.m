//
//  ActivitiesViewController.m
//  WeeklyWord
//
//
//  This controller handles the fourth screen of the application
//  It holds the fields for the hours.  It transition to the
//  fifth screen, which is Time With Dad View Controller.
//
//  Created by Amy Kamrath on 8/6/13.
//  Copyright (c) 2013 Amy Kamrath. All rights reserved.
//

#import "ActivitiesViewController.h"
#import "TimeWithDadViewController.h"
#import "WeeklyWord.h"

@interface ActivitiesViewController ()

@end

@implementation ActivitiesViewController

//Transitions the user from this screen to the next screen
- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Perform if the segue is by name @"Fourth To Fifth".
    if ([[segue identifier] isEqualToString:@"Fourth To Fifth"])
    {
        // Get reference to the destination view controller
        TimeWithDadViewController *targetVC = [segue destinationViewController];
        
        // Pass any objects to the view controller here, like...
        targetVC.wword = self.wword;
    }
}

//Takes each of the hours fields and saves them to the model, WeeklyWord,
//and adds them together to get the total hours field.
- (IBAction)updateTotalHours:(id)sender {
    
    NSInteger planningHrs = [_planningHours.text integerValue];
    [[self wword] setPlanningHours:planningHrs];
    NSInteger languageHrs = [_languageHours.text integerValue];
    [[self wword] setLanguageHours:languageHrs];
    NSInteger studyingHrs = [_studyingHours.text integerValue];
    [[self wword] setStudyingHours:studyingHrs];
    NSInteger groupRelatedHrs = [_groupRelatedHours.text integerValue];
    [[self wword] setGroupRelatedHours:groupRelatedHrs];
    NSInteger groupResponseHrs = [_groupResponseHours.text integerValue];
    [[self wword] setGroupResponseHours:groupResponseHrs];
    NSInteger otherResponseHrs = [_otherResponseHours.text integerValue];
    [[self wword] setOtherRequiredHours:otherResponseHrs];
    NSInteger coolStudyHrs = [_coolStudyHours.text integerValue];
    [[self wword] setCoolStudyHours:coolStudyHrs];
    
    NSInteger totalHours = planningHrs + languageHrs + studyingHrs + groupRelatedHrs + groupResponseHrs + otherResponseHrs + coolStudyHrs;
    _totalHours.text = [NSString stringWithFormat:@"%0.0f", (float)totalHours];
    
}

//Removes the keyboard when the return button is clicked.
- (IBAction)textfield:(id)sender {
    
    [sender resignFirstResponder];
}

//Removes the keyboard when the background is clicked.
- (IBAction)background:(id)sender {
    
    [_planningHours resignFirstResponder];
    [_languageHours resignFirstResponder];
    [_studyingHours resignFirstResponder];
    [_groupRelatedHours resignFirstResponder];
    [_groupResponseHours resignFirstResponder];
    [_otherResponseHours resignFirstResponder];
    [_coolStudyHours resignFirstResponder];
}
@end
