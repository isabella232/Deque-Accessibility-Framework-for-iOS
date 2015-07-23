//
//  DQTextView.m
//  DQA11y
//
//  Created by Chris McMeeking on 3/31/15.
//  Copyright (c) 2015 Deque Systems. All rights reserved.
//

#import "DQTextView.h"
#import "DQFontUtilities.h"

@interface DQTextView ()
@property (nonatomic, weak) NSLayoutConstraint* heightConstraint;
@end

@implementation DQTextView {
    NSString* _contentSizeCategory;
}

-(id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    
    if (self)
        [self initialize];
    
    return self;
}

-(id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    if (self)
        [self initialize];
    
    return self;
}

-(id)initWithFrame:(CGRect)frame textContainer:(NSTextContainer *)textContainer {
    self = [super initWithFrame:frame textContainer:textContainer];
    
    if (self)
        [self initialize];
    
    return self;
}

-(void)initialize {
    
    _contentSizeCategory = [DQFontUtilities contentSizeCategory:self.font]; //Checks for Dynamic Type
    [self didChangePreferredContentSize];
    [self checkUsability];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(didChangePreferredContentSize)
                                                 name:UIContentSizeCategoryDidChangeNotification
                                               object:nil];
}

//Throws an exception if the DQTextView is not scrollable and is not embedded in a UIScrollView or if there is a height constraint on one of the views containing
//  the DQTextView.
-(void)addConstraint:(NSLayoutConstraint *)constraint {
    [super addConstraint:constraint];
    if(!self.scrollEnabled) {
        UIView* view = self.superview;
        while(view && ![view isKindOfClass:[UIScrollView class]]) {
             for (NSLayoutConstraint* constraint in view.constraints) {
                 if(constraint.firstAttribute == NSLayoutAttributeHeight) {
                     if (constraint.relation == NSLayoutRelationEqual) {
                         [NSException raise:@"DQTextView Constraint Issue" format:@"One of the superviews of DQTextView has a height constraint that may limit what can be seen by a user. This exception may have been thrown from either a height constraint that is constant (for example a UIView set to have a height of 200), or because the container does not have a UIScrollView."];
                     }
                 }
             }
            view = view.superview;
        }
    }
}

-(void)didChangePreferredContentSize {
    self.font = [UIFont preferredFontForTextStyle:_contentSizeCategory];
}

//Throws an exception if the DQTextView is not scrollable and has a height constraint.
-(void)checkUsability {
    if((!self.scrollEnabled)) {
        for (NSLayoutConstraint* constraint in self.constraints) {
            if (constraint.firstAttribute == NSLayoutAttributeHeight) {
                if (constraint.relation == NSLayoutRelationEqual) {
                    [NSException raise:@"DQTextView Constraint Issue" format:@"DQTextView has a height constraint that may limit what can be seen by a user. Remove the height constraint of this DQTextView to get rid of this exception."];
                }
            }
        }
    }
}

-(void)setFont:(UIFont *)font {
    [super setFont:font];
    
    if(!self.scrollEnabled) {
        [self textViewDidChange];
    }
}

-(void)setText:(NSString *)text {
    [super setText:text];
    
    if(!self.scrollEnabled) {
        [self textViewDidChange];
    }
    [super setNeedsDisplay];
}

//Changes height of DQTextView based on amount of content in it (only occurs if DQTextView is not editable).
-(void)textViewDidChange {
    CGFloat fixedWidth = self.frame.size.width;
    CGSize newSize = [self sizeThatFits:CGSizeMake(fixedWidth, MAXFLOAT)];
    self.heightConstraint.constant = newSize.height;
}

-(void)setContentSizeCategory:(NSString *)contentSizeCategory {
    
    if ([DQFontUtilities isValidContentSizeCategory:contentSizeCategory]) {
        
        _contentSizeCategory = contentSizeCategory;
    } else {
        NSLog(@"%@ WARNING: Content Size Category not valid, setting to UIFontTextStyleBody by default", self);
        _contentSizeCategory = UIFontTextStyleBody;
    }
    
    [self didChangePreferredContentSize];
}

-(void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
