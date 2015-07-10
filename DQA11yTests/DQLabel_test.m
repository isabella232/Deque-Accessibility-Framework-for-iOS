//
//  DQLabel_test.m
//  DQA11y
//
//  Created by Jennifer Dailey on 7/6/15.
//  Copyright (c) 2015 Deque Systems. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "DQTestViewController.h"
#import "DEQAsserts.h"

@interface DQLabel_test : XCTestCase {
    DQTestViewController* _testViewController;
}

@end

@implementation DQLabel_test

- (void)setUp {
    [super setUp];
    _testViewController = [[DQTestViewController alloc] initWithNibName:nil bundle:nil];
    XCTAssert([_testViewController view]);
    [_testViewController setUpLabelTest];
}

- (void)test_setUp {
    XCTAssert([_testViewController.label1_init.font isEqual:[UIFont preferredFontForTextStyle:UIFontTextStyleBody]]);
    XCTAssert(_testViewController.label1_init.numberOfLines == 0);
    XCTAssert([_testViewController.label2_initWithFrame.font isEqual:[UIFont preferredFontForTextStyle:UIFontTextStyleBody]]);
    XCTAssert(_testViewController.label2_initWithFrame.numberOfLines == 0);
}

- (void)test_changeFont {
    _testViewController.label1_init.font = [UIFont fontWithName:@"Helvetica Neue" size:16];
    XCTAssert([_testViewController.label1_init.font isEqual:[UIFont preferredFontForTextStyle:UIFontTextStyleBody]]);
    _testViewController.label2_initWithFrame.font = [UIFont fontWithName:@"Helvetica Neue" size:16];
    XCTAssert([_testViewController.label2_initWithFrame.font isEqual:[UIFont preferredFontForTextStyle:UIFontTextStyleBody]]);
    
    _testViewController.label1_init.font = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    XCTAssert([_testViewController.label1_init.font isEqual:[UIFont preferredFontForTextStyle:UIFontTextStyleHeadline]]);
    _testViewController.label2_initWithFrame.font = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    XCTAssert([_testViewController.label2_initWithFrame.font isEqual:[UIFont preferredFontForTextStyle:UIFontTextStyleHeadline]]);
}

- (void)test_changeNumberOfLines {
    _testViewController.label1_init.numberOfLines = 1;
    XCTAssert(_testViewController.label1_init.numberOfLines == 0);
    _testViewController.label2_initWithFrame.numberOfLines = 1;
    XCTAssert(_testViewController.label2_initWithFrame.numberOfLines == 0);
}

@end
