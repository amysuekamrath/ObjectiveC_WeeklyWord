//
//  ObjectivesViewController.h
//  WeeklyWord
//
//  Created by Amy Kamrath on 8/13/13.
//  Copyright (c) 2013 Amy Kamrath. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "WeeklyWord.h"

@interface ObjectivesViewController : UIViewController<UITextViewDelegate>

@property (weak, nonatomic) IBOutlet WeeklyWord *wword;
@property (weak, nonatomic) IBOutlet UITextView *objective1;
@property (weak, nonatomic) IBOutlet UITextView *objective2;
@property (weak, nonatomic) IBOutlet UITextView *objective3;
@property (weak, nonatomic) IBOutlet UITextView *objective4;

- (IBAction)background:(id)sender;


@end
