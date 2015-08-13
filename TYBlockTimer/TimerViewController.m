//
//  TimerViewController.m
//  TYBlockTimer
//
//  Created by Demon_Yao on 8/11/15.
//  Copyright (c) 2015 Tyrone Zhang. All rights reserved.
//

#import "TimerViewController.h"
#import "NSTimer+TYBlockTimer.h"

static const NSTimeInterval timeInterval = 1;

@interface TimerViewController ()

@property (nonatomic, strong) NSTimer *timer;
@property (nonatomic, strong) NSMutableArray *array;

@end


@implementation TimerViewController

- (void)viewDidLoad
{
    self.array = [NSMutableArray array];
    for (NSInteger i=0; i<10000000;i++) {
        [self.array addObject:[NSNumber numberWithInteger:i]];
    }
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:timeInterval block:^{
        
        NSLog(@"timer repeat");
        
    } userInfo:nil repeats:YES];
}


- (void)dealloc
{
    [self.timer invalidate];
    self.timer = nil;
    NSLog(@"I invalidate my timer in dealloc method, but the dealloc will be invoked,so great!");
}

@end
