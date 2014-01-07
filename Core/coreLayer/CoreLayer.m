//
//  CoreLayer.m
//  Core
//
//  Created by Albert Mao on 1/5/13.
//  Copyright (c) 2013 Albert Mao. All rights reserved.
//  maokaiyin@gmail.com

#import "CoreLayer.h"

@implementation CoreLayer
static CoreLayer* _sharedCore = nil;
+ (CoreLayer *) getInstance
{
	if (!_sharedCore)
	{
		_sharedCore = [[CoreLayer alloc] init];
	}
	return _sharedCore;
}

+ (id)alloc
{
	NSAssert(_sharedCore == nil, @"Attempted to allocate a second instance of a singleton.");
	return [super alloc];
}

- (id) init
{
	self = [super init];
	if (self)
	{
        self.mCmdSomething = [[CommandSomething alloc]init];
    }
    return self;
}

-(void)doSomething:(id)delegate
{
    [self.mCmdSomething execute:delegate params:nil];
}


@end
