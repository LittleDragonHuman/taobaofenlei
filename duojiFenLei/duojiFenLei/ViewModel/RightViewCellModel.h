//
//  RightViewCellModel.h
//  duojiFenLei
//
//  Created by 冯莉娅 on 16/3/1.
//  Copyright © 2016年 fly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Models.h"

@interface RightViewCellHeaderModel : NSObject

@property (nonatomic, copy) NSString *title;

- (instancetype)initWithItem:(ItemModel *)item;

@end

@interface RightViewCellModel : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, strong) UIColor *bgColor;

- (instancetype)initWithElement:(Element *)element;

@end
