//
//  RightView.m
//  duojiFenLei
//
//  Created by 冯莉娅 on 16/3/1.
//  Copyright © 2016年 fly. All rights reserved.
//

#import "RightView.h"
#import "ViewModel.h"
#import "RightViewCell.h"

@interface RightView()<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) UICollectionView *collectionview;
@property (nonatomic, strong) ViewModel *viewModel;

@end

@implementation RightView

- (instancetype)initWithFrame:(CGRect)frame andViewModel:(ViewModel *)viewModel
{
    self = [super initWithFrame:frame];
    if (self) {
        self.viewModel = viewModel;
        [self setUpCollectionView];
    }
    return self;
}

- (void)setUpCollectionView
{
    UICollectionViewFlowLayout *layout = [UICollectionViewFlowLayout new];

    self.collectionview = [[UICollectionView alloc] initWithFrame:CGRectMake(5, 0, self.frame.size.width - 10, self.frame.size.height) collectionViewLayout:layout];
    self.collectionview.delegate = self;
    self.collectionview.dataSource = self;
    self.collectionview.backgroundColor = [UIColor whiteColor];
    [self addSubview:self.collectionview];
    [self.collectionview registerClass:[RightViewCell class] forCellWithReuseIdentifier:@"right"];
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return self.viewModel.rightViewModelArray.count;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    NSDictionary *dic = self.viewModel.rightViewModelArray[section];
    NSMutableArray *array = dic[@"elements"];
    return array.count;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake((self.collectionview.frame.size.width - 10) / 2, 70);
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(5, 0, 5, 0);
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSDictionary *dic = self.viewModel.rightViewModelArray[indexPath.section];
    NSMutableArray *array = dic[@"elements"];

    RightViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"right" forIndexPath:indexPath];
    [cell bindRightViewCellModel:array[indexPath.row]];
    return cell;
}

- (void)scrollViewToSection:(NSInteger)section row:(NSInteger)row
{
    if (section >= self.viewModel.rightViewModelArray.count || section < 0) {
        return;
    }
    NSDictionary *dic = self.viewModel.rightViewModelArray[section];
    NSMutableArray *array = dic[@"elements"];
    if (row >= array.count || row < 0) {
        return;
    }
    [self.collectionview scrollToItemAtIndexPath:[NSIndexPath indexPathForRow:row inSection:section] atScrollPosition:UICollectionViewScrollPositionTop animated:YES];
}
@end
