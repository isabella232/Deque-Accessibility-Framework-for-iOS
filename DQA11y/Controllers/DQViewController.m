//
//  DQViewController.m
//  DQA11y
//
//  Created by Chris McMeeking on 4/13/15.
//  Copyright (c) 2015 Deque Developer. All rights reserved.
//

#import "DQViewController.h"
#import "DQViewUtilities.h"

@implementation DQViewController

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

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        [self initialize];
    }
    
    return self;
}


- (void)initialize {
    
}

- (void) viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [DQViewUtilities findFirstAccessibilityElementInView:self.view].accessibilityTraits |= UIAccessibilityTraitHeader;
}

@end
