//
//  ObjectivesViewController.h
//  WeeklyWord
//
//  This header file defines the fields that are
//  displayed on the Objective Screen.
//
//  Created by Amy Kamrath on 8/13/13.
//  Copyright (c) 2013 Amy Kamrath. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "WeeklyWord.h"

@interface ObjectivesViewController : UIViewController<UITextViewDelegate>

//The definition of the model WeeklyWord
@property (weak, nonatomic) IBOutlet WeeklyWord *wword;

//The four fields displayed on the screen
@property (weak, nonatomic) IBOutlet UITextView *objective1;
@property (weak, nonatomic) IBOutlet UITextView *objective2;
@property (weak, nonatomic) IBOutlet UITextView *objective3;
@property (weak, nonatomic) IBOutlet UITextView *objective4;

//The definition of the methods used in the implementation file.
- (IBAction)background:(id)sender;


@end
