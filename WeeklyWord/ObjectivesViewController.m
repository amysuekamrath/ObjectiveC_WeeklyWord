//
//  ObjectivesViewController.m
//  WeeklyWord
//
//  Created by Amy Kamrath on 8/13/13.
//  Copyright (c) 2013 Amy Kamrath. All rights reserved.
//

#import "ObjectivesViewController.h"
#import "ActivitiesViewController.h"

@interface ObjectivesViewController ()

@end

@implementation ObjectivesViewController

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Perform if the segue is by name @"First to second".
    if ([[segue identifier] isEqualToString:@"Third To Fourth"])
    {
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
    if (self) {
        // Custom initialization
    }
    return self;
}

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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)background:(id)sender {
    [_objective1 resignFirstResponder];
    [_objective2 resignFirstResponder];
    [_objective3 resignFirstResponder];
    [_objective4 resignFirstResponder];
}

-(void)textViewDidBeginEditing:(UITextView *)textView
{
    [self animateTextView:textView up:YES];
}

- (void)textViewDidEndEditing:(UITextView *)textView
{
    [self animateTextView:textView up:NO];
}

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
