//
//  NSTimer+TYBlockTimer.h
//  TYBlockTimer
//
//  Created by Demon_Yao on 8/11/15.
//  Copyright (c) 2015 Tyrone Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimer (TYBlockTimer)

+ (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)time block:(void (^) ())block userInfo:(id)userInfo repeats:(BOOL)yesOrNo;

@end
