//
//  DQTestViewController.m
//  DQA11y
//
//  Created by Jennifer Dailey on 7/6/15.
//  Copyright (c) 2015 Deque Systems. All rights reserved.
//

#import "DQTestViewController.h"

@implementation DQTestViewController
- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)setUpLabelTest {
    _label1_init = [[DQLabel alloc] init];
    _label2_initWithFrame = [[DQLabel alloc] initWithFrame:CGRectMake(0, 0, 100, 20)];
}

- (void)setUpButtonTest {
    _button1_init = [DQButton buttonWithType:UIButtonTypeRoundedRect];
    _button2_initWithFrame = [[DQButton alloc] initWithFrame:CGRectMake(100, 100, 20, 20)];
    [_button1_init setTitle:@"This is a button." forState:UIControlStateNormal];
}

- (void)setUpWrapperViewTest {
    [self setUpLabelTest];
    [self setUpButtonTest];
    
    _textfield1_init = [[DQTextField alloc] init];
    _textview1_init = [[DQTextView alloc] init];
    
    _wrapperview1_init = [[DQWrapperView alloc] init];
    _wrapperview2_init = [[DQWrapperView alloc] init];
    _wrapperview3_initWithFrame = [[DQWrapperView alloc] initWithFrame:CGRectMake(50, 50, 100, 100)];
    _wrapperview4_initWithFrame = [[DQWrapperView alloc] initWithFrame:CGRectMake(0, 0, 200, 50)];
    _wrapperview5_init = [[DQWrapperView alloc] init];
    _wrapperview6_initWithFrame = [[DQWrapperView alloc] initWithFrame:CGRectMake(25, 25, 60, 60)];
    
    _test_switch1 = [[UISwitch alloc] init];
    _test_switch2 = [[UISwitch alloc] init];
    _test_switch3 = [[UISwitch alloc] init];
    _test_switch1.on = YES;
    _test_switch2.on = YES;
    _test_switch3.on = YES;
    [_button1_init addTarget:self action:@selector(onPress) forControlEvents:UIControlEventTouchUpInside];
    [_test_switch1 addTarget:self action:@selector(changeSwitchState:) forControlEvents:UIControlEventValueChanged];
    [_test_switch2 addTarget:self action:@selector(changeSwitchState:) forControlEvents:UIControlEventValueChanged];
    [_test_switch3 addTarget:self action:@selector(changeSwitchState:) forControlEvents:UIControlEventValueChanged];

}

- (void)wrapperViewTestAccessibilityLabelAndHint {
    _label1_init.accessibilityLabel = @"This is DQLabel 1";
    _label1_init.accessibilityHint = @"Accessibility hint for DQLabel 1";
    _button1_init.accessibilityLabel = @"This is DQButton 1";
    _button1_init.accessibilityHint = @"Accessibility hint for DQButton 1";
    [_wrapperview1_init addSubview:_button1_init];
    [_wrapperview1_init addSubview:_label1_init];
    
    UILabel* _test_label1 = [[UILabel alloc] init];
    _test_label1.accessibilityLabel = @"This is a UILabel";
    _test_label1.accessibilityHint = @"Accessibility hint for UILabel";
    _textfield1_init.accessibilityLabel = @"This is DQTextField 1";
    _textfield1_init.accessibilityHint = @"Accessibility hint for DQTextfield 1";
    [_wrapperview2_init addSubview:_test_label1];
    [_wrapperview2_init addSubview:_textfield1_init];
    
    _label2_initWithFrame.accessibilityLabel = @"This is DQLabel 2";
    _label2_initWithFrame.accessibilityHint = @"Accessibility hint for DQLabel 2";
    _test_switch1.accessibilityLabel = @"Switch label1";
    _test_switch1.accessibilityHint = @"Accessibility hint for Switch 1";
    [_wrapperview3_initWithFrame addSubview:_label2_initWithFrame];
    [_wrapperview3_initWithFrame addSubview:_test_switch1];
    
    UILabel* _test_label2 = [[UILabel alloc] init];
    UILabel* _test_label3 = [[UILabel alloc] init];
    _test_label2.accessibilityLabel = @"UILabel 2";
    _test_label2.accessibilityHint = @"Accessibility hint for UILabel";
    _test_label3.accessibilityLabel = @"UILabel 3";
    _test_label3.accessibilityHint = @"Accessibility hint for UILabel 3";
    [_wrapperview4_initWithFrame addSubview:_test_label2];
    [_wrapperview4_initWithFrame addSubview:_test_label3];
    
    _test_switch2.accessibilityLabel = @"Switch";
    _test_switch2.accessibilityHint = @"Toggle switch to do things";
    _test_switch3.accessibilityLabel = @"Second switch";
    _test_switch3.accessibilityHint = @"Changes things";
    [_wrapperview5_init addSubview:_test_switch2];
    [_wrapperview5_init addSubview:_test_switch3];
    
    UILabel* _test_label4 = [[UILabel alloc] init];
    _textview1_init.accessibilityLabel = @"This is a DQTextView";
    _textview1_init.accessibilityHint = @"Edit the textview";
    _test_label4.accessibilityLabel = @"This is a UILabel";
    _test_label4.accessibilityHint = @"Accessibility hint for UILabel";
    [_wrapperview6_initWithFrame addSubview:_textview1_init];
    [_wrapperview6_initWithFrame addSubview:_test_label4];
}

