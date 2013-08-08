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
{
    WeeklyWord *ww;
}
@end

@implementation MinDoingViewController
@synthesize wword;

- (WeeklyWord *)ww
{
    if (!ww){
        ww = [[WeeklyWord alloc] init];
    }
    return ww;
}

- (void)viewDidLoad
{
    _minDoingText.layer.borderWidth = 2.0f;
    _minDoingText.layer.borderColor = [[UIColor grayColor] CGColor];
    _minDoingText.layer.cornerRadius = 10.0f;
    _prayingForText.layer.borderWidth = 2.0f;
    _prayingForText.layer.borderColor = [[UIColor grayColor] CGColor];
    _prayingForText.layer.cornerRadius = 10.0f;
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Perform if the segue is by name @"First to second".
    if ([[segue identifier] isEqualToString:@"Second To Third"])
    {
        [[self ww] setMinDoingText:[_minDoingText text]];
        [[self ww] setPrayingForText:[_prayingForText text]];
        // Get reference to the destination view controller
        ActivitiesViewController *targetVC = [segue destinationViewController];
        // Pass any objects to the view controller here, like...
        targetVC.wword = self.ww;
    }
}

@end
