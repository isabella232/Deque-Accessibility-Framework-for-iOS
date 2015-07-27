//
//  DQTextField.h
//  DQA11y
//
//  Created by Chris McMeeking on 4/10/15.
//  Copyright (c) 2015 Deque Developer. All rights reserved.
//

#import <UIKit/UIKit.h>

//! Adds additional accessibility features to UITextField
@interface DQTextField : UITextField {
    
    //! If set to YES, when tabbed to, VoiceOver will announce the placeholder text even if there is text in the textField. Automatically set to YES.
    BOOL announcePlaceholderText;
}

@end