- (void)wrapperViewTestSingleTapView {
    _button_was_pressed = FALSE;
    
    _label1_init.accessibilityLabel = @"Button";
    [_wrapperview1_init addSubview:_button1_init];
    [_wrapperview1_init addSubview:_label1_init];
    
    _label2_initWithFrame.accessibilityLabel = @"Switch";
    [_wrapperview2_init addSubview:_test_switch1];
    [_wrapperview2_init addSubview:_label2_initWithFrame];
    
    _test_switch3.accessibilityLabel = @"Two switches";
    [_wrapperview3_initWithFrame addSubview:_test_switch2];
    [_wrapperview3_initWithFrame addSubview:_test_switch3];
    
    _textfield1_init.accessibilityLabel = @"TextField";
    _button2_initWithFrame.accessibilityLabel = @"Button";
    [_wrapperview4_initWithFrame addSubview:_button2_initWithFrame];
    [_wrapperview4_initWithFrame addSubview:_textfield1_init];
}

- (void)wrapperViewTestExceptionHandling1 {
    UIView* _view1 = [[UIView alloc] init];
    [_view1 addSubview:_button1_init];
    [_wrapperview1_init addSubview:_view1];
}

- (BOOL)wrapperViewTestExceptionHandling2 {
    UIView* _view1 = [[UIView alloc] init];
    UIScrollView* _scrollView1 = [[UIScrollView alloc] init];
    [_wrapperview2_init addSubview:_textfield1_init];
    [_wrapperview2_init addSubview:_textview1_init];
    [_wrapperview2_init addSubview:_button1_init];
    [_wrapperview2_init addSubview:_label1_init];
    [_wrapperview2_init addSubview:_test_switch1];
    [_wrapperview2_init addSubview:_view1];
    [_wrapperview2_init addSubview:_scrollView1];
    
    return true;
}

- (void)wrapperViewTestExceptionHandling3 {
    UIView* _view1 = [[UIView alloc] init];
    [_wrapperview3_initWithFrame addSubview:_view1];
    [_view1 addSubview:_label1_init];
    [_wrapperview3_initWithFrame accessibilityLabel];
}

- (void)wrapperViewTestExceptionHandling4 {
    UIScrollView* _scrollView1 = [[UIScrollView alloc] init];
    [_wrapperview4_initWithFrame addSubview:_scrollView1];
    [_scrollView1 addSubview:_label1_init];
    [_wrapperview4_initWithFrame accessibilityHint];
}

- (void)setUpDQUtilitiesTest {
    _label1_init = [[DQLabel alloc] init];
    _button1_init = [[DQButton alloc] init];
    _textview1_init = [[DQTextView alloc] init];
    _textfield1_init = [[DQTextField alloc] init];
    
    _label1_init.text = @"This label name needs to be announced.";
    [_button1_init setTitle:@"This button name needs to be announced." forState:UIControlStateNormal];
    _textview1_init.text = @"This text needs to be announced.";
    _textfield1_init.text = @"This text also needs to be announced.";
    _label1_init.accessibilityLabel = @"Announce the accessibility label!";
}

- (void)setUpDQFontUtilitiesTest {
    _label1 = [[UILabel alloc] init];
}

