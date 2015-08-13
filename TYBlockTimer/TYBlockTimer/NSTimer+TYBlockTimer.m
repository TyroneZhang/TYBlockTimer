//
//  NSTimer+TYBlockTimer.m
//  TYBlockTimer
//
//  Created by Demon_Yao on 8/11/15.
//  Copyright (c) 2015 Tyrone Zhang. All rights reserved.
//

#import "NSTimer+TYBlockTimer.h"


@implementation NSTimer (TYBlockTimer)

+ (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)time block:(void (^) ())block userInfo:(id)userInfo repeats:(BOOL)yesOrNo;
{
   return [self scheduledTimerWithTimeInterval:time target:self selector:@selector(blockInvoke:) userInfo:[block copy] repeats:YES]; // "self" is class object.
}

+ (void)blockInvoke:(NSTimer *)timer
{
    void(^block) (void) = timer.userInfo;
    if (block) {
        block();
    }
}

@end
