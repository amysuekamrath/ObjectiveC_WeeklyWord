//
//  MinDoingViewController.h
//  WeeklyWord
//
//  Created by Amy Kamrath on 8/6/13.
//  Copyright (c) 2013 Amy Kamrath. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WeeklyWord.h"

@interface MinDoingViewController : UIViewController<UITextViewDelegate>
@property (weak, nonatomic) IBOutlet WeeklyWord *wword;
@property (weak, nonatomic) IBOutlet UITextView *minDoingText;
@property (weak, nonatomic) IBOutlet UITextView *prayingForText;

- (IBAction)background:(id)sender;

@end
