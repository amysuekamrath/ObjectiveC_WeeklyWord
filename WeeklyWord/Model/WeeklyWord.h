//
//  WeeklyWord.h
//  WeeklyWord
//
//  Created by Amy Kamrath on 7/16/13.
//  Copyright (c) 2013 Amy Kamrath. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WeeklyWord : NSObject
{
@private
    NSString *guid;
    NSString *howDoingText;
    NSString *timeWithDad;
    NSString *startDate;
    NSString *endDate;
    NSString *lastPLDate;
    NSString *minDoingText;
    NSString *prayingForText;
    NSString *needMoreContacts;
    NSInteger planningHours;
    NSInteger studyingHours;
    NSInteger languageHours;
    NSInteger groupRelatedHours;
    NSInteger groupResponseHours;
    NSInteger otherRequiredHours;
    NSInteger coolStudyHours;
    NSString *objective1;
    NSString *objective2;
    NSString *objective3;
    NSString *objective4;
}

- (void)setGuid:(NSString *)anGuid;
- (void)setHowDoingText:(NSString *)anHowDoingText;
- (void)setTimeWithDad:(NSString *)anTimeWithDad;
- (void)setStartDate:(NSString *)anStartDate;
- (void)setEndDate:(NSString *)anEndDate;
- (void)setMinDoingText:(NSString *)anMinDoingText;
- (void)setPrayingForText:(NSString *)anPrayingForText;
- (void)setPlanningHours:(NSInteger )anPlanningHours;
- (void)setStudyingHours:(NSInteger )anStudyingHours;
- (void)setLanguageHours:(NSInteger )anLanguageHours;
- (void)setGroupRelatedHours:(NSInteger )anGroupRelatedHours;
- (void)setGroupResponseHours:(NSInteger )anGroupResponseHours;
- (void)setOtherRequiredHours:(NSInteger )anOtherRequiredHours;
- (void)setCoolStudyHours:(NSInteger )anCoolStudyHours;
- (void)setLastPLDate:(NSString *)anLastPLDate;
- (void)setNeedMoreContacts:(NSString *)anNeedMoreContacts;
- (void)setObjective1:(NSString *)anObjective1;
- (void)setObjective2:(NSString *)anObjective2;
- (void)setObjective3:(NSString *)anObjective3;
- (void)setObjective4:(NSString *)anObjective4;
- (NSString *)getGuid;
- (NSString *)getHowDoingText;
- (NSString *)getTimeWithDad;
- (NSString *)getStartDate;
- (NSString *)getEndDate;
- (NSString *)getMinDoingText;
- (NSString *)getPrayingForText;
- (NSInteger )getPlanningHours;
- (NSInteger )getStudyingHours;
- (NSInteger )getLanguageHours;
- (NSInteger )getGroupRelatedHours;
- (NSInteger )getGroupResponseHours;
- (NSInteger )getOtherRequiredHours;
- (NSInteger )getCoolStudyHours;
- (NSString *)getLastPLDate;
- (NSString *)getNeedMoreContacts;
- (NSString *)getObjective1;
- (NSString *)getObjective2;
- (NSString *)getObjective3;
- (NSString *)getObjective4;

@end
