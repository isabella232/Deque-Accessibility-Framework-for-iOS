//
//  UIFont+DQFont.h
//  FormValidation
//
//  Created by Chris McMeeking on 4/13/15.
//  Copyright (c) 2015 Deque Developer. All rights reserved.
//

#import <UIKit/UIKit.h>

//! Adds additional accessibility features to UIFont.
@interface UIFont (DQFont)

//! Checks if current font responds to changes in text size (accessibility feature), and logs a warning if it does not support Dynamic Type.
/*! \returns NSString of the current text style, or nil if the font is not a dynamic type. */
- (NSString*const)contentSizeCategory;


@end
