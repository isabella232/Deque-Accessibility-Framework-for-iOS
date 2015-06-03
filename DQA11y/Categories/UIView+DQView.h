//
//  UIView+DQView.h
//  Accessibility 101
//
//  Created by Chris McMeeking on 4/17/15.
//  Copyright (c) 2015 Deque Systems. All rights reserved.
//

#import <UIKit/UIKit.h>

//! Adds additional accessibility features to UIView.

@interface UIView (DQView)

//! Compares the position of two objects, starting with position Y. Returns an NSComparator.
/*! \returns NSComparator of the position of the two objects. */
+ (NSComparator)comparatorPositionYThenX;

//! Finds the first accessible element in the view and returns it.
/*! \returns a UIView of the first accessible element found. */
- (UIView*)findFirstAccessibilityElement;

//! Uses the NSComparator passed in as a parameter to find the first accessible element in the view. Returns this element.
/*! \param comparator is an NSComparator, with the comparisons of each view.
    \returns UIView, the first accessible element found. */
- (UIView*)findFirstAccessibilityElementUsingComparator:(NSComparator)comparator;

//! Finds the first "active" element (a UIButton, UISwitch, or UITextField) in the view and returns it.
/*! \returns a UIView of the first active element found. If none are found, returns nil. */
- (UIView*)findFirstActiveElement;

//! Prints the view heirarchy, starting with elements at depth 0.
- (void)printViewHeirarchy;

@end
