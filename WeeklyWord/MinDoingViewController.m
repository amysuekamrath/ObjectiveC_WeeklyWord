//
//  MinDoingViewController.m
//  WeeklyWord
//
//  Created by Amy Kamrath on 8/6/13.
//  Copyright (c) 2013 Amy Kamrath. All rights reserved.
//

#import "MinDoingViewController.h"
#import "ActivitiesViewController.h"
#import "TimeWithDadViewController.h"
#import "WeeklyWord.h"

@interface MinDoingViewController ()

@end

@implementation MinDoingViewController
@synthesize wword;


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

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Perform if the segue is by name @"First to second".
    if ([[segue identifier] isEqualToString:@"Second To Third"])
    {
        [[self wword] setMinDoingText:[_minDoingText text]];
        [[self wword] setPrayingForText:[_prayingForText text]];
        // Get reference to the destination view controller
        ActivitiesViewController *targetVC = [segue destinationViewController];
        // Pass any objects to the view controller here, like...
        targetVC.wword = self.wword;
    }
}

- (IBAction)background:(id)sender
{
    [_minDoingText resignFirstResponder];
    [_prayingForText resignFirstResponder];
}

-(void)textViewDidBeginEditing:(UITextView *)textView
{
    [self animateTextField:textView up:YES];
}

- (void)textViewDidEndEditing:(UITextView *)textView
{
    [self animateTextField:textView up:NO];
}

-(void)animateTextField:(UITextView *)textView up:(BOOL)up
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
