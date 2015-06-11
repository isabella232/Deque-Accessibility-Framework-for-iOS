//
//  DQA11yTextField.m
//  FormValidation
//
//  Created by Chris McMeeking on 4/10/15.
//  Copyright (c) 2015 Deque Developer. All rights reserved.
//

#import "DQTextField.h"
#import "DQFontUtilities.h"

@implementation DQTextField {
    NSString* _contentSizeCategory;
    BOOL b;
}

- (id)init {
    self = [super init];
    
    if (self) {
        [self initialize];
    }
    
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    
    if (self) {
        [self initialize];
    }
    
    return self;
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    if (self) {
        [self initialize];
    }
    
    return self;
}

-(void)initialize {
    
    _contentSizeCategory = [DQFontUtilities contentSizeCategory:self.font];
    announcePlaceholderText = YES;
    
    [self didChangePreferredContentSize];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(didChangePreferredContentSize)
                                                 name:UIContentSizeCategoryDidChangeNotification
                                               object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(textChanged)
                                                 name:UITextFieldTextDidChangeNotification object:nil];
}

-(void)didChangePreferredContentSize {
    self.font = [UIFont preferredFontForTextStyle:_contentSizeCategory];
}

// Changes the textField's accessibilityLabel depending on if it is empty or not.
- (void)textChanged {
    if(self.text.length > 0 && b == NO) {
        self.accessibilityLabel = [NSString stringWithFormat:@"%@, %@", self.placeholder, self.accessibilityLabel, nil];
        b = YES;
        
    } else if(self.text.length == 0) {
        self.accessibilityLabel = [self.accessibilityLabel substringFromIndex:self.placeholder.length + 2];
        b = NO;
    }
    NSLog(self.accessibilityLabel);
}


//TODO: What if user wants to change font? Change color? Why is there nothing in the .h file for this?

-(void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
