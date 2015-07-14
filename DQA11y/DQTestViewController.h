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

//// DQButton
@property DQButton* button1_init; ///< Used to test DQButton.
@property DQButton* button2_initWithFrame; ///< Used to test DQButton.

//// DQLabel
@property DQLabel* label1_init; ///< Used to test DQLabel.
@property DQLabel* label2_initWithFrame; ///< Used to test DQLabel.

//// DQWrapperView
@property DQWrapperView* wrapperview1_init; ///< Used to test DQWrapperView.
@property DQWrapperView* wrapperview2_init; ///< Used to test DQWrapperView.
@property DQWrapperView* wrapperview3_initWithFrame; ///< Used to test DQWrapperView.
@property DQWrapperView* wrapperview4_initWithFrame; ///< Used to test DQWrapperView.
@property DQWrapperView* wrapperview5_init; ///< Used to test DQWrapperView.
@property DQWrapperView* wrapperview6_initWithFrame; ///< Used to test DQWrapperView.
@property UISwitch* test_switch1; ///< Used to test DQWrapperView.
@property UISwitch* test_switch2; ///< Used to test DQWrapperView.
@property UISwitch* test_switch3; ///< Used to test DQWrapperView.
@property DQTextField* textfield1_init; ///< Used to test DQWrapperView.
@property DQTextView* textview1_init; ///< Used to test DQWrapperView.
@property BOOL button_was_pressed; ///< Used to test singleTapView function in DQWrapperView.

//// DQFontUtilities
@property UILabel* label1; ///< Used to test DQFontUtilities.

//// DQColorUtilities
@property UIColor* customColor1; ///< Used to test isEqualToColorWithRGBA in DQColorUtilities.
@property UIColor* customColor2; ///< Used to test isEqualToColorWithRGBA in DQColorUtilities.
@property UIColor* customColor3; ///< Used to test isEqualToColorWithRGBA in DQColorUtilities.
@property UIColor* customColor4; ///< Used to test isEqualToColorWithRGBA in DQColorUtilities.
@property UIColor* customColor5; ///< Used to test isEqualToColorWithRGBA in DQColorUtilities.
@property UIColor* customColor6; ///< Used to test isEqualToColorWithRGBA in DQColorUtilities.
@property UIColor* test_whiteColor; ///< Used to test isEqualToColor in DQColorUtilities.
@property UIColor* test_blackColor; ///< Used to test isEqualToColor in DQColorUtilities.
@property UIColor* test_redColor; ///< Used to test isEqualToColor in DQColorUtilities.
@property UIColor* test_greenColor; ///< Used to test isEqualToColor in DQColorUtilities.
@property UIColor* test_blueColor; ///< Used to test isEqualToColor in DQColorUtilities.
@property UIColor* test_yellowColor; ///< Used to test isEqualToColor in DQColorUtilities.
@property UIColor* test_magentaColor; ///< Used to test isEqualToColor in DQColorUtilities.
@property UIColor* test_darkgrayColor; ///< Used to test isEqualToColor in DQColorUtilities.
@property UIColor* test_lightgrayColor; ///< Used to test isEqualToColor in DQColorUtilities.
@property UIColor* test_grayColor; ///< Used to test isEqualToColor in DQColorUtilities.
@property UIColor* test_cyanColor; ///< Used to test isEqualToColor in DQColorUtilities.
@property UIColor* test_orangeColor; ///< Used to test isEqualToColor in DQColorUtilities.
@property UIColor* test_purpleColor; ///< Used to test isEqualToColor in DQColorUtilities.
@property UIColor* test_brownColor; ///< Used to test isEqualToColor in DQColorUtilities.
@property UIColor* test_clearColor; ///< Used to test isEqualToColor in DQColorUtilities.

//// DQViewUtilities
@property UIView* test_view1; ///< Used to test DQViewUtilities.
@property UIView* test_view2; ///< Used to test DQViewUtilities.

- (void)setUpLabelTest; ///< Initializes objects used to test DQLabel.
- (void)setUpButtonTest; ///< Initializes objects used to test DQButton.
- (void)setUpWrapperViewTest; ///< Initializes objects used to test DQWrapperView.
- (void)setUpDQUtilitiesTest; ///< Initializes objects used to test DQUtilities.
- (void)setUpDQFontUtilitiesTest; ///< Initializes objects used to test DQFontUtilities.
- (void)setUpDQColorUtilitiesTest; ///< Initializes objects used to test DQColorUtilities.
- (void)setUpDQViewUtilitiesTest; ///< Initializes objects used to test DQViewUtilities.
- (void)wrapperViewTestAccessibilityLabelAndHint; ///< Sets up objects to test the accessibility label and hint for DQWrapperView.
- (void)wrapperViewTestSingleTapView; ///< Sets up objects to test the singleTapView function in DQWrapperView.
- (void)wrapperViewTestExceptionHandling1; ///< Sets up objects to test exception handling in DQWrapperView (test 1).
- (BOOL)wrapperViewTestExceptionHandling2; ///< Sets up objects to test exception handling in DQWrapperView (test 2).
- (void)wrapperViewTestExceptionHandling3; ///< Sets up objects to test exception handling in DQWrapperView (test 3).
- (void)wrapperViewTestExceptionHandling4; ///< Sets up objects to test exception handling in DQWrapperView (test 4).
- (void)viewUtilitiesTestFindFirstActiveElementInView; ///< Sets up objects used to test findFirstActiveElementInView in DQViewUtilities.
- (void)viewUtilitiesTestFindFirstAccessibilityElementInView; ///< Sets up objects used to test findFirstAccessibilityElementInView in DQViewUtilities.

//! Sets up objects used to test findFirstAccessibilityElementUsingComparatorInView in DQViewUtilities.
- (void)viewUtilitiesTestFindFirstAccessibilityElementUsingComparatorInView;
- (void)viewUtilitiesTestComparator; ///< Sets up objects used to test the NSComparator comparePositionYThenX in DQViewUtilities.

- (void)onPress; ///< Used to test the singleTapView function in DQWrapperView.
+ (NSComparator)compareXThenY; ///< Used to test the findFirstAccessibilityElementUsingComparatorInView function in DQViewUtilities.

@end
