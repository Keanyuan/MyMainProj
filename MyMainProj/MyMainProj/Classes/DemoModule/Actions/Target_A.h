//
//  Target_A.h
//  MyMainProj
//
//  Created by pactera on 2017/3/8.
//  Copyright © 2017年 com.pactera. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Target_A : NSObject
- (UIViewController *)Action_nativeFetchDetailViewController:(NSDictionary *)params;
- (id)Action_nativePresentImage:(NSDictionary *)parames;
- (id)Action_showAlert:(NSDictionary *)params;

// 容错
- (id)action_nativeNoImage:(NSDictionary *)parames;

@end
