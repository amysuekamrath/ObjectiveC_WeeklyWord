//
//  MinDoingViewController.h
//  WeeklyWord
//
//  This header file defines the fields that are
//  displayed on the screen.
//
//  Created by Amy Kamrath on 8/6/13.
//  Copyright (c) 2013 Amy Kamrath. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "WeeklyWord.h"

@interface MinDoingViewController : UIViewController<UITextViewDelegate>
@property (weak, nonatomic) IBOutlet WeeklyWord *wword;
@property (weak, nonatomic) IBOutlet UITextView *minDoingText;
@property (weak, nonatomic) IBOutlet UITextView *prayingForText;

//Defines the methods that are in the used implementation file (the View Controller)
- (IBAction)background:(id)sender;

@end
