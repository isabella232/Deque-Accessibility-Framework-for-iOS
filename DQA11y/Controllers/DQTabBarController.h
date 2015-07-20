//
//  DQTabBarController.h
//  DQA11y
//
//  Created by Chris McMeeking on 4/14/15.
//  Copyright (c) 2015 Deque Systems. All rights reserved.
//

#import <UIKit/UIKit.h>

//! Adds additional accessibility to UITabBarController. Automatically updates colors when "Darken Colors" accessibility setting is toggled.
@interface DQTabBarController : UITabBarController

@property (strong, atomic) UIColor* colorDimmed; ///<  Color of the non-selected Tab Bar items when the "Darken Colors" setting is off
@property (strong, atomic) UIColor* colorDimmedDarkened; ///< Color of the non-selected Tab Bar items when the "Darken Colors" setting is on
@property (strong, atomic) UIColor* colorSelected; ///< Color of the selected Tab Bar item when the "Darken Colors" setting is off
@property (strong, atomic) UIColor* colorSelectedDarkened; ///< Color of the selected Tab Bar item when the "Darken Colors" setting is on
@property (strong, atomic) UIColor* colorTabBar; ///< Color of the Tab Bar when "Darken Colors" setting is off
@property (strong, atomic) UIColor* colorTabBarDarkened; ///< Color of the Tab Bar when "Darken Colors" setting is on
@property (atomic) BOOL translucentUndarkened; ///< Set to TRUE if the Tab Bar should be translucent when "Darken Colors" setting is off
@property (atomic) BOOL translucentDarkened; ///< Set to TRUE if the Tab Bar should be translucent when "Darken Colors" setting is on

@end
