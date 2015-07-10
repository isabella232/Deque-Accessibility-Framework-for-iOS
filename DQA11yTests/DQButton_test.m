//
//  DQButton_test.m
//  DQA11y
//
//  Created by Jennifer Dailey on 7/6/15.
//  Copyright (c) 2015 Deque Systems. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "DQTestViewController.h"

@interface DQButton_test : XCTestCase {

@private
    DQTestViewController* _testViewController;
}

@end

@implementation DQButton_test

- (void)setUp {
    [super setUp];
    _testViewController = [[DQTestViewController alloc] initWithNibName:nil bundle:nil];
    XCTAssert([_testViewController view]);
    [_testViewController setUpButtonTest];
}

- (void)test_shadow_ON {
    _testViewController.button1_init.shadowed = YES;
    XCTAssert(_testViewController.button1_init.layer.shadowOpacity == 1);
    XCTAssert(_testViewController.button1_init.layer.cornerRadius == 3.0);
    XCTAssert(_testViewController.button1_init.layer.shadowColor == [UIColor grayColor].CGColor);
    
    _testViewController.button2_initWithFrame.shadowed = YES;
    XCTAssert(_testViewController.button2_initWithFrame.layer.shadowOpacity == 1);
    XCTAssert(_testViewController.button2_initWithFrame.layer.cornerRadius == 3.0);
    XCTAssert(_testViewController.button2_initWithFrame.layer.shadowColor == [UIColor grayColor].CGColor);
}

- (void)test_shadow_OFF {
    _testViewController.button1_init.shadowed = NO;
    XCTAssert(_testViewController.button1_init.layer.shadowColor == [UIColor clearColor].CGColor);
    
    _testViewController.button2_initWithFrame.shadowed = NO;
    XCTAssert(_testViewController.button2_initWithFrame.layer.shadowColor == [UIColor clearColor].CGColor);
}

- (void)test_underline_ON {
    _testViewController.button1_init.underlined = YES;
    NSMutableAttributedString* attributedText1 = [[NSMutableAttributedString alloc] initWithString:@"This is a button."];
    [attributedText1 addAttribute:NSUnderlineStyleAttributeName value:[NSNumber numberWithInt:NSUnderlineStyleSingle]
                            range:NSMakeRange(0, attributedText1.length)];
    XCTAssert([[_testViewController.button1_init attributedTitleForState:UIControlStateNormal] isEqualToAttributedString:attributedText1]);
    
    XCTAssertThrows(_testViewController.button2_initWithFrame.underlined = YES);
    
    [_testViewController.button2_initWithFrame setTitle:@"Button 2" forState:UIControlStateNormal];
    _testViewController.button2_initWithFrame.underlined = YES;
    NSMutableAttributedString* attributedText2 = [[NSMutableAttributedString alloc] initWithString:@"Button 2"];
    [attributedText2 addAttribute:NSUnderlineStyleAttributeName value:[NSNumber numberWithInt:NSUnderlineStyleSingle]
                            range:NSMakeRange(0, attributedText2.length)];
    XCTAssert([[_testViewController.button2_initWithFrame attributedTitleForState:UIControlStateNormal] isEqualToAttributedString:attributedText2]);
}

- (void)test_underline_OFF {
    _testViewController.button1_init.underlined = YES;
    _testViewController.button1_init.underlined = NO;
    NSMutableAttributedString* attributedText1 = [[NSMutableAttributedString alloc] initWithString:@"This is a button."];
    XCTAssert([[_testViewController.button1_init attributedTitleForState:UIControlStateNormal] isEqualToAttributedString:attributedText1]);
    
    [_testViewController.button2_initWithFrame setTitle:@"Button 2" forState:UIControlStateNormal];
    _testViewController.button2_initWithFrame.underlined = YES;
    _testViewController.button2_initWithFrame.underlined = NO;
    NSMutableAttributedString* attributedText2 = [[NSMutableAttributedString alloc] initWithString:@"Button 2"];
    XCTAssert([[_testViewController.button2_initWithFrame attributedTitleForState:UIControlStateNormal] isEqualToAttributedString:attributedText2]);
}

@end
