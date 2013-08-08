//
//  ActivitiesViewController.h
//  WeeklyWord
//
//  Created by Amy Kamrath on 8/6/13.
//  Copyright (c) 2013 Amy Kamrath. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WeeklyWord.h"

@interface ActivitiesViewController : UIViewController

@property (weak, nonatomic) IBOutlet WeeklyWord *wword;
@property (weak, nonatomic) IBOutlet UITextField *planningHours;
@property (weak, nonatomic) IBOutlet UITextField *languageHours;
@property (weak, nonatomic) IBOutlet UITextField *studyingHours;
@property (weak, nonatomic) IBOutlet UITextField *groupRelatedHours;
@property (weak, nonatomic) IBOutlet UITextField *groupResponseHours;
@property (weak, nonatomic) IBOutlet UITextField *otherResponseHours;
@property (weak, nonatomic) IBOutlet UILabel *totalHours;

- (IBAction)updateTotalHours:(id)sender;


@end
