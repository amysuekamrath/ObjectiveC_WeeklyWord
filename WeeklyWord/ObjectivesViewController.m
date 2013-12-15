//
//  ObjectivesViewController.m
//  WeeklyWord
//
//
//  This controller handles the third screen of the application
//  It holds the fields for the 4 objectives.  It says the
//  fields to the Weekly Word model and transition to the fourth screen,
//  which is Activities View Controller.
//
//
//  Created by Amy Kamrath on 8/13/13.
//  Copyright (c) 2013 Amy Kamrath. All rights reserved.
//

#import "ObjectivesViewController.h"
#import "ActivitiesViewController.h"

@interface ObjectivesViewController ()

@end

@implementation ObjectivesViewController

//Transitions the user to the next screen in the application
- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Perform if the segue is by name @"Third To Fourth".
    if ([[segue identifier] isEqualToString:@"Third To Fourth"])
    {
        //Assigns the fields to the WeeklyWord model
        [[self wword] setObjective1:[_objective1 text]];
        [[self wword] setObjective2:[_objective2 text]];
        [[self wword] setObjective3:[_objective3 text]];
        [[self wword] setObjective4:[_objective4 text]];
        
        // Get reference to the destination view controller
        ActivitiesViewController *targetVC = [segue destinationViewController];
        
        // Pass any objects to the view controller here, like...
        targetVC.wword = self.wword;
    }
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    return self;
}

//Defines the outline of the 4 objective fields.
- (void)viewDidLoad
{
    _objective1.layer.borderWidth = 2.0f;
    _objective1.layer.borderColor = [[UIColor grayColor] CGColor];
    _objective1.layer.cornerRadius = 10.0f;
    _objective2.layer.borderWidth = 2.0f;
    _objective2.layer.borderColor = [[UIColor grayColor] CGColor];
    _objective2.layer.cornerRadius = 10.0f;
    _objective3.layer.borderWidth = 2.0f;
    _objective3.layer.borderColor = [[UIColor grayColor] CGColor];
    _objective3.layer.cornerRadius = 10.0f;
    _objective4.layer.borderWidth = 2.0f;
    _objective4.layer.borderColor = [[UIColor grayColor] CGColor];
    _objective4.layer.cornerRadius = 10.0f;
    _objective4.delegate = self;
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

//Removes the keyboard from the screen when the background is clicked.
- (IBAction)background:(id)sender {
    [_objective1 resignFirstResponder];
    [_objective2 resignFirstResponder];
    [_objective3 resignFirstResponder];
    [_objective4 resignFirstResponder];
}

//Listens for the editing of the UITextView field
//so the screen can be moved up.
-(void)textViewDidBeginEditing:(UITextView *)textView
{
    [self animateTextView:textView up:YES];
}

//Listens for the UITextView field to be clicked out
//of so the screen can be moved down again.
- (void)textViewDidEndEditing:(UITextView *)textView
{
    [self animateTextView:textView up:NO];
}

//Moving of the fields on the screen so they can be
//displayed above the keyboard.
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
