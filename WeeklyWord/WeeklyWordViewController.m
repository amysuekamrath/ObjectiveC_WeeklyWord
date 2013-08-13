//
//  WeeklyWordViewController.m
//  WeeklyWord
//
//  Created by Amy Kamrath on 7/15/13.
//  Copyright (c) 2013 Amy Kamrath. All rights reserved.
//

#import "WeeklyWordViewController.h"

@interface WeeklyWordViewController ()


@end

@implementation WeeklyWordViewController

- (WeeklyWord *)ww
{
    if (!ww){
        ww = [[WeeklyWord alloc] init];
    }
    return ww;
}

- (void)viewDidLoad
{
    _doingPersonalText.layer.borderWidth = 2.0f;
    _doingPersonalText.layer.borderColor = [[UIColor grayColor] CGColor];
    _doingPersonalText.layer.cornerRadius = 10.0f;
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Perform if the segue is by name @"First to second".
    if ([[segue identifier] isEqualToString:@"First To Second"])
    {
        [[self ww] setGuid:[_guid text]];
        [[self ww] setStartDate:[_startDate text]];
        [[self ww] setEndDate:[_endDate text]];
        [[self ww] setHowDoingText:[_doingPersonalText text]];
        // Get reference to the destination view controller
        MinDoingViewController *targetVC = [segue destinationViewController];
        // Pass any objects to the view controller here, like...
        targetVC.wword = self.ww;
    }
}


- (IBAction)textField:(id)sender
{
    [sender resignFirstResponder];
}

- (IBAction)background:(id)sender
{
    [_startDate resignFirstResponder];
    [_endDate resignFirstResponder];
    [_guid resignFirstResponder];
    [_doingPersonalText resignFirstResponder];
}

- (IBAction)validation:(id)sender {
    UITextField *dateField = (UITextField *)sender;
    NSDateFormatter *formatDate = [[NSDateFormatter alloc] init];
    formatDate.dateFormat = @"yyyy-MM-dd";
    NSDate *dateFromString = [formatDate dateFromString:dateField.text];
    if (dateFromString == nil){
        [self printOutAlert];
    }
}

- (void)printOutAlert
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Valid Date"
                                                    message:@"Please enter a valid date in the following format:  YYYY-MM-DD"
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
}


@end
