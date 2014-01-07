//
//  CoreLayer.h
//  Core
//
//  Created by Albert Mao on 1/5/13.
//  Copyright (c) 2013 Albert Mao. All rights reserved.
//  maokaiyin@gmail.com

#import <Foundation/Foundation.h>

#import "CommandSomething.h"

@interface CoreLayer : NSObject
@property (nonatomic, strong) CommandSomething *mCmdSomething;

+ (CoreLayer *) getInstance;

-(void)doSomething:(id)delegate;
@end
