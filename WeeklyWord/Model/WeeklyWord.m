//
//  WeeklyWord.m
//  WeeklyWord
//
//  Created by Amy Kamrath on 7/16/13.
//  Copyright (c) 2013 Amy Kamrath. All rights reserved.
//

#import "WeeklyWord.h"

@implementation WeeklyWord

- (void)setGuid:(NSString *)anGuid
{
    guid = anGuid;
}

- (void)setHowDoingText:(NSString *)anHowDoingText
{
    howDoingText = anHowDoingText;
}

- (void)setTimeWithDad:(NSString *)anTimeWithDad
{
    timeWithDad = anTimeWithDad;
}

-(void)setStartDate:(NSString *)anStartDate
{
    startDate = anStartDate;
}

-(void)setEndDate:(NSString *)anEndDate
{
    endDate = anEndDate;
}

-(void)setMinDoingText:(NSString *)anMinDoingText
{
    minDoingText = anMinDoingText;
}

-(void)setPrayingForText:(NSString *)anPrayingForText
{
    prayingForText = anPrayingForText;
}

- (NSString *)getGuid
{
    return guid;
}

- (NSString *)getHowDoingText
{
    return howDoingText;
}

- (NSString *)getTimeWithDad
{
    return timeWithDad;
}

- (NSString *)getStartDate
{
    return startDate;
}

- (NSString *)getEndDate
{
    return endDate;
}

- (NSString *)getMinDoingText
{
    return minDoingText;
}

- (NSString *)getPrayingForText
{
    return prayingForText;
}

@end
