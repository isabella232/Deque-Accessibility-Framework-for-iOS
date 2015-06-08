//
//  DQFontUtilities.m
//  DQA11y
//
//  Created by Jennifer Dailey on 6/4/15.
//  Copyright (c) 2015 Deque Systems Inc. All rights reserved.
//

#import "DQFontUtilities.h"

@implementation DQFontUtilities

+ (NSString*const)contentSizeCategory:(UIFont*)font {
    if ([font isEqual:[UIFont preferredFontForTextStyle:UIFontTextStyleBody]]) {
        return UIFontTextStyleBody;
    } else if ([font isEqual:[UIFont preferredFontForTextStyle:UIFontTextStyleCaption1]]) {
        return UIFontTextStyleCaption1;
    } else if ([font isEqual:[UIFont preferredFontForTextStyle:UIFontTextStyleCaption2]]) {
        return UIFontTextStyleCaption2;
    } else if ([font isEqual:[UIFont preferredFontForTextStyle:UIFontTextStyleFootnote]]) {
        return UIFontTextStyleFootnote;
    } else if ([font isEqual:[UIFont preferredFontForTextStyle:UIFontTextStyleHeadline]]) {
        return UIFontTextStyleHeadline;
    } else if ([font isEqual:[UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline]]) {
        return UIFontTextStyleSubheadline;
    } else {
        NSLog(@"Warning: It appears the font is not a dynamic type.");
        return nil;
    }
}

@end
