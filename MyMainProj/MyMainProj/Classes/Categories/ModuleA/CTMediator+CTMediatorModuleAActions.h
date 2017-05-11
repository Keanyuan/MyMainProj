//
//  CTMediator+CTMediatorModuleAActions.h
//  MyMainProj
//
//  Created by pactera on 2017/3/8.
//  Copyright © 2017年 com.pactera. All rights reserved.
//

#import "CTMediator.h"
#import <UIKit/UIKit.h>

@interface CTMediator (CTMediatorModuleAActions)


/**
 DetailViewController

 */
- (UIViewController *)CTMediator_viewControllerForDetail;


/**
 提示框
 */
- (void)CTMediator_showAlertWithMessage:(NSString *)message cancleAction:(void(^)(NSDictionary *info))cancelAction confirmAction:(void(^)(NSDictionary *info))confirmAction;

//模态图片
- (void)CTMediator_presentImage:(UIImage *)image;

- (UITableViewCell *)CTMediator_tableViewCellWithIdentifier:(NSString *)identifier tableView:(UITableView *)tableView;

- (void)CTMediator_configTableViewCell:(UITableViewCell *)cell withTitle:(NSString *)title atIndexPath:(NSIndexPath *)indexPath;

- (void)CTMediator_cleanTableViewCellTarget;

@end
