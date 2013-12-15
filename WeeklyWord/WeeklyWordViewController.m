//
//  WeeklyWordViewController.m
//  WeeklyWord
//
//  This controller handles the first screen of the application
//  It holds the fields for Weekly Word start date, end date,
//  guid (the userId for the hris system), Last Prayer Letter Date,
//  and how you are doing personally question.  It says the
//  fields to the Weekly Word model and transition to the second screen,
//  which is Min Doing View Controller.
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

//Sets up the outline on the UITextView area so it can be seen by the user.
- (void)viewDidLoad
{
    _doingPersonalText.layer.borderWidth = 2.0f;
    _doingPersonalText.layer.borderColor = [[UIColor grayColor] CGColor];
    _doingPersonalText.layer.cornerRadius = 10.0f;
    _doingPersonalText.delegate = self;
}

//Preparing to switch to the next view controller.
- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Perform if the segue is by name @"First to second".
    if ([[segue identifier] isEqualToString:@"First To Second"])
    {
        //Setting each of the values from the screen to the model WeeklyWord
        [[self ww] setGuid:[_guid text]];
        [[self ww] setStartDate:[_startDate text]];
        [[self ww] setEndDate:[_endDate text]];
        [[self ww] setHowDoingText:[_doingPersonalText text]];
        [[self ww] setLastPLDate:[_lastPLDate text]];
        
        //Converting the answer to a Yes or No.
        NSString *needMoreContactsText = [_needMoreContacts titleForSegmentAtIndex:_needMoreContacts.selectedSegmentIndex];
        [[self ww] setNeedMoreContacts:needMoreContactsText];
        
        // Get reference to the destination view controller
        MinDoingViewController *targetVC = [segue destinationViewController];
        
        // Pass any objects to the view controller here, like...
        targetVC.wword = self.ww;
    }
}

//Getting rid of the keyboard when the return button is clicked.
- (IBAction)textField:(id)sender
{
    [sender resignFirstResponder];
}

//Getting rid of the keyboard when the background is clicked.
- (IBAction)background:(id)sender
{
    [_startDate resignFirstResponder];
    [_endDate resignFirstResponder];
    [_guid resignFirstResponder];
    [_doingPersonalText resignFirstResponder];
    [_lastPLDate resignFirstResponder];
}

//Checking the date fields to make sure they are valid dates.
- (IBAction)validation:(id)sender {
    
    UITextField *dateField = (UITextField *)sender;
    NSDateFormatter *formatDate = [[NSDateFormatter alloc] init];
    formatDate.dateFormat = @"yyyy-MM-dd";
    NSDate *dateFromString = [formatDate dateFromString:dateField.text];
    
    if (dateFromString == nil){
        [self printOutAlert];
    }
    
}

//Printing out a message that the start or end date is invalid.
- (void)printOutAlert
{
    //Defining the alert screen fields.
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Valid Date"
                                                    message:@"Please enter a valid date in the following format:  YYYY-MM-DD"
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    //Showing the alert screen
    [alert show];
}

//Listens for the doingPersonallyText UITextView to begin editing
//so the screen can be moved up.
-(void)textViewDidBeginEditing:(UITextView *)textView
{
    [self animateTextView:textView up:YES];
}

//Listens for the doingPersonallyText UITextView to end editing
//so the screen can be moved back to the original position.
- (void)textViewDidEndEditing:(UITextView *)textView
{
    [self animateTextView:textView up:NO];
}

//Actually moves the screen up when the doingPersonallyText
//UITexView field is clicked on.
-(void)animateTextView:(UITextView *)textView up:(BOOL)up
{
    const int movementDistance = -130; // tweak as needed
    const float movementDuration = 0.3f; // tweak as needed
    
    int movement = (up ? movementDistance : -movementDistance);
    
    [UIView beginAnimations: @"animateTextField" context: nil];
    [UIView setAnimationBeginsFromCurrentState: YES];
    [UIView setAnimationDuration: movementDuration];
    self.view.frame = CGRectOffset(self.view.frame, 0, movement);
    [UIView commitAnimations];
}


@end
