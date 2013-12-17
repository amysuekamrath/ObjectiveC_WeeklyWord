//
//  WeeklyWord.m
//  WeeklyWord
//
//  This is an implementation file for the WeeklyWord model.
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

-(void)setPlanningHours:(NSInteger)anPlanningHours
{
    planningHours = anPlanningHours;
}

-(void)setStudyingHours:(NSInteger)anStudyingHours
{
    studyingHours = anStudyingHours;
}

-(void)setLanguageHours:(NSInteger)anLanguageHours
{
    languageHours = anLanguageHours;
}

-(void)setGroupRelatedHours:(NSInteger)anGroupRelatedHours
{
    groupRelatedHours = anGroupRelatedHours;
}

-(void)setGroupResponseHours:(NSInteger)anGroupResponseHours
{
    groupResponseHours = anGroupResponseHours;
}

-(void)setOtherRequiredHours:(NSInteger)anOtherRequiredHours
{
    otherRequiredHours = anOtherRequiredHours;
}

-(void)setCoolStudyHours:(NSInteger)anCoolStudyHours
{
    coolStudyHours = anCoolStudyHours;
}

-(void)setLastPLDate:(NSString *)anLastPLDate
{
    lastPLDate = anLastPLDate;
}

-(void)setNeedMoreContacts:(NSString *)anNeedMoreContacts
{
    needMoreContacts = anNeedMoreContacts;
}

-(void)setObjective1:(NSString *)anObjective1
{
    objective1 = anObjective1;
}

-(void)setObjective2:(NSString *)anObjective2
{
    objective2 = anObjective2;
}

-(void)setObjective3:(NSString *)anObjective3
{
    objective3 = anObjective3;
}

-(void)setObjective4:(NSString *)anObjective4
{
    objective4 = anObjective4;
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

- (NSInteger)getPlanningHours
{
    return planningHours;
}

- (NSInteger)getStudyingHours
{
    return studyingHours;
}

- (NSInteger)getLanguageHours
{
    return languageHours;
}

- (NSInteger)getGroupRelatedHours
{
    return groupRelatedHours;
}

- (NSInteger)getGroupResponseHours
{
    return groupResponseHours;
}

- (NSInteger)getOtherRequiredHours
{
    return otherRequiredHours;
}

- (NSInteger)getCoolStudyHours
{
    return coolStudyHours;
}

- (NSString *)getLastPLDate
{
    return lastPLDate;
}

- (NSString *)getNeedMoreContacts
{
    return needMoreContacts;
}

- (NSString *)getObjective1
{
    return objective1;
}

- (NSString *)getObjective2
{
    return objective2;
}

- (NSString *)getObjective3
{
    return objective3;
}

- (NSString *)getObjective4
{
    return objective4;
}
@end
