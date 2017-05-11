//
//  CTMediator.h
//  MyMainProj
//
//  Created by pactera on 2017/3/8.
//  Copyright © 2017年 com.pactera. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CTMediator : NSObject
+ (instancetype)sharedInstance;


/**
 远程App调用入口
 */
- (id)performActionWithUrl:(NSURL *)url completion:(void (^)(NSDictionary *info))completion;

/**
 本地组件调用入口
 */
- (id)performTarget:(NSString *)targetName action:(NSString *)actionName params:(NSDictionary *)params shouldCacheTarget:(BOOL)shouldCacheTarget;


/**
 释放缓存的目标与目标名称
 */
- (void)releaseCachedTargetWithTargetName:(NSString *)targetName;

@end
