//
//  MinDoingViewController.m
//  WeeklyWord
//
//  This controller handles the second screen of the application
//  It holds the fields for the ui text view fields minDoingText and
//  prayingForText.  It transition to the third screen,
//  which is Objectives View Controller.
//
//  Created by Amy Kamrath on 8/6/13.
//  Copyright (c) 2013 Amy Kamrath. All rights reserved.
//

#import "MinDoingViewController.h"
#import "ObjectivesViewController.h"
#import "WeeklyWord.h"

@interface MinDoingViewController ()

@end

@implementation MinDoingViewController
@synthesize wword;

//Sets up the border of the minDoingText and prayingForText fields.
- (void)viewDidLoad
{
    _minDoingText.layer.borderWidth = 2.0f;
    _minDoingText.layer.borderColor = [[UIColor grayColor] CGColor];
    _minDoingText.layer.cornerRadius = 10.0f;
    
    _prayingForText.layer.borderWidth = 2.0f;
    _prayingForText.layer.borderColor = [[UIColor grayColor] CGColor];
    _prayingForText.layer.cornerRadius = 10.0f;
    _prayingForText.delegate = self;
}

//Transitions the user to the next screen
- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Perform if the segue is by name @"First to second".
    if ([[segue identifier] isEqualToString:@"Second To Third"])
    {
        //Saves the fields to the model WeeklyWord
        [[self wword] setMinDoingText:[_minDoingText text]];
        [[self wword] setPrayingForText:[_prayingForText text]];
        
        // Get reference to the destination view controller
        ObjectivesViewController *targetVC = [segue destinationViewController];
        
        // Pass any objects to the view controller here, like...
        targetVC.wword = self.wword;
    }
}

//Gets rid of the keyboard when the background is clicked.
- (IBAction)background:(id)sender
{
    [_minDoingText resignFirstResponder];
    [_prayingForText resignFirstResponder];
}

//Listens for the UITextView fields to be clicked
//so the fields can be moved up on the screen.
-(void)textViewDidBeginEditing:(UITextView *)textView
{
    [self animateTextView:textView up:YES];
}

//Listens for the UITextView fields to be clicked out
//of so the the fields can be moved down on the screen.
- (void)textViewDidEndEditing:(UITextView *)textView
{
    [self animateTextView:textView up:NO];
}

//Actually moves the fields up on the screen and puts
//the screen in the right position.
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
