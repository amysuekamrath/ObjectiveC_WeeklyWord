//
//  TimeWithDadViewController.m
//  WeeklyWord
//
//  This controller handles the last screen of the application
//  It holds the fields for the UI Text View Time with Dad.  It saves the
//  field to the Weekly Word model and sends the data to the php script
//  so it can be saved to the database.
//
//  Created by Amy Kamrath on 7/19/13.
//  Copyright (c) 2013 Amy Kamrath. All rights reserved.
//

#import "TimeWithDadViewController.h"

@interface TimeWithDadViewController ()

@end

@implementation TimeWithDadViewController
@synthesize wword;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];

    return self;
}

- (void)viewDidLoad
{
    _timeWithDadText.layer.borderWidth = 2.0f;
    _timeWithDadText.layer.borderColor = [[UIColor grayColor] CGColor];
    _timeWithDadText.layer.cornerRadius = 10.0f;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

//Listens for the background to be clicked
//so the keyboard disappears.
- (IBAction)background:(id)sender {
    [_timeWithDadText resignFirstResponder];
}

//This function submits the data from the Weekly Word screens to the database
- (IBAction)submit:(id)sender {
    
    [[self wword] setTimeWithDad:[_timeWithDadText text]];
    NSString *post = [NSString stringWithFormat:@"&relationship=%@&personally=%@&startdt=%@&enddt=%@&guid=%@&min=%@&praying=%@&studying=%d&class=%d&planning=%d&groupRelated=%d&groupResponse=%d&otherRequired=%d&cool=%d&lastpldt=%@&contacts=%@&object1=%@&object2=%@&object3=%@&object4=%@",wword.getTimeWithDad, wword.getHowDoingText, wword.getStartDate, wword.getEndDate,wword.getGuid,wword.getMinDoingText,wword.getPrayingForText, wword.getStudyingHours, wword.getLanguageHours, wword.getPlanningHours, wword.getGroupRelatedHours, wword.getGroupResponseHours, wword.getOtherRequiredHours, wword.getCoolStudyHours, wword.getLastPLDate, wword.getNeedMoreContacts, wword.getObjective1, wword.getObjective2, wword.getObjective3, wword.getObjective4 ];
    
    NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion: YES];
    
    NSString *postLength = [NSString stringWithFormat:@"%d",[postData length]];
    
    //This runs 
    NSURL *url = [NSURL URLWithString:@"http://localhost:8080/phpScript/index.php"];
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    [request setURL:url];
    [request setHTTPMethod:@"POST"];
    [request setValue:postLength forHTTPHeaderField:@"Content-Length"];
    [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Current-Type"];
    [request setHTTPBody:postData];
    NSURLConnection *theConnection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    
}
@end
