//
//  DQDynamicTypeButton.h
//  DQA11y
//
//  Created by Chris McMeeking on 4/8/15.
//  Copyright (c) 2015 Deque Developer. All rights reserved.
//

#import <UIKit/UIKit.h>

//! Adds additional accessibility features to UIButton.
@interface DQButton : UIButton

@property (getter=isUnderlined) BOOL underlined; ///< Set as TRUE if text in button should be underlined. FALSE otherwise.
@property (getter=isShadowed) BOOL shadowed; ///< Set as TRUE if button should have a shadow. FALSE otherwise.

@end
