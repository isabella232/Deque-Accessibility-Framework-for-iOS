//
//  DQTextView.h
//  DQA11y
//
//  Created by Chris McMeeking on 3/31/15.
//  Copyright (c) 2015 Deque Systems. All rights reserved.
//

#import <UIKit/UIKit.h>

//! Adds additional accessibility features to UITextView
/*! If the DQTextView is marked as non-scrollable, the DQTextView will check to see if any height constraints are added to itself or its superview.  If there is,
 * an exception will be thrown.  It also checks to see if a UIScrollView is present in the view controller if it is marked as non-scrollable.  A DQTextView changes its height based on the amount and size of the text in it (if non-scrollable).  If a height constraint is added, a user may not be able to read all the text in the DQTextView.*/
@interface DQTextView : UITextView

@end
