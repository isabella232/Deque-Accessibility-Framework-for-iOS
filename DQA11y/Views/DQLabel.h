//
//  IACResizingLabel.h
//  DQA11y
//
//  Created by Chris McMeeking on 3/31/15.
//  Copyright (c) 2015 Deque Systems. All rights reserved.
//

#import <UIKit/UIKit.h>

//! Adds additional accessibility features to UILabel
@interface DQLabel : UILabel

//! Sets the content size to be as specified. If font type is not dynamic, it logs a warning.
/*! \param contentSizeCategory is an NSString of one of the text styles */
-(void)setContentSizeCategory:(NSString *)contentSizeCategory;

@end
