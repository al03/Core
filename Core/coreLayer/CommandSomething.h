//
//  CommandSomething.h
//  Core
//
//  Created by Albert Mao on 1/5/13.
//  Copyright (c) 2013 Albert Mao. All rights reserved.
//  maokaiyin@gmail.com

#import <Foundation/Foundation.h>
#import "CoreMsg.h"

@interface CommandSomething : NSObject
{
    int mCmdEventType;
}
@property(nonatomic,assign)id<CoreMsgDelegate> coreDelegate;

- (void) execute:(id)delegate  params:(NSDictionary *)a_params;
@end
