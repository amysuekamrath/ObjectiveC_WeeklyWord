//
//  ActivitiesViewController.h
//  WeeklyWord
//
//  This header file defines the fields used in
//  the UIViewController ActivitiesViewController.
//  It also defines the methods used in the implementation
//  file.
//
//  Created by Amy Kamrath on 8/6/13.
//  Copyright (c) 2013 Amy Kamrath. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WeeklyWord.h"

@interface ActivitiesViewController : UIViewController


@property (weak, nonatomic) IBOutlet WeeklyWord *wword;

//The fields used on the Activities Screen.
@property (weak, nonatomic) IBOutlet UITextField *planningHours;
@property (weak, nonatomic) IBOutlet UITextField *languageHours;
@property (weak, nonatomic) IBOutlet UITextField *studyingHours;
@property (weak, nonatomic) IBOutlet UITextField *groupRelatedHours;
@property (weak, nonatomic) IBOutlet UITextField *groupResponseHours;
@property (weak, nonatomic) IBOutlet UITextField *otherResponseHours;
@property (weak, nonatomic) IBOutlet UILabel *totalHours;
@property (weak, nonatomic) IBOutlet UITextField *coolStudyHours;

//The methods used in the implementation file
- (IBAction)updateTotalHours:(id)sender;
- (IBAction)textfield:(id)sender;
- (IBAction)background:(id)sender;


@end
