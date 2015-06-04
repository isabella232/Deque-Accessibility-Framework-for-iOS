//
//  DQColorUtilities.h
//  DQA11y
//
//  Created by Jennifer Dailey on 6/4/15.
//  Copyright (c) 2015 Deque Systems Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface DQColorUtilities : NSObject

//! Compares its UIColor (self) with the RGBA values passed in as parameters. Returns a BOOL.
/*! Sometimes setting colors in the storyboard editor results in different RGBA values, so this function makes sure they are equal.
 \param testred is a CGFloat of the amount of red in the color being compared.
 \param testgreen is a CGFloat of the amount of green in the color being compared.
 \param testblue is a CGFloat of the amount of blue in the color being compared.
 \param testalpha is a CGFloat of the alpha in the color being compared.
 \returns TRUE if the two colors are equal, and false otherwise.
 */
+(BOOL) isEqualToColorWithRed:(CGFloat)testred green:(CGFloat)testgreen blue:(CGFloat)testblue alpha:(CGFloat)testalpha withColor:(UIColor*)color;

//! Compares its UIColor (self) with the UIColor passed in as a paramter. Returns a BOOL.
/*!
 * \param color is a UIColor that will be compared with self's colors.
 * \returns TRUE if the two colors are equal, and FALSE otherwise.
 */
+(BOOL) isEqual:(UIColor*)color1 To:(UIColor*)color2;


@end
