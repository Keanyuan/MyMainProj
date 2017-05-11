//
//  ViewController.m
//  MyMainProj
//
//  Created by pactera on 2017/3/8.
//  Copyright © 2017年 com.pactera. All rights reserved.
//

#import "ViewController.h"
#import "UIView+LayoutMethods.h"
#import "CTMediator+CTMediatorModuleAActions.h"
#import "TableViewController.h"

NSString * const kCellIdentifier = @"kCellIdentifier";

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *dataSource;

@end

@implementation ViewController

#pragma mark - life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.tableView];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    [self.tableView fill];
}

#pragma mark - Delegate
#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kCellIdentifier];
    cell.textLabel.text = self.dataSource[indexPath.row];
    return cell;
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    switch (indexPath.row) {
        case 0: {
            // 获得view controller之后，在这种场景下，到底push还是present，其实是要由使用者决定的，mediator只要给出view controller的实例就好了
            UIViewController *viewController = [[CTMediator sharedInstance]CTMediator_viewControllerForDetail];
            [self presentViewController:viewController animated:YES completion:nil];
        }
            break;
        case 1: {
            UIViewController *viewController = [[CTMediator sharedInstance]CTMediator_viewControllerForDetail];
            [self.navigationController pushViewController:viewController animated:YES];
            
        }
            break;
        case 2: {
            // 这种场景下，很明显是需要被present的，所以不必返回实例，mediator直接present了
            [[CTMediator sharedInstance]CTMediator_presentImage:[UIImage imageNamed:@"image"]];
        }
            break;
        case 3: {
            // 这种场景下，参数有问题，因此需要在流程中做好处理
            [[CTMediator sharedInstance]CTMediator_presentImage:nil];
        }
            break;
        case 4: {
            [[CTMediator sharedInstance]CTMediator_showAlertWithMessage:@"测试弹框" cancleAction:^(NSDictionary *info) {
                NSLog(@"取消");
            } confirmAction:^(NSDictionary *info) {
                NSLog(@"确认");
            }];
        }
            break;
        case 5: {
            TableViewController *tableViewController = [[TableViewController alloc]init];
            [self presentViewController:tableViewController animated:YES completion:nil];
        }
            break;
            
        default:
            break;
    }
}


#pragma mark - getters and setters
- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:kCellIdentifier];
    }
    return _tableView;
}

- (NSArray *)dataSource
{
    if (_dataSource == nil) {
        _dataSource = @[@"present detail view controller", @"push detail view controller", @"present image", @"present image when error", @"show alert", @"table view cell"];
    }
    return _dataSource;
}
@end
