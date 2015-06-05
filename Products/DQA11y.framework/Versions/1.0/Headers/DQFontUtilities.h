//
//  DQFontUtilities.h
//  DQA11y
//
//  Created by Jennifer Dailey on 6/4/15.
//  Copyright (c) 2015 Deque Systems Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface DQFontUtilities : NSObject

//! Checks if current font responds to changes in text size (accessibility feature), and logs a warning if it does not support Dynamic Type.
/*! \returns NSString of the current text style, or nil if the font is not a dynamic type. */
+ (NSString*const)contentSizeCategory:(UIFont*)font;

@end
