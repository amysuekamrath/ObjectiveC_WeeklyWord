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
    NSString *minDoingText;
    NSString *prayingForText;
    NSInteger planningHours;
    NSInteger studyingHours;
    NSInteger languageHours;
    NSInteger groupRelatedHours;
    NSInteger groupResponseHours;
    NSInteger otherRequiredHours;
    NSInteger coolStudyHours;
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

@end
