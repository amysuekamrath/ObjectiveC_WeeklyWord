//
//  TimeWithDadViewController.h
//  WeeklyWord
//
//  Created by Amy Kamrath on 7/19/13.
//  Copyright (c) 2013 Amy Kamrath. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "WeeklyWord.h"


@interface TimeWithDadViewController : UIViewController

@property (retain,nonatomic) IBOutlet WeeklyWord *wword;
@property (weak, nonatomic) IBOutlet UITextView *timeWithDadText;
- (IBAction)background:(id)sender;
- (IBAction)submit:(id)sender;

@end
