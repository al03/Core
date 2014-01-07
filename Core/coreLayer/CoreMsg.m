//
//  CoreMsg.m
//  Core
//
//  Created by Albert Mao on 1/5/13.
//  Copyright (c) 2013 Albert Mao. All rights reserved.
//  maokaiyin@gmail.com

#import "CoreMsg.h"



@implementation CoreMsg

@synthesize EventCode = mEventCode;
@synthesize EventType = mEventType;
@synthesize EventMsg = mEventMsg;
@synthesize EventObject = mEventObject;

-(int) getEventCode
{
    return mEventCode;
}

-(void) setMsg:(CoreMsg*) msg
{
    self.EventCode = msg.EventCode;
    self.EventType = msg.EventType;
    self.EventObject = msg.EventObject;
    self.EventMsg = msg.EventMsg;
}


@end
