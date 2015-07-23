//
//  DQTextView_test.m
//  DQA11y
//
//  Created by Jennifer Dailey on 7/21/15.
//  Copyright (c) 2015 Deque Systems Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "DQTestViewController.h"

@interface DQTextView_test : XCTestCase {
    
@private
    DQTestViewController* _testViewController;
}

@end

@implementation DQTextView_test

- (void)setUp {
    [super setUp];
    _testViewController = [[DQTestViewController alloc] initWithNibName:nil bundle:nil];
    XCTAssert([_testViewController view]);
    [_testViewController setUpTextViewTest];
}

- (void)exceptionHandling_test {
    XCTAssert([_testViewController textViewTestExceptionHandling1]);
    XCTAssert([_testViewController textViewTestExceptionHandling2]);
    XCTAssertThrows([_testViewController textViewTestExceptionHandling3]);
    XCTAssert([_testViewController textViewTestExceptionHandling4]);
    XCTAssertThrows([_testViewController textViewTestExceptionHandling5]);
    XCTAssert([_testViewController textViewTestExceptionHandling6]);
    XCTAssert([_testViewController textViewTestExceptionHandling7]);
    XCTAssert([_testViewController textViewTestExceptionHandling8]);
    XCTAssertThrows([_testViewController textViewTestExceptionHandling9]);
}
@end
