//
//  TimeWithDadViewController.m
//  WeeklyWord
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
    if (self) {
        // Custom initialization
    }
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
    // Dispose of any resources that can be recreated.
}

- (IBAction)background:(id)sender {
    [_timeWithDadText resignFirstResponder];
}

- (IBAction)submit:(id)sender {
    
    [[self wword] setTimeWithDad:[_timeWithDadText text]];
    NSString *post = [NSString stringWithFormat:@"&relationship=%@&personally=%@&startdt=%@&enddt=%@&guid=%@",wword.getTimeWithDad, wword.getHowDoingText, wword.getStartDate, wword.getEndDate,wword.getGuid ];
    
    NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion: YES];
    
    NSString *postLength = [NSString stringWithFormat:@"%d",[postData length]];
    
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
