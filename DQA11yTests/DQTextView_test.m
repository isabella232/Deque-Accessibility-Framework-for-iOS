//
//  DQTextView_test.m
//  DQA11y
//
//  Created by Jennifer Dailey on 7/10/15.
//  Copyright (c) 2015 Deque Systems Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "DQTextView.h"

@interface DQTextView_test : XCTestCase

@end

@implementation DQTextView_test

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)test_isValidContentSizeCategory {
    XCTAssert([DQTextView isValidContentSizeCategory:UIFontTextStyleBody]);
    XCTAssert([DQTextView isValidContentSizeCategory:UIFontTextStyleHeadline]);
    XCTAssert([DQTextView isValidContentSizeCategory:UIFontTextStyleCaption1]);
    XCTAssert([DQTextView isValidContentSizeCategory:UIFontTextStyleCaption2]);
    XCTAssert([DQTextView isValidContentSizeCategory:UIFontTextStyleFootnote]);
    XCTAssert([DQTextView isValidContentSizeCategory:UIFontTextStyleSubheadline]);
    XCTAssert(![DQTextView isValidContentSizeCategory:nil]);
    XCTAssert(![DQTextView isValidContentSizeCategory:UIFontSlantTrait]);
}
@end
