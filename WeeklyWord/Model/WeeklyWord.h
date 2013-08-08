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
}

- (void)setGuid:(NSString *)anGuid;
- (void)setHowDoingText:(NSString *)anHowDoingText;
- (void)setTimeWithDad:(NSString *)anTimeWithDad;
- (void)setStartDate:(NSString *)anStartDate;
- (void)setEndDate:(NSString *)anEndDate;
- (void)setMinDoingText:(NSString *)anMinDoingText;
- (void)setPrayingForText:(NSString *)anPrayingForText;
- (NSString *)getGuid;
- (NSString *)getHowDoingText;
- (NSString *)getTimeWithDad;
- (NSString *)getStartDate;
- (NSString *)getEndDate;
- (NSString *)getMinDoingText;
- (NSString *)getPrayingForText;

@end
