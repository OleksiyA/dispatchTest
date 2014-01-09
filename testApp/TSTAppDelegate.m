//
//  TSTAppDelegate.m
//  testApp
//
//  Created by Oleksiy Ivanov on 1/9/14.
//  Copyright (c) 2014 Oleksiy Ivanov. All rights reserved.
//

#import "TSTAppDelegate.h"

@implementation TSTAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    
    dispatch_queue_t queue = dispatch_queue_create("test queue", DISPATCH_QUEUE_SERIAL);
    
    double delayInSeconds = 2.0;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
    dispatch_after(popTime, queue, ^(void){
        dispatch_queue_t currentQueue = dispatch_get_current_queue();
        NSLog(@"Current queue label %s", dispatch_queue_get_label(currentQueue));
    });
}

@end
