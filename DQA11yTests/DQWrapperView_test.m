//
//  DQWrapperView_test.m
//  DQA11y
//
//  Created by Jennifer Dailey on 7/6/15.
//  Copyright (c) 2015 Deque Systems. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "DQTestViewController.h"
#import "DEQAsserts.h"

#define TIMEOUT_TIME_IN_SEC 10

@interface DQWrapperView_test : XCTestCase

@property DQTestViewController* testViewController;

@end

@implementation DQWrapperView_test

- (void)setUp {
    [super setUp];
    _testViewController = [[DQTestViewController alloc] initWithNibName:nil bundle:nil];
    XCTAssert([_testViewController view]);
    [_testViewController setUpWrapperViewTest];
}

- (void)test_accessibilityLabel {
    [_testViewController wrapperViewTestAccessibilityLabelAndHint];
    DEQAssertStringEqual(_testViewController.wrapperview1_init.accessibilityLabel, @" This is DQButton 1 This is DQLabel 1, BUTTON");
    DEQAssertStringEqual(_testViewController.wrapperview2_init.accessibilityLabel, @" This is a UILabel This is DQTextField 1");
    DEQAssertStringEqual(_testViewController.wrapperview3_initWithFrame.accessibilityLabel, @" This is DQLabel 2 Switch label1, on");
    DEQAssertStringEqual(_testViewController.wrapperview4_initWithFrame.accessibilityLabel, @" UILabel 2 UILabel 3");
    DEQAssertStringEqual(_testViewController.wrapperview5_init.accessibilityLabel, @" Switch Second switch, on");
    DEQAssertStringEqual(_testViewController.wrapperview6_initWithFrame.accessibilityLabel, @" This is a DQTextView This is a UILabel");
    
    //Toggle switches
    _testViewController.test_switch1.on = NO;
    DEQAssertStringEqual(_testViewController.wrapperview3_initWithFrame.accessibilityLabel, @" This is DQLabel 2 Switch label1, off");
    _testViewController.test_switch1.on = YES;
    DEQAssertStringEqual(_testViewController.wrapperview3_initWithFrame.accessibilityLabel, @" This is DQLabel 2 Switch label1, on");
    
    _testViewController.test_switch2.on = NO;
    DEQAssertStringEqual(_testViewController.wrapperview5_init.accessibilityLabel, @" Switch Second switch, off");
    _testViewController.test_switch3.on = NO;
    DEQAssertStringEqual(_testViewController.wrapperview5_init.accessibilityLabel, @" Switch Second switch, off");
    _testViewController.test_switch2.on = YES;
    DEQAssertStringEqual(_testViewController.wrapperview5_init.accessibilityLabel, @" Switch Second switch, on");
    _testViewController.test_switch3.on = YES;
    DEQAssertStringEqual(_testViewController.wrapperview5_init.accessibilityLabel, @" Switch Second switch, on");

}

- (void)test_accessibilityHint {
    [_testViewController wrapperViewTestAccessibilityLabelAndHint];
    
    DEQAssertStringEqual(_testViewController.wrapperview1_init.accessibilityHint, @"Accessibility hint for DQButton 1");
    DEQAssertStringEqual(_testViewController.wrapperview2_init.accessibilityHint, @"Accessibility hint for DQTextfield 1");
    DEQAssertStringEqual(_testViewController.wrapperview3_initWithFrame.accessibilityHint, @"Accessibility hint for Switch 1");
    DEQAssertEmptyString(_testViewController.wrapperview4_initWithFrame.accessibilityHint);
    DEQAssertStringEqual(_testViewController.wrapperview5_init.accessibilityHint, @"Toggle switch to do things");
    DEQAssertEmptyString(_testViewController.wrapperview6_initWithFrame.accessibilityHint);
    
    [_testViewController.button1_init sendActionsForControlEvents:UIControlEventTouchUpInside];
    DEQAssertStringEqual(_testViewController.wrapperview1_init.accessibilityHint, @"Accessibility hint for DQButton 1");
    
    _testViewController.test_switch1.on = NO;
    _testViewController.test_switch2.on = NO;
    _testViewController.test_switch3.on = NO;
    DEQAssertStringEqual(_testViewController.wrapperview3_initWithFrame.accessibilityHint, @"Accessibility hint for Switch 1");
    DEQAssertStringEqual(_testViewController.wrapperview5_init.accessibilityHint, @"Toggle switch to do things");
}

- (void)test_singleTapView {
    [_testViewController wrapperViewTestSingleTapView];
    
    //Wrapper view with a button
    XCTAssert(!_testViewController.button_was_pressed);
    [_testViewController.wrapperview1_init singleTapView];
//    XCTAssert(_testViewController.button_was_pressed);
    
    //Wrapper view with one switch
    DEQAssertStringEqual(_testViewController.wrapperview2_init.accessibilityLabel, @" Switch, on");
    [_testViewController.wrapperview2_init singleTapView];
    XCTAssert(!_testViewController.test_switch1.on);
    DEQAssertStringEqual(_testViewController.wrapperview2_init.accessibilityLabel, @" Switch, off");
    [_testViewController.wrapperview2_init singleTapView];
    XCTAssert(_testViewController.test_switch1.on);
    DEQAssertStringEqual(_testViewController.wrapperview2_init.accessibilityLabel, @" Switch, on");
    
    //Wrapper view with two switches
    DEQAssertStringEqual(_testViewController.wrapperview3_initWithFrame.accessibilityLabel, @" Two switches, on");
    [_testViewController.wrapperview3_initWithFrame singleTapView];
    XCTAssert(!_testViewController.test_switch2.on);
    XCTAssert(_testViewController.test_switch3.on);
    DEQAssertStringEqual(_testViewController.wrapperview3_initWithFrame.accessibilityLabel, @" Two switches, off");
    [_testViewController.wrapperview3_initWithFrame singleTapView];
    XCTAssert(_testViewController.test_switch2.on);
    XCTAssert(_testViewController.test_switch3.on);
    DEQAssertStringEqual(_testViewController.wrapperview3_initWithFrame.accessibilityLabel, @" Two switches, on");
    
    //Wrapper view with two active elements
    DEQAssertStringEqual(_testViewController.wrapperview4_initWithFrame.accessibilityLabel, @" Button TextField, BUTTON");
    //[_testViewController.wrapperview4_initWithFrame singleTapView];
  //  XCTAssert(_testViewController.button_was_pressed);
}

- (void)test_exceptionRule {
    XCTAssertThrows([_testViewController wrapperViewTestExceptionHandling1]);
    XCTAssert([_testViewController wrapperViewTestExceptionHandling2]);
    XCTAssertThrows([_testViewController wrapperViewTestExceptionHandling3]);
    XCTAssertThrows([_testViewController wrapperViewTestExceptionHandling4]);
}

@end
