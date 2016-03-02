//
//  RightViewCellModel.m
//  duojiFenLei
//
//  Created by fly on 16/3/1.
//  Copyright © 2016年 fly. All rights reserved.
//

#import "RightViewCellModel.h"

@implementation RightViewCellHeaderModel

- (instancetype)initWithItem:(ItemModel *)item
{
    self = [super init];
    if (self) {
        self.title = item.itemTitle;
    }
    return self;
}

@end

@implementation RightViewCellModel

- (instancetype)initWithElement:(Element *)element
{
    self = [super init];
    if (self) {
        self.title = element.elementTitle;
        self.bgColor = [UIColor colorWithHue:arc4random() % 256 / 256.0
                                  saturation:(arc4random() % 128 / 256.0 + 0.5)
                                  brightness:(arc4random() % 128 / 256.0 + 0.5)
                                       alpha:1.0f];
    }
    return self;
}
@end
