//
//  IACResizingLabel.m
//  Accessibility 101
//
//  Created by Chris McMeeking on 3/31/15.
//  Copyright (c) 2015 Deque Systems. All rights reserved.
//

#import "DQLabel.h"
#import "DQTextView.h"
#import "DQFontUtilities.h"
#import "DQLog.h"

#define LOG_FLAG YES

@implementation DQLabel {
    NSString* _contentSizeCategory; ///< Dynamic font type.
    NSInteger _originalNumberOfLines; ///< Number of lines set on storyboard.
}

-(id)init {
    self = [super init];
    
    if (self) {
        [self initialize];
    }
    
    return self;
}

-(id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    
    if (self) {
        //Warns programmer if the number of lines is not set to 0.
        [self numberOfLines];
        if (_originalNumberOfLines != 0) DQLog(@"Warning: number of lines not set to 0.  Content will not be allowed to wrap on larger text sizes!");
        
        //Warns programmer if font is not dynamic type
        [self setContentSizeCategory:[DQFontUtilities contentSizeCategory:self.font]];
        [self didChangePreferredContentSize];
        
        [self initialize];
    }
    
    return self;
}

-(id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    if (self)
        [self initialize];
    
    return self;
}

-(void)initialize {
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(didChangePreferredContentSize)
                                                 name:UIContentSizeCategoryDidChangeNotification
                                               object:nil];
}

-(void)didChangePreferredContentSize {
    self.font = [UIFont preferredFontForTextStyle:_contentSizeCategory];
}

-(void)setContentSizeCategory:(NSString *)contentSizeCategory {
    
    if ([DQTextView isValidContentSizeCategory:contentSizeCategory]) {
        
        _contentSizeCategory = contentSizeCategory;
    } else {
        DQLog(@"WARNING: Content Size Category not valid, setting to \"UIFontTextStyleBody\" by default for element: %@", self);
        _contentSizeCategory = UIFontTextStyleBody;
    }
    
    if (_contentSizeCategory == UIFontTextStyleHeadline) {
        self.accessibilityTraits |= UIAccessibilityTraitHeader;
    }
    
    [self didChangePreferredContentSize];
}

-(void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

-(NSInteger)numberOfLines {
    _originalNumberOfLines = [super numberOfLines];
    return 0;
}

-(void)setNumberOfLines:(NSInteger)numberOfLines {
    if(numberOfLines != 0) {
        DQLog(@"WARNING: You are trying to set numberOfLines to a number other than 0. Content will not be allowed to wrap on larger text sizes! numberOfLines is set to 0.");
    }
}

-(void)setFont:(UIFont *)font {
    //Default font type should be Body
    if([self.font isEqual:[UIFont systemFontOfSize:17 weight:normal]]) {
        [super setFont:[UIFont preferredFontForTextStyle:UIFontTextStyleBody]];
        
    //If font is dynamic, set it to be that font
    } else if([DQTextView isValidContentSizeCategory:[DQFontUtilities contentSizeCategory:font]]) {
        [super setFont:font];
        
    //If font is not dynamic, log warning and set font to be Body
    } else {
        DQLog(@"WARNING: Content Size Category not valid, setting to \"UIFontTextStyleBody\" by default for element: %@", self);
        [super setFont:[UIFont preferredFontForTextStyle:UIFontTextStyleBody]];
    }
}

@end
