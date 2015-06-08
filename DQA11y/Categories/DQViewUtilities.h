//
//  DQViewUtilities.h
//  DQA11y
//
//  Created by Jennifer Dailey on 6/4/15.
//  Copyright (c) 2015 Deque Systems Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface DQViewUtilities : NSObject

//! Compares the position of two objects, starting with position Y. Returns an NSComparator.
/*! \returns NSComparator of the position of the two objects. */
+ (NSComparator)comparatorPositionYThenX;

//! Finds the first accessible element in the view and returns it.
/*! \returns a UIView of the first accessible element found. */
+ (UIView*)findFirstAccessibilityElementInView:(UIView*)view;

//! Uses the NSComparator passed in as a parameter to find the first accessible element in the view. Returns this element.
/*! \param comparator is an NSComparator, with the comparisons of each view.
 \returns UIView, the first accessible element found. */
+ (UIView*)findFirstAccessibilityElementUsingComparator:(NSComparator)comparator inView:(UIView*)view;

//! Finds the first "active" element (a UIButton, UISwitch, or UITextField) in the view and returns it.
/*! \returns a UIView of the first active element found. If none are found, returns nil. */
+ (UIView*)findFirstActiveElementInView:(UIView*)view;

//! Prints the view heirarchy, starting with elements at depth 0.
+ (void)printViewHeirarchyForView:(UIView*)view;


@end
