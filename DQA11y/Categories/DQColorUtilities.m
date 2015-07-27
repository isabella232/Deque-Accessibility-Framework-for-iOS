//
//  DQColorUtilities.m
//  DQA11y
//
//  Created by Jennifer Dailey on 6/4/15.
//  Copyright (c) 2015 Deque Systems Inc. All rights reserved.
//

#import "DQColorUtilities.h"

@implementation DQColorUtilities

+ (BOOL)isEqualToColor:(UIColor*)color WithRed:(CGFloat)testred green:(CGFloat)testgreen blue:(CGFloat)testblue alpha:(CGFloat)testalpha {
    
    CGFloat redVal;
    CGFloat greenVal;
    CGFloat blueVal;
    CGFloat alphaVal;
    
    [color getRed:&redVal green:&greenVal blue:&blueVal alpha:&alphaVal];
    
    return (testred -0.001 < redVal && testred+0.001 > redVal && testalpha -0.001 < alphaVal && testalpha +0.001 > alphaVal && testblue -0.001 < blueVal && testblue +0.001 > blueVal && testgreen -0.001 < greenVal && testgreen+ 0.001 > greenVal);
    
}

+ (BOOL)isEqual:(UIColor*)color1 To:(UIColor*)color2{
    
    CGFloat redVal;
    CGFloat greenVal;
    CGFloat blueVal;
    CGFloat alphaVal;
    CGFloat redCompare;
    CGFloat greenCompare;
    CGFloat blueCompare;
    CGFloat alphaCompare;
    
    [color2 getRed:&redVal green:&greenVal blue:&blueVal alpha:&alphaVal];
    [color1 getRed:&redCompare green:&greenCompare blue:&blueCompare alpha:&alphaCompare];
    
    return(redVal == redCompare && greenVal == greenCompare && blueVal == blueCompare && alphaVal == alphaCompare);
    
}

@end
