//
//  LeftView.m
//  duojiFenLei
//
//  Created by 冯莉娅 on 16/3/1.
//  Copyright © 2016年 fly. All rights reserved.
//

#import "LeftView.h"
#import "LeftViewCell.h"

@interface LeftView()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, strong) UITableView *tableview;
@property (nonatomic, strong) ViewModel *viewModel;
@end

@implementation LeftView

- (instancetype)initWithFrame:(CGRect)frame andViewModel:(ViewModel *)viewModel
{
    self = [super initWithFrame:frame];
    if (self) {
        self.viewModel = viewModel;
        [self setUpTableView];
    }
    return self;
}

- (void)setUpTableView
{
    self.tableview = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    self.tableview.delegate = self;
    self.tableview.dataSource = self;
    [self addSubview:self.tableview];
    [self.tableview registerClass:[LeftViewCell class] forCellReuseIdentifier:@"left"];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.viewModel.leftViewModelArray.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 30.0f;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    LeftViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"left"];
    [cell bindLeftViewCellModel:self.viewModel.leftViewModelArray[indexPath.row]];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (self.delegate && [self.delegate respondsToSelector:@selector(selectedSection:scrollRow:)]) {
        [self.delegate selectedSection:indexPath.row scrollRow:0];
    }
}
@end
