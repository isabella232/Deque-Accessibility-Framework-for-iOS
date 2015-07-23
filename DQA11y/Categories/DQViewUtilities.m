//
//  DQViewUtilities.m
//  DQA11y
//
//  Created by Jennifer Dailey on 6/4/15.
//  Copyright (c) 2015 Deque Systems Inc. All rights reserved.
//

#import "DQViewUtilities.h"

@implementation DQViewUtilities

+ (NSComparator)comparatorPositionYThenX {
    return ^(UIView *obj1, UIView *obj2) {
        if (obj1.frame.origin.y > obj2.frame.origin.y) {
            return (NSComparisonResult)NSOrderedDescending;
        } else if (obj1.frame.origin.y < obj2.frame.origin.y) {
            return (NSComparisonResult)NSOrderedAscending;
        } else {
            if (obj1.frame.origin.x > obj2.frame.origin.x) {
                return (NSComparisonResult)NSOrderedDescending;
            } else if (obj1.frame.origin.x < obj2.frame.origin.x) {
                return (NSComparisonResult)NSOrderedAscending;
            } else {
                return (NSComparisonResult)NSOrderedSame;
            }
        }
    };
}

+ (UIView*)findFirstAccessibilityElementUsingComparator:(NSComparator)comparator inView:(UIView*)view {
    if (view.isAccessibilityElement) return view;
    
    for (UIView* subView in [view.subviews sortedArrayUsingComparator:comparator]) {
        
        UIView* temp = [self findFirstAccessibilityElementUsingComparator:comparator inView:subView];
        
        if (temp) return temp;
    }
    
    return nil;
}

+ (UIView*)findFirstAccessibilityElementInView:(UIView*)view {
    return [self findFirstAccessibilityElementUsingComparator:[self comparatorPositionYThenX] inView:view];
}

+ (BOOL)isActiveElementInView:(UIView*)view {
    if ([view isKindOfClass:[UIButton class]]) {
        return YES;
    } else if ([view isKindOfClass:[UISwitch class]]) {
        return YES;
    } else if ([view isKindOfClass:[UITextField class]]) {
        return YES;
    } else {
        return NO;
    }
}

+ (UIView*)findFirstActiveElementInView:(UIView*)view {
    
    if ([self isActiveElementInView:view]) return view;
    
    for (UIView* subView in view.subviews) {
        
        UIView* temp = [DQViewUtilities findFirstActiveElementInView:subView];
        
        if (temp) return temp;
    }
    
    return nil;
}

+ (void)printViewHeirarchyForView:(UIView*)view {
    [self printViewHeirarchyAtDepth:0 forView:view];
}

// Helper function for printViewHeirarchy
+ (void)printViewHeirarchyAtDepth:(int)depth forView:(UIView*)view {
    for (UIView* v in view.subviews) {
        NSLog(@"%*s%@", depth*2, " ", v);
        [self printViewHeirarchyAtDepth:depth+1 forView:v];
    }
}

@end
