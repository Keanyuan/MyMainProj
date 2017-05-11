//
//  UIColor+Hex.h
//  MyMainProj
//
//  Created by pactera on 2016/12/9.
//  Copyright © 2016年 com.storyboard.pactera. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Hex)

/**
  16进制颜色转化  如0xFFAA99

 @param hex hexColor 16进制颜色
 @return UIColor颜色
 */
+ (UIColor *)ld_colorWithHex:(UInt32)hex;
+ (UIColor *)ld_colorWithHex:(UInt32)hex andAlpha:(CGFloat)alpha;

/**
  16进制字符串颜色转化  如@"0xFFAA99"

 @param hexString hexColor 16进制颜色
 @return UIColor颜色
 */
+ (UIColor *)ld_colorWithHexString:(NSString *)hexString;
- (NSString *)ld_HEXString;

+ (UIColor *)ld_colorWithWholeRed:(CGFloat)red
                            green:(CGFloat)green
                             blue:(CGFloat)blue
                            alpha:(CGFloat)alpha;

+ (UIColor *)ld_colorWithWholeRed:(CGFloat)red
                            green:(CGFloat)green
                             blue:(CGFloat)blue;


@end
