//
//  DQFontUtilities.h
//  DQA11y
//
//  Created by Jennifer Dailey on 6/4/15.
//  Copyright (c) 2015 Deque Systems Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

//! Additional accessibility methods related to UIFonts
@interface DQFontUtilities : NSObject

//! Checks if current font responds to changes in text size (accessibility feature), and logs a warning if it does not support Dynamic Type.
/*!
 * \param font is the UIFont that will be analyzed.
 * \returns NSString of the current text style, or nil if the font is not a dynamic type.
 */
+ (NSString*const)contentSizeCategory:(UIFont*)font;

//! Checks if the current text type is a dynamic type.
/*! \param contentSizeCategory is an NSString of the current text type.
 \returns TRUE if the current text type is a dynamic type, FALSE otherwise.
 */
+(BOOL)isValidContentSizeCategory:(NSString*const)contentSizeCategory;

@end
