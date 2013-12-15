//
//  WeeklyWordViewController.h
//  WeeklyWord
//
//  This header file defines all the fields that
//  are on the Weekly Word Screen.
//
//  Created by Amy Kamrath on 7/15/13.
//  Copyright (c) 2013 Amy Kamrath. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WeeklyWord.h"
#import <QuartzCore/QuartzCore.h>
#import "MinDoingViewController.h"

@interface WeeklyWordViewController : UIViewController<UITextViewDelegate>
{
    WeeklyWord *ww;
    MinDoingViewController *minDoingViewController;
}

//Defines the fields that are displayed on the screen.
@property (weak, nonatomic) IBOutlet UITextField *guid;
@property (weak, nonatomic) IBOutlet UITextField *startDate;
@property (weak, nonatomic) IBOutlet UITextField *endDate;
@property (weak, nonatomic) IBOutlet UITextView *doingPersonalText;
@property (weak, nonatomic) IBOutlet UITextField *lastPLDate;
@property (weak, nonatomic) IBOutlet UISegmentedControl *needMoreContacts;

//Defines the methods used within the View Controller
- (IBAction)textField:(id)sender;
- (IBAction)background:(id)sender;
- (IBAction)validation:(id)sender;

@end
