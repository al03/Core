//
//  ViewController.m
//  Core
//
//  Created by Albert Mao on 1/5/13.
//  Copyright (c) 2013 Albert Mao. All rights reserved.
//  maokaiyin@gmail.com

#import "ViewController.h"

#import "CoreLayer.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnClick:(id)sender {
    [[CoreLayer getInstance] doSomething:self];
}


- (void) CoreMsgHandler:(CoreMsg*)msg
{
    NSLog(@"type is %i",msg.EventType);
}

@end
