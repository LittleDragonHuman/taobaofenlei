//
//  Manager.m
//  duojiFenLei
//
//  Created by fly on 16/3/1.
//  Copyright © 2016年 fly. All rights reserved.
//

#import "Manager.h"

@implementation Manager

+ (void)fetchListDatas:(void(^)(ListModel *, NSError *))block
{
    ListModel *listModel = [ListModel new];
    listModel.list = [NSMutableArray array];
    for (NSInteger i = 0; i < 20; i++) {
        MainModel *mainModel = [MainModel new];
        mainModel.mainTitle = [NSString stringWithFormat:@"左侧%@",@(i)];
        mainModel.subItems = [NSMutableArray array];
        
        for (NSInteger j = 0; j < 20; j++) {
            ItemModel *item = [ItemModel new];
            item.itemTitle = [NSString stringWithFormat:@"右侧%@-%@",@(i),@(j)];
            item.elements = [NSMutableArray array];
            
            for (NSInteger z = 0; z < 10; z++) {
                Element *element = [Element new];
                element.elementTitle = [NSString stringWithFormat:@"%@-%@-%@",@(i),@(j),@(z)];
                [item.elements addObject:element];
            }
            
            [mainModel.subItems addObject:item];
        }
        [listModel.list addObject:mainModel];
    }
    block(listModel,nil);
}


@end
