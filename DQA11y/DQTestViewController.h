//
//  DQTestViewController.h
//  DQA11y
//
//  Created by Jennifer Dailey on 7/6/15.
//  Copyright (c) 2015 Deque Systems. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <DQA11y/DQA11y.h>

@interface DQTestViewController : DQViewController

//!Testing DQButton and DQWrapperView
@property DQButton* button1_init;
@property DQButton* button2_initWithFrame;

//!Testing DQLabel and DQWrapperView
@property DQLabel* label1_init;
@property DQLabel* label2_initWithFrame;

//!Testing DQWrapperView
@property DQWrapperView* wrapperview1_init;
@property DQWrapperView* wrapperview2_init;
@property DQWrapperView* wrapperview3_initWithFrame;
@property DQWrapperView* wrapperview4_initWithFrame;
@property DQWrapperView* wrapperview5_init;
@property DQWrapperView* wrapperview6_initWithFrame;
@property UISwitch* test_switch1;
@property UISwitch* test_switch2;
@property UISwitch* test_switch3;
@property DQTextField* textfield1_init;
@property DQTextView* textview1_init;

//!Testing DQFontUtilities
@property UILabel* label1;

//!Testing DQColorUtilities
@property UIColor* customColor1;
@property UIColor* customColor2;
@property UIColor* customColor3;
@property UIColor* customColor4;
@property UIColor* customColor5;
@property UIColor* customColor6;
@property UIColor* test_whiteColor;
@property UIColor* test_blackColor;
@property UIColor* test_redColor;
@property UIColor* test_greenColor;
@property UIColor* test_blueColor;
@property UIColor* test_yellowColor;
@property UIColor* test_magentaColor;
@property UIColor* test_darkgrayColor;
@property UIColor* test_lightgrayColor;
@property UIColor* test_grayColor;
@property UIColor* test_cyanColor;
@property UIColor* test_orangeColor;
@property UIColor* test_purpleColor;
@property UIColor* test_brownColor;
@property UIColor* test_clearColor;

//!Testing DQViewUtilities
@property UIView* test_view1;
@property UIView* test_view2;

@property BOOL button_was_pressed;

- (void)setUpLabelTest;
- (void)setUpButtonTest;
- (void)setUpWrapperViewTest;
- (void)setUpDQUtilitiesTest;
- (void)setUpDQFontUtilitiesTest;
- (void)setUpDQColorUtilitiesTest;
- (void)setUpDQViewUtilitiesTest;
- (void)wrapperViewTestAccessibilityLabelAndHint;
- (void)wrapperViewTestSingleTapView;
- (void)wrapperViewTestExceptionHandling1;
- (BOOL)wrapperViewTestExceptionHandling2;
- (void)wrapperViewTestExceptionHandling3;
- (void)wrapperViewTestExceptionHandling4;
- (void)viewUtilitiesTestFindFirstActiveElementInView;
- (void)viewUtilitiesTestFindFirstAccessibilityElementInView;
- (void)onPress;

@end
