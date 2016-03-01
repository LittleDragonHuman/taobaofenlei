//
//  LeftViewCell.m
//  duojiFenLei
//
//  Created by 冯莉娅 on 16/3/1.
//  Copyright © 2016年 fly. All rights reserved.
//

#import "LeftViewCell.h"

@interface LeftViewCell()

@property (nonatomic, strong) UILabel *label;

@end

@implementation LeftViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.label = [UILabel new];
        self.label.font = [UIFont systemFontOfSize:14.0f];
        self.label.textAlignment = NSTextAlignmentCenter;
        [self.contentView addSubview:self.label];
    }
    return self;
}

- (void)bindLeftViewCellModel:(LeftViewCellModel *)model
{
    self.label.text = model.title;
    [self setNeedsLayout];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    self.label.frame = CGRectMake(0, 0, self.contentView.frame.size.width, self.contentView.frame.size
                                  .height);
}

@end
