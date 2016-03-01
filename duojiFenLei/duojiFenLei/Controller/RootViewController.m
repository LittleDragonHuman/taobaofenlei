//
//  RootViewController.m
//  duojiFenLei
//
//  Created by 冯莉娅 on 16/3/1.
//  Copyright © 2016年 fly. All rights reserved.
//

#import "RootViewController.h"
#import "Manager.h"
#import "ViewModel.h"
#import "LeftView.h"
#import "RightView.h"

@interface RootViewController ()<LeftViewDelegate>
@property (nonatomic, strong) LeftView *leftView;
@property (nonatomic, strong) RightView *rightView;
@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"多级分类";
    self.view.backgroundColor = [UIColor whiteColor];
    [self fillViews];
}

- (void)fillViews
{
    [Manager fetchListDatas:^(ListModel *lists, NSError *error) {
        ViewModel *viewModel = [ViewModel generateViewModelByModel:lists];
        self.leftView = [[LeftView alloc] initWithFrame:CGRectMake(0, 0, 100, self.view.frame.size.height) andViewModel:viewModel];
        self.leftView.delegate = self;
        [self.view addSubview:self.leftView];
        self.rightView = [[RightView alloc] initWithFrame:CGRectMake(100, 0, self.view.frame.size.width - 100, self.view.frame.size.height) andViewModel:viewModel];
        [self.view addSubview:self.rightView];
    }];
}

- (void)selectedSection:(NSInteger)section scrollRow:(NSInteger)row
{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
