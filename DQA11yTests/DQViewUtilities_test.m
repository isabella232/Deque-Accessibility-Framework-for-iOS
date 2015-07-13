//
//  DQViewUtilities_test.m
//  DQA11y
//
//  Created by Jennifer Dailey on 7/6/15.
//  Copyright (c) 2015 Deque Systems. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "DQTestViewController.h"
#import "DEQAsserts.h"

@interface DQViewUtilities_test : XCTestCase

@property DQTestViewController* testViewController;

@end

@implementation DQViewUtilities_test

- (void)setUp {
    [super setUp];
    _testViewController = [[DQTestViewController alloc] initWithNibName:nil bundle:nil];
    [_testViewController view];
    [_testViewController setUpDQViewUtilitiesTest];
}

- (void)test_findFirstActiveElementInView {
    [_testViewController viewUtilitiesTestFindFirstActiveElementInView];
    XCTAssert([[DQViewUtilities findFirstActiveElementInView:_testViewController.wrapperview1_init] isKindOfClass:[UIButton class]]);
    XCTAssertNil([DQViewUtilities findFirstActiveElementInView:_testViewController.wrapperview2_init]);
    XCTAssert([[DQViewUtilities findFirstActiveElementInView:_testViewController.wrapperview3_initWithFrame] isKindOfClass:[UISwitch class]]);
    XCTAssertNil([DQViewUtilities findFirstActiveElementInView:_testViewController.wrapperview4_initWithFrame]);
    XCTAssert([[DQViewUtilities findFirstActiveElementInView:_testViewController.textfield1_init] isKindOfClass:[UITextField class]]);
}

- (void)test_findFirstAccessibilityElementInView {
    [_testViewController viewUtilitiesTestFindFirstAccessibilityElementInView];
    XCTAssert([[DQViewUtilities findFirstAccessibilityElementInView:_testViewController.wrapperview1_init] isKindOfClass:[UILabel class]]);
    XCTAssertNil([DQViewUtilities findFirstAccessibilityElementInView:_testViewController.wrapperview2_init]);
    XCTAssert([[DQViewUtilities findFirstAccessibilityElementInView:_testViewController.wrapperview3_initWithFrame] isKindOfClass:[UISwitch class]]);
    XCTAssertNil([DQViewUtilities findFirstAccessibilityElementInView:_testViewController.wrapperview4_initWithFrame]);
    XCTAssert([DQViewUtilities findFirstAccessibilityElementInView:_testViewController.test_view2]);
}

@end