- (void)setUpDQColorUtilitiesTest {
    //equal to RGBA
    _customColor1 = [UIColor colorWithRed:0.400 green:0.600 blue:0.200 alpha:1];
    _customColor2 = [UIColor colorWithRed:0.4001 green:0.600 blue:0.200 alpha:1];
    _customColor3 = [UIColor colorWithRed:0.400 green:0.5999 blue:0.200 alpha:1];
    _customColor4 = [UIColor colorWithRed:0.400 green:0.600 blue:0.2001 alpha:1];
    _customColor5 = [UIColor colorWithRed:0.400 green:0.600 blue:0.200 alpha:0.9995];
    _customColor6 = [UIColor colorWithRed:0.4001 green:0.5999 blue:0.2001 alpha:0.9995];
    
    //equal to UIColor
    _test_whiteColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:1];
    _test_blackColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:1];
    _test_redColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1];
    _test_greenColor = [UIColor colorWithRed:0 green:1 blue:0 alpha:1];
    _test_blueColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:1];
    _test_magentaColor = [UIColor colorWithRed:1 green:0 blue:1 alpha:1];
    _test_yellowColor = [UIColor colorWithRed:1 green:1 blue:0 alpha:1];
    _test_orangeColor = [UIColor colorWithRed:1 green:0.5 blue:0 alpha:1];
    _test_purpleColor = [UIColor colorWithRed:0.5 green:0 blue:0.5 alpha:1];
    _test_darkgrayColor = [UIColor colorWithRed:(1.00/3.00) green:(1.00/3.00) blue:(1.00/3.00) alpha:1];
    _test_lightgrayColor = [UIColor colorWithRed:(2.00/3.00) green:(2.00/3.00) blue:(2.00/3.00) alpha:1];
    _test_grayColor = [UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:1];
    _test_cyanColor = [UIColor colorWithRed:0 green:1 blue:1 alpha:1];
    _test_brownColor = [UIColor colorWithRed:0.6 green:0.4 blue:0.2 alpha:1];
    _test_clearColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0];
    
}

- (void)setUpDQViewUtilitiesTest {
    _wrapperview1_init = [[DQWrapperView alloc] init];
    _wrapperview2_init = [[DQWrapperView alloc] init];
    _wrapperview3_initWithFrame = [[DQWrapperView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    _wrapperview4_initWithFrame = [[DQWrapperView alloc] init];
    
    _test_switch1 = [[UISwitch alloc] initWithFrame:CGRectMake(0, 0, 50, 25)];
    _test_switch2 = [[UISwitch alloc] init];
    _button1_init = [[DQButton alloc] init];
    _textfield1_init = [[DQTextField alloc] initWithFrame:CGRectMake(20, 40, 50, 20)];
    _label1_init = [[DQLabel alloc] init];
    _label2_initWithFrame = [[DQLabel alloc] initWithFrame:CGRectMake(0, 80, 70, 20)];
    _textview1_init = [[DQTextView alloc] init];
    _test_view1 = [[UIView alloc] init];
    _test_view2 = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 50, 50)];
    _button2_initWithFrame = [[DQButton alloc] initWithFrame:CGRectMake(100, 150, 50, 20)];
    
    
    _test_switch1.isAccessibilityElement = YES;
    _test_switch2.isAccessibilityElement = YES;
    _button1_init.isAccessibilityElement = YES;
    _textfield1_init.isAccessibilityElement = YES;
    _label1_init.isAccessibilityElement = YES;
    _label2_initWithFrame.isAccessibilityElement = YES;
    _textview1_init.isAccessibilityElement = YES;
    _test_view1.isAccessibilityElement = NO;
    _test_view2.isAccessibilityElement = NO;
    _button2_initWithFrame.isAccessibilityElement = YES;
}

- (void)viewUtilitiesTestFindFirstActiveElementInView {
    [_wrapperview1_init addSubview:_button1_init];
    [_wrapperview1_init addSubview:_textfield1_init];
    [_wrapperview1_init addSubview:_test_switch1];

    [_wrapperview3_initWithFrame addSubview:_label1_init];
    [_wrapperview3_initWithFrame addSubview:_textview1_init];
    [_wrapperview3_initWithFrame addSubview:_test_view1];
    [_wrapperview3_initWithFrame addSubview:_test_switch2];
    
    [_wrapperview4_initWithFrame addSubview:_label2_initWithFrame];
}

- (void)viewUtilitiesTestFindFirstAccessibilityElementInView {
    [_wrapperview1_init addSubview:_label1_init];
    [_wrapperview1_init addSubview:_button1_init];
    
    [_wrapperview2_init addSubview:_test_view1];
    
    [_wrapperview3_initWithFrame addSubview:_label2_initWithFrame];
    [_wrapperview3_initWithFrame addSubview:_textfield1_init];
    [_wrapperview3_initWithFrame addSubview:_test_switch1];
    
    UIView* _test_view3 = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 50, 25)];
    UILabel* _test_label2 = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 50, 20)];
    _test_view3.isAccessibilityElement = NO;
    _test_label2.isAccessibilityElement = YES;
    
    [_test_view2 addSubview:_test_view3];
    [_test_view3 addSubview:_test_label2];
    [_test_view2 addSubview:_button2_initWithFrame];
}

- (void)onPress {
    _button_was_pressed = TRUE;
    NSLog(@"SJDKLFJSD");
}

- (void)changeSwitchState:(id)sender {
    NSLog(@"Switch state change called");
}

@end
