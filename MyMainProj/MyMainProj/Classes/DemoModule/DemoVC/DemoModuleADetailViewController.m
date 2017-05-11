//
//  DemoModuleADetailViewController.m
//  MyMainProj
//
//  Created by pactera on 2017/3/8.
//  Copyright © 2017年 com.pactera. All rights reserved.
//

#import "DemoModuleADetailViewController.h"
#import "UIView+LayoutMethods.h"

@interface DemoModuleADetailViewController ()
@property (nonatomic, strong, readwrite) UILabel *valueLabel;
@property (nonatomic, strong, readwrite) UIImageView *imageView;
@property (nonatomic, strong) UIButton *returnButton;

@end

@implementation DemoModuleADetailViewController

#pragma mark - life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    [self.view addSubview:self.valueLabel];
    [self.view addSubview:self.imageView];
    [self.view addSubview:self.returnButton];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    [self.valueLabel sizeToFit];
    [self.valueLabel topInContainer:70 shouldResize:NO];
    [self.valueLabel centerXEqualToView:self.view];
    
    self.imageView.size = CGSizeMake(100, 100);
    [self.imageView centerEqualToView:self.view];
    
    self.returnButton.size = CGSizeMake(100, 100);
    [self.returnButton bottomInContainer:0 shouldResize:NO];
    [self.returnButton centerXEqualToView:self.view];
}


#pragma mark - event response
- (void)didTappedReturnButton:(UIButton *)button
{
    if (self.navigationController == nil) {
        [self dismissViewControllerAnimated:YES completion:nil];
    } else {
        [self.navigationController popViewControllerAnimated:YES];
    }
}

#pragma mark - getters and setters
- (UILabel *)valueLabel {
    if (!_valueLabel) {
        _valueLabel = [[UILabel alloc] init];
        _valueLabel.font = [UIFont systemFontOfSize:30];
        _valueLabel.textColor = [UIColor blackColor];
    }
    return _valueLabel;
}

- (UIImageView *)imageView
{
    if (!_imageView) {
        _imageView = [[UIImageView alloc] init];
        _imageView.contentMode = UIViewContentModeScaleAspectFit;
    }
    return _imageView;
}


- (UIButton *)returnButton
{
    if (!_returnButton) {
        _returnButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_returnButton addTarget:self action:@selector(didTappedReturnButton:) forControlEvents:UIControlEventTouchUpInside];
        [_returnButton setTitle:@"return" forState:UIControlStateNormal];
        [_returnButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    }
    return _returnButton;
}
@end






