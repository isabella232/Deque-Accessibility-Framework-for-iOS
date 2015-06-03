//
//  UIColor+UIColor_DQColor.h
//  Accessibility 101
//
//  Created by Alistair Barrell on 5/26/15.
//  Copyright (c) 2015 Deque Systems. All rights reserved.
//

#import <UIKit/UIKit.h>

//! Some methods for dealing with color equality
@interface UIColor (DQColor)

//! Compares its UIColor (self) with the RGBA values passed in as parameters. Returns a BOOL.
/*! Sometimes setting colors in the storyboard editor results in different RGBA values, so this function makes sure they are equal.
\param testred is a CGFloat of the amount of red in the color being compared.
\param testgreen is a CGFloat of the amount of green in the color being compared.
\param testblue is a CGFloat of the amount of blue in the color being compared.
\param testalpha is a CGFloat of the alpha in the color being compared.
\returns TRUE if the two colors are equal, and false otherwise.
*/
-(BOOL) isEqualToColorWithRed:(CGFloat)testred green:(CGFloat)testgreen blue:(CGFloat)testblue alpha:(CGFloat)testalpha;

//! Compares its UIColor (self) with the UIColor passed in as a paramter. Returns a BOOL.
/*!
 * \param color is a UIColor that will be compared with self's colors.
 * \returns TRUE if the two colors are equal, and FALSE otherwise.
 */
-(BOOL) isEqualToColor:(UIColor *)color;

@end
