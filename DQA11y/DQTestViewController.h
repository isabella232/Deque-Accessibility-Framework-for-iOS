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

//// DQTextField
@property DQTextField* textfield1_init; ///< Used to test DQTextField.
@property DQTextField* textfield2_initWithFrame; ///< Used to test DQTextField.
@property DQTextField* textfield3_init; ///< Used to test DQTextField.

//// DQTextView
@property DQTextView* textview1_init; ///< Used to test DQTextView.
@property UIScrollView* scrollView; ///< Used to test DQTextView.

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
- (void)setUpTextFieldTest; ///< Initializes objects used to test DQTextField.
- (void)setUpTextViewTest; ///< Initializes objects used to test DQTextView.
- (void)setUpWrapperViewTest; ///< Initializes objects used to test DQWrapperView.
- (void)setUpDQUtilitiesTest; ///< Initializes objects used to test DQUtilities.
- (void)setUpDQFontUtilitiesTest; ///< Initializes objects used to test DQFontUtilities.
- (void)setUpDQColorUtilitiesTest; ///< Initializes objects used to test DQColorUtilities.
- (void)setUpDQViewUtilitiesTest; ///< Initializes objects used to test DQViewUtilities.
- (BOOL)textViewTestExceptionHandling1; ///< Tests that exception is not thrown when scrollable DQTextView is added to view (with no constraints).
- (BOOL)textViewTestExceptionHandling2; ///< Tests that exception is not thrown when scrollable DQTextView is added to a view (with constraints).
- (void)textViewTestExceptionHandling3; ///< Tests that exception is thrown when non-scrollable DQTextView is added to a view (with constraints).
- (BOOL)textViewTestExceptionHandling4; ///< Tests that exception is not thrown when non-scrollable DQTextView is added to a view (with no constraints).
- (void)textViewTestExceptionHandling5; ///< Tests that exception is thrown when non-scrollable DQTextView has height constraints.
- (BOOL)textViewTestExceptionHandling6; ///< Tests that exception is not thrown when non-scrollable DQTextView does not have height constraints.
- (BOOL)textViewTestExceptionHandling7; ///< Tests that exception is not thrown when scrollable DQTextView has height constraints.
- (BOOL)textViewTestExceptionHandling8; ///< Tests that exception is not thrown when scrollable DQTextView does not have height constraints.
- (void)textViewTestExceptionHandling9; ///< Tests that exception is thrown when a non-scrollable DQTextView is not in a scroll view.
- (void)wrapperViewTestAccessibilityLabelAndHint; ///< Sets up objects to test the accessibility label and hint for DQWrapperView.
- (void)wrapperViewTestSingleTapView; ///< Sets up objects to test the singleTapView function in DQWrapperView.
- (void)wrapperViewTestExceptionHandling1; ///< Tests that exception is thrown when there are nested views in a DQWrapperView.
- (BOOL)wrapperViewTestExceptionHandling2; ///< Tests that exception is not thrown when there are different elements in a DQWrapperView.
- (void)wrapperViewTestExceptionHandling3; ///< Tests that exception is thrown when there are nested views and accessibilityLabel is called for the DQWrapperView.
- (void)wrapperViewTestExceptionHandling4; ///< Tests that exception is thrown when there are nested views and accessibilityHint is called for the DQWrapperView.
- (void)viewUtilitiesTestFindFirstActiveElementInView; ///< Sets up objects used to test findFirstActiveElementInView in DQViewUtilities.
- (void)viewUtilitiesTestFindFirstAccessibilityElementInView; ///< Sets up objects used to test findFirstAccessibilityElementInView in DQViewUtilities.

//! Sets up objects used to test findFirstAccessibilityElementUsingComparatorInView in DQViewUtilities.
- (void)viewUtilitiesTestFindFirstAccessibilityElementUsingComparatorInView;
- (void)viewUtilitiesTestComparator; ///< Sets up objects used to test the NSComparator comparePositionYThenX in DQViewUtilities.

- (void)onPress; ///< Used to test the singleTapView function in DQWrapperView.
+ (NSComparator)compareXThenY; ///< Used to test the findFirstAccessibilityElementUsingComparatorInView function in DQViewUtilities.

@end
