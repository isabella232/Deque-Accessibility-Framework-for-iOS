//
//  DQFontUtilities_test.m
//  DQA11y
//
//  Created by Jennifer Dailey on 7/6/15.
//  Copyright (c) 2015 Deque Systems. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "DQTestViewController.h"
#import "DEQAsserts.h"

@interface DQFontUtilities_test : XCTestCase

@property DQTestViewController* testViewController;

@end

@implementation DQFontUtilities_test

- (void)setUp {
    [super setUp];
    _testViewController = [[DQTestViewController alloc] initWithNibName:nil bundle:nil];
    [_testViewController view];
    [_testViewController setUpDQFontUtilitiesTest];
}

- (void)test_ContentSizeCategoryBody {
    [_testViewController.label1 setFont:[UIFont preferredFontForTextStyle:UIFontTextStyleBody]];
    DEQAssertStringEqual([DQFontUtilities contentSizeCategory:_testViewController.label1.font], UIFontTextStyleBody);
}

- (void)test_ContentSizeCategoryHeadline {
    [_testViewController.label1 setFont:[UIFont preferredFontForTextStyle:UIFontTextStyleHeadline]];
    DEQAssertStringEqual([DQFontUtilities contentSizeCategory:_testViewController.label1.font], UIFontTextStyleHeadline);
}

- (void)test_ContentSizeCategoryCaption1 {
    [_testViewController.label1 setFont:[UIFont preferredFontForTextStyle:UIFontTextStyleCaption1]];
    DEQAssertStringEqual([DQFontUtilities contentSizeCategory:_testViewController.label1.font], UIFontTextStyleCaption1);
}

- (void)test_ContentSizeCategoryCaption2 {
    [_testViewController.label1 setFont:[UIFont preferredFontForTextStyle:UIFontTextStyleCaption2]];
    DEQAssertStringEqual([DQFontUtilities contentSizeCategory:_testViewController.label1.font], UIFontTextStyleCaption2);
}

- (void)test_ContentSizeCategoryFootnote {
    [_testViewController.label1 setFont:[UIFont preferredFontForTextStyle:UIFontTextStyleFootnote]];
    DEQAssertStringEqual([DQFontUtilities contentSizeCategory:_testViewController.label1.font], UIFontTextStyleFootnote);
}

- (void)test_ContentSizeCategorySubheadline {
    [_testViewController.label1 setFont:[UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline]];
    DEQAssertStringEqual([DQFontUtilities contentSizeCategory:_testViewController.label1.font], UIFontTextStyleSubheadline);
}

- (void)test_ContentSizeCategoryUnknown {
    [_testViewController.label1 setFont:[UIFont systemFontOfSize:17]];
    DEQAssertEmptyString([DQFontUtilities contentSizeCategory:_testViewController.label1.font]);
    
    [_testViewController.label1 setFont:[UIFont fontWithName:@"Helvetica Standard" size:20]];
    DEQAssertEmptyString([DQFontUtilities contentSizeCategory:_testViewController.label1.font]);
}

@end
