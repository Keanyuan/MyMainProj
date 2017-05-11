//
//  NSString+UIColor.h
//  MyMainProj
//
//  Created by pactera on 2016/12/9.
//  Copyright © 2016年 com.storyboard.pactera. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

// 用于扩展NSString,转换UIColor
@interface NSString (UIColor)

// 获取由当前的NSString转换来的UIColor
- (UIColor*)color;

@end
