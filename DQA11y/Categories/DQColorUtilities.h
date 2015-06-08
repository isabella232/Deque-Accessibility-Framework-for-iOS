//
//  DQColorUtilities.h
//  DQA11y
//
//  Created by Jennifer Dailey on 6/4/15.
//  Copyright (c) 2015 Deque Systems Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

//! Additional comparison methods related to UIColor
@interface DQColorUtilities : NSObject

//! Compares one UIColor with the RGBA values of another color. Returns a BOOL.
/*! Sometimes setting colors in the storyboard editor results in different RGBA values, so this function makes sure they are equal.
 * \param testred is a CGFloat of the amount of red in the color being compared.
 * \param testgreen is a CGFloat of the amount of green in the color being compared.
 * \param testblue is a CGFloat of the amount of blue in the color being compared.
 * \param testalpha is a CGFloat of the alpha in the color being compared.
 * \param color is a UIColor with which one can compare the RGBA values of another color.
 * \returns TRUE if the two colors are equal, and FALSE otherwise.
 */
+(BOOL) isEqualToColorWithRed:(CGFloat)testred green:(CGFloat)testgreen blue:(CGFloat)testblue alpha:(CGFloat)testalpha withColor:(UIColor*)color;

//! Compares two UIColors. Returns a BOOL.
/*!
 * \param color1 is a UIColor that will be compared with color2.
 * \param color2 is a UIColor that will be compared with color1.
 * \returns TRUE if the two colors are equal, and FALSE otherwise.
 */
+(BOOL) isEqual:(UIColor*)color1 To:(UIColor*)color2;


@end
