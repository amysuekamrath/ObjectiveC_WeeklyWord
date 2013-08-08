//
//  WeeklyWordViewController.h
//  WeeklyWord
//
//  Created by Amy Kamrath on 7/15/13.
//  Copyright (c) 2013 Amy Kamrath. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WeeklyWord.h"
#import <QuartzCore/QuartzCore.h>
#import "MinDoingViewController.h"

@interface WeeklyWordViewController : UIViewController
{
    WeeklyWord *ww;
    MinDoingViewController *minDoingViewController;
}
@property (weak, nonatomic) IBOutlet UITextField *guid;
@property (weak, nonatomic) IBOutlet UITextField *startDate;
@property (weak, nonatomic) IBOutlet UITextField *endDate;
@property (weak, nonatomic) IBOutlet UITextView *doingPersonalText;

- (IBAction)textField:(id)sender;
- (IBAction)background:(id)sender;
- (IBAction)validation:(id)sender;
- (IBAction)textFieldDidBeginEditing:(UITextField *)textField;
- (IBAction)textFieldDidEndEditing:(UITextField *)textField;

@end
