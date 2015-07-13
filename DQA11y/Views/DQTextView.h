//
//  IACTextView.h
//  DQA11y
//
//  Created by Chris McMeeking on 3/31/15.
//  Copyright (c) 2015 Deque Systems. All rights reserved.
//

#import <UIKit/UIKit.h>

//! Adds additional accessibility features to UITextView
@interface DQTextView : UITextView

//! Checks if the current text type is a dynamic type.
/*! \param contentSizeCategory is an NSString of the current text type.
    \returns TRUE if the current text type is a dynamic type, FALSE otherwise.
 */
+(BOOL)isValidContentSizeCategory:(NSString*const)contentSizeCategory;

@end
