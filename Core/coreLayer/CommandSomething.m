//
//  CommandSomething.m
//  Core
//
//  Created by Albert Mao on 1/5/13.
//  Copyright (c) 2013 Albert Mao. All rights reserved.
//  maokaiyin@gmail.com

#import "CommandSomething.h"
#import "Misc.h"
@implementation CommandSomething

-(id)init
{
    self = [super init];
    if (self) {
        mCmdEventType = KJC_EVT_TYPE_TOKEN;
    }
    return self;
}



- (void) execute:(id)delegate  params:(NSDictionary *)a_params
{
    self.coreDelegate = delegate;
    [self performSelector:@selector(finished) withObject:nil afterDelay:0];
}

-(void)finished
{
    CoreMsg * msg = [[CoreMsg alloc] init];
    msg.EventType = mCmdEventType;
    msg.EventCode = MSG_CODE_FAILURE;
    if (1) {
        msg.EventCode = MSG_CODE_SUCCESS;
    }else{
        msg.EventCode =  MSG_CODE_FAILURE;
        msg.EventMsg = @"error";
    }
    
    [self.coreDelegate CoreMsgHandler:msg];
}
@end
