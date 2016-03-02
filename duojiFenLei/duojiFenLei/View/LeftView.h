//
//  LeftView.h
//  duojiFenLei
//
//  Created by fly on 16/3/1.
//  Copyright © 2016年 fly. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewModel.h"

@protocol LeftViewDelegate <NSObject>

- (void)selectedSection:(NSInteger)section scrollRow:(NSInteger)row;

@end

@interface LeftView : UIView

@property (nonatomic, weak) id<LeftViewDelegate> delegate;

- (instancetype)initWithFrame:(CGRect)frame andViewModel:(ViewModel *)viewModel;

@end
