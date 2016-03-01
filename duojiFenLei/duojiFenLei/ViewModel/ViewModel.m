//
//  ViewModel.m
//  duojiFenLei
//
//  Created by 冯莉娅 on 16/3/1.
//  Copyright © 2016年 fly. All rights reserved.
//

#import "ViewModel.h"
#import "LeftViewCellModel.h"
#import "RightViewCellModel.h"

@implementation ViewModel

+ (ViewModel *)generateViewModelByModel:(ListModel *)list
{
    ViewModel *viewModel = [ViewModel new];
    
    viewModel.leftViewModelArray = [NSMutableArray array];
    viewModel.rightViewModelArray = [NSMutableArray array];
    
    for (MainModel *mainModel in list.list) {
        LeftViewCellModel *leftCellModel = [[LeftViewCellModel alloc] initWithTitle:mainModel.mainTitle];
        [viewModel.leftViewModelArray addObject:leftCellModel];
        
        for (ItemModel *item in mainModel.subItems) {
            
            RightViewCellHeaderModel *headerModel = [[RightViewCellHeaderModel alloc] initWithItem:item];
            
            NSMutableArray *elements = [NSMutableArray array];
            for (Element *element in item.elements) {
                RightViewCellModel *rightElementModel = [[RightViewCellModel alloc] initWithElement:element];
                [elements addObject:rightElementModel];
            }
            
            NSDictionary *dic = @{@"header":headerModel,
                                  @"elements":elements};
            
            [viewModel.rightViewModelArray addObject:dic];
        }
    }
    
    return viewModel;
}

@end
