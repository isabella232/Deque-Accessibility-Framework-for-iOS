//
//  DQTextField_test.m
//  DQA11y
//
//  Created by Jennifer Dailey on 7/27/15.
//  Copyright (c) 2015 Deque Systems Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "DQTestViewController.h"
#import "DEQAsserts.h"

@interface DQTextField_test : XCTestCase

@property DQTestViewController* testViewController;

@end

@implementation DQTextField_test

- (void)setUp {
    _testViewController = [[DQTestViewController alloc] initWithNibName:nil bundle:nil];
    XCTAssert([_testViewController view]);
    [_testViewController setUpTextFieldTest];
}

- (void)testAccessibilityLabelWhenLabelAndPlaceholderArePresent {
    DEQAssertStringEqual(_testViewController.textfield1_init.accessibilityLabel, @"DQTextField");
    DEQAssertStringEqual(_testViewController.textfield1_init.placeholder, @"I am placeholder text");
    _testViewController.textfield1_init.text = @"Adding text";
    DEQAssertStringEqual(_testViewController.textfield1_init.accessibilityLabel, @"DQTextField, I am placeholder text");
    DEQAssertStringEqual(_testViewController.textfield1_init.placeholder, @"I am placeholder text");
    _testViewController.textfield1_init.text = @"";
    DEQAssertStringEqual(_testViewController.textfield1_init.accessibilityLabel, @"DQTextField");
    DEQAssertStringEqual(_testViewController.textfield1_init.placeholder, @"I am placeholder text");
}

- (void)testAccessibilityLabelWhenOnlyPlaceholderPresent {
    DEQAssertEmptyString(_testViewController.textfield2_initWithFrame.accessibilityLabel);
    DEQAssertStringEqual(_testViewController.textfield2_initWithFrame.placeholder, @"Placeholder text");
    _testViewController.textfield2_initWithFrame.text = @"Adding text";
    DEQAssertStringEqual(_testViewController.textfield2_initWithFrame.accessibilityLabel, @"Placeholder text");
    DEQAssertStringEqual(_testViewController.textfield2_initWithFrame.placeholder, @"Placeholder text");
    _testViewController.textfield2_initWithFrame.text = @"";
    DEQAssertEmptyString(_testViewController.textfield2_initWithFrame.accessibilityLabel);
    DEQAssertStringEqual(_testViewController.textfield2_initWithFrame.placeholder, @"Placeholder text");
}

- (void)testAccessibilityLabelWhenOnlyLabelPresent {
    DEQAssertStringEqual(_testViewController.textfield3_init.accessibilityLabel, @"Accessibility Label");
    DEQAssertEmptyString(_testViewController.textfield3_init.placeholder);
    _testViewController.textfield3_init.text = @"Adding text";
    DEQAssertStringEqual(_testViewController.textfield3_init.accessibilityLabel, @"Accessibility Label");
    DEQAssertEmptyString(_testViewController.textfield3_init.placeholder);
    _testViewController.textfield3_init.text = @"";
    DEQAssertStringEqual(_testViewController.textfield3_init.accessibilityLabel, @"Accessibility Label");
    DEQAssertEmptyString(_testViewController.textfield3_init.placeholder);
}

@end
