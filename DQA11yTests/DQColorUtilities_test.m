//
//  DQColorUtilities_test.m
//  DQA11y
//
//  Created by Jennifer Dailey on 7/6/15.
//  Copyright (c) 2015 Deque Systems. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "DQTestViewController.h"
#import "DEQAsserts.h"

@interface DQColorUtilities_test : XCTestCase

@property DQTestViewController* testViewController;

@end

@implementation DQColorUtilities_test

- (void)setUp {
    [super setUp];
    _testViewController = [[DQTestViewController alloc] initWithNibName:nil bundle:nil];
    [_testViewController view];
    [_testViewController setUpDQColorUtilitiesTest];
}

- (void)test_isEqualToColorWithRGBA {
    XCTAssert([DQColorUtilities isEqualToColor:_testViewController.customColor1 WithRed:0.4003 green:0.6 blue:0.2 alpha:1]);
    XCTAssert([DQColorUtilities isEqualToColor: _testViewController.customColor1 WithRed:0.4 green:0.6004 blue:0.2 alpha:1]);
    XCTAssert([DQColorUtilities isEqualToColor: _testViewController.customColor1 WithRed:0.4 green:0.6 blue:0.2005 alpha:1]);
    XCTAssert([DQColorUtilities isEqualToColor: _testViewController.customColor1 WithRed:0.4 green:0.6 blue:0.2 alpha:0.9995]);
    XCTAssert([DQColorUtilities isEqualToColor: _testViewController.customColor1 WithRed:0.4002 green:0.6004 blue:0.2005 alpha:0.9998]);
    XCTAssert(![DQColorUtilities isEqualToColor: _testViewController.customColor1 WithRed:0.401 green:0.6 blue:0.2 alpha:1]);
    XCTAssert(![DQColorUtilities isEqualToColor: _testViewController.customColor1 WithRed:0.4 green:0.601 blue:0.2 alpha:1]);
    XCTAssert(![DQColorUtilities isEqualToColor: _testViewController.customColor1 WithRed:0.4 green:0.6 blue:0.201 alpha:1]);
    XCTAssert(![DQColorUtilities isEqualToColor: _testViewController.customColor1 WithRed:0.4 green:0.6 blue:0.2 alpha:0.999]);
    XCTAssert(![DQColorUtilities isEqualToColor: _testViewController.customColor1 WithRed:0.401 green:0.601 blue:0.201 alpha:0.999]);
    
    XCTAssert([DQColorUtilities isEqualToColor: _testViewController.customColor1 WithRed:0.3997 green:0.6 blue:0.2 alpha:1]);
    XCTAssert([DQColorUtilities isEqualToColor: _testViewController.customColor1 WithRed:0.4 green:0.5996 blue:0.2 alpha:1]);
    XCTAssert([DQColorUtilities isEqualToColor: _testViewController.customColor1 WithRed:0.4 green:0.6 blue:0.1995 alpha:1]);
    XCTAssert([DQColorUtilities isEqualToColor: _testViewController.customColor1 WithRed:0.3994 green:0.5996 blue:0.1995 alpha:1]);
    XCTAssert(![DQColorUtilities isEqualToColor: _testViewController.customColor1 WithRed:0.399 green:0.6 blue:0.2 alpha:1]);
    XCTAssert(![DQColorUtilities isEqualToColor: _testViewController.customColor1 WithRed:0.4 green:0.599 blue:0.2 alpha:1]);
    XCTAssert(![DQColorUtilities isEqualToColor: _testViewController.customColor1 WithRed:0.4 green:0.6 blue:0.199 alpha:1]);
    XCTAssert(![DQColorUtilities isEqualToColor: _testViewController.customColor1 WithRed:0.399 green:0.599 blue:0.199 alpha:1]);
    
    XCTAssert([DQColorUtilities isEqualToColor: _testViewController.customColor1 WithRed:0.4 green:0.6 blue:0.2 alpha:1]);
}

- (void)test_isEqualToColorWithColor {
    XCTAssert([DQColorUtilities isEqual:_testViewController.customColor1 To:_testViewController.customColor1]);
    XCTAssert(![DQColorUtilities isEqual:_testViewController.customColor1 To:_testViewController.customColor2]);
    XCTAssert(![DQColorUtilities isEqual:_testViewController.customColor1 To:_testViewController.customColor3]);
    XCTAssert(![DQColorUtilities isEqual:_testViewController.customColor1 To:_testViewController.customColor4]);
    XCTAssert(![DQColorUtilities isEqual:_testViewController.customColor1 To:_testViewController.customColor5]);
    XCTAssert(![DQColorUtilities isEqual:_testViewController.customColor1 To:_testViewController.customColor6]);
    
    XCTAssert([DQColorUtilities isEqual:_testViewController.test_magentaColor To:[UIColor magentaColor]]);
    XCTAssert([DQColorUtilities isEqual:_testViewController.test_redColor To:[UIColor redColor]]);
    XCTAssert([DQColorUtilities isEqual:_testViewController.test_orangeColor To:[UIColor orangeColor]]);
    XCTAssert([DQColorUtilities isEqual:_testViewController.test_yellowColor To:[UIColor yellowColor]]);
    XCTAssert([DQColorUtilities isEqual:_testViewController.test_greenColor To:[UIColor greenColor]]);
    XCTAssert([DQColorUtilities isEqual:_testViewController.test_cyanColor To:[UIColor cyanColor]]);
    XCTAssert([DQColorUtilities isEqual:_testViewController.test_blueColor To:[UIColor blueColor]]);
    XCTAssert([DQColorUtilities isEqual:_testViewController.test_purpleColor To:[UIColor purpleColor]]);
    XCTAssert([DQColorUtilities isEqual:_testViewController.test_whiteColor To:[UIColor whiteColor]]);
    XCTAssert([DQColorUtilities isEqual:_testViewController.test_lightgrayColor To:[UIColor lightGrayColor]]);
    XCTAssert([DQColorUtilities isEqual:_testViewController.test_grayColor To:[UIColor grayColor]]);
    XCTAssert([DQColorUtilities isEqual:_testViewController.test_darkgrayColor To:[UIColor darkGrayColor]]);
    XCTAssert([DQColorUtilities isEqual:_testViewController.test_blackColor To:[UIColor blackColor]]);
    XCTAssert([DQColorUtilities isEqual:_testViewController.test_brownColor To:[UIColor brownColor]]);
    XCTAssert([DQColorUtilities isEqual:_testViewController.test_clearColor To:[UIColor clearColor]]);
    
}

@end
