//
//  DQWrapperView.m
//  DQA11y
//
//  Created by Chris McMeeking on 4/17/15.
//  Copyright (c) 2015 Deque Systems. All rights reserved.
//

#import "DQWrapperView.h"
#import "DQViewUtilities.h"
#import "DQLog.h"

#define LOG_FLAG YES

@implementation DQWrapperView

- (id)init {
    
    if (self = [super init]) {
        [self initialize];
    }
    
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    
    if (self = [super initWithCoder:aDecoder]) {
        [self initialize];
    }
    
    return self;
}

- (id)initWithFrame:(CGRect)frame {

    if (self = [super initWithFrame:frame]) {
        [self initialize];
    }
    
    return self;
}

- (void)initialize {
    
    if ([DQViewUtilities findFirstActiveElementInView:self]) {
        [self addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTapView)]];
    }
}

- (void)didAddSubview:(UIView *)subview {
    [self validateViews:self atDepth:0];
}

- (void)singleTapView {
    [self validateViews:self atDepth:0];

    UIView* activeElement = [DQViewUtilities findFirstActiveElementInView:self];
    
    if ([activeElement isKindOfClass:[UIButton class]]) {
        
        UIButton* button = (UIButton*)activeElement;
        [button sendActionsForControlEvents:UIControlEventTouchUpInside];
        
    } else if ([activeElement isKindOfClass:[UISwitch class]]) {
        
        UISwitch* aSwitch = (UISwitch*)activeElement;
        [aSwitch setOn:(!aSwitch.on) animated:YES];
        [aSwitch sendActionsForControlEvents:UIControlEventValueChanged];
    }
}

// This returns the accessibilityLabel of the view.
- (NSString*)accessibilityLabel {
    [self validateViews:self atDepth:0];
    
    NSMutableString* accessibilityLabel = [NSMutableString new];
    
    for (UIView* view in self.subviews) {
        
        if (view.accessibilityLabel)
            [accessibilityLabel appendFormat:@" %@", view.accessibilityLabel];
    }

    UIView* firstActiveView = [DQViewUtilities findFirstActiveElementInView:self];
    
    if (firstActiveView && [firstActiveView isKindOfClass:[UIButton class]]) {
        [accessibilityLabel appendFormat:@", %@", NSLocalizedString(@"BUTTON", nil)];

    } else if ([firstActiveView isKindOfClass:[UISwitch class]]) {
        
        UISwitch* switchView = (UISwitch*)firstActiveView;
        
        if (switchView.on) {
            [accessibilityLabel appendString:@", on"];
        } else {
            [accessibilityLabel appendString:@", off"];
        }
    }
    
    return accessibilityLabel;
}

- (void)validateViews:(UIView*)view atDepth:(int)depth {
    depth++;
    for (UIView* v in view.subviews) {
        if(depth > 1) {
            [NSException raise:@"Invalid view heirarchy" format:@"Too many levels of views in %@ at depth %d", view, depth];
        }
        if([v isKindOfClass:[UISwitch class]] || [v isKindOfClass:[UIButton class]] ||
           [v isKindOfClass:[UITextView class]] || [v isKindOfClass:[UITextField class]]) {
            continue;
        }
        [self validateViews:v atDepth:depth];
    }
}

- (NSString*)accessibilityHint {
    [self validateViews:self atDepth:0];
    
    UIView* firstActiveElement = [DQViewUtilities findFirstActiveElementInView:self];
    
    return firstActiveElement.accessibilityHint;
}

@end
