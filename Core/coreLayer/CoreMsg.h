//
//  CoreMsg.h
//  Core
//
//  Created by Albert Mao on 1/5/13.
//  Copyright (c) 2013 Albert Mao. All rights reserved.
//  maokaiyin@gmail.com

#import <Foundation/Foundation.h>

#define  MSG_CODE_SUCCESS   200
#define  MSG_CODE_FAILURE   1

@class CoreMsg;
@protocol CoreMsgDelegate <NSObject>
- (void) CoreMsgHandler:(CoreMsg*)msg;
@end

@interface CoreMsg : NSObject

@property  (nonatomic, assign) int EventCode;
@property  (nonatomic, assign) int EventType;
@property  (strong, nonatomic) NSString * EventMsg;
@property  (strong, nonatomic) id EventObject;

-(int) getEventCode;

-(void) setMsg:(CoreMsg*) msg;
@end
