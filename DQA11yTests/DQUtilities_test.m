//
//  DQUtilities_test.m
//  DQA11y
//
//  Created by Jennifer Dailey on 7/6/15.
//  Copyright (c) 2015 Deque Systems. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "DQTestViewController.h"
#import "DEQAsserts.h"

@interface DQUtilities_test : XCTestCase

@property DQTestViewController* testViewController;

@end

@implementation DQUtilities_test

- (void)setUp {
    [super setUp];
    _testViewController = [[DQTestViewController alloc] initWithNibName:nil bundle:nil];
    [_testViewController view];
    [_testViewController setUpDQUtilitiesTest];
}

- (void)test_CreateDynamicNotification {
    DEQAssertStringEqual([DQUtilities createDynamicNotification:_testViewController.label1_init.text], @"This label name needs to be announced.");
    DEQAssertStringEqual([DQUtilities createDynamicNotification:_testViewController.button1_init.titleLabel.text], @"This button name needs to be announced.");
    DEQAssertStringEqual([DQUtilities createDynamicNotification:_testViewController.textview1_init.text], @"This text needs to be announced.");
    DEQAssertStringEqual([DQUtilities createDynamicNotification:_testViewController.textfield1_init.text], @"This text also needs to be announced.");
    DEQAssertStringEqual([DQUtilities createDynamicNotification:_testViewController.label1_init.accessibilityLabel], @"Announce the accessibility label!");
    
    NSString* announcement = @"This is an announcement.";
    DEQAssertStringEqual([DQUtilities createDynamicNotification:announcement], @"This is an announcement.");
}

@end
