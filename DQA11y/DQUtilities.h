//
//  DQUtilities.h
//  Accessibility 101
//
//  Created by Jennifer Dailey on 5/6/15.
//  Copyright (c) 2015 Deque Systems. All rights reserved.
//

#ifndef Accessibility_101_DQUtilities_h
#define Accessibility_101_DQUtilities_h

//! Additional accessibility methods.
/*! This file contains accessibility features that are not related to any view or controller. */
@interface DQUtilities : NSObject

//! Delays passing the NSString to VoiceOver to prevent it from being interrupted by other accessibility notifications.
/*! \param announcement is the NSString that will be announced. */
+(void)createDynamicNotification:(NSString*)announcement;

@end

#endif
