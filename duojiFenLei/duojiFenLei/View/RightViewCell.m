//
//  RightViewCell.m
//  duojiFenLei
//
//  Created by fly on 16/3/1.
//  Copyright © 2016年 fly. All rights reserved.
//

#import "RightViewCell.h"

@interface RightViewCell()

@property (nonatomic, strong) UILabel *label;

@end

@implementation RightViewCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.label = [[UILabel alloc] initWithFrame:CGRectMake(0, self.contentView.frame.size.height - 20, self.contentView.frame.size.width, 20)];
        self.label.font = [UIFont systemFontOfSize:14.0f];
        self.label.textAlignment = NSTextAlignmentCenter;
        [self.contentView addSubview:self.label];
    }
    return self;
}

- (void)bindRightViewCellModel:(RightViewCellModel *)model;
{
    self.label.text = model.title;
    self.contentView.backgroundColor = model.bgColor;
}
@end
