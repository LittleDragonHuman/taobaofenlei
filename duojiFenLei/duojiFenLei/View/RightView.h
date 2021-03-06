//
//  RightView.h
//  duojiFenLei
//
//  Created by fly on 16/3/1.
//  Copyright © 2016年 fly. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewModel.h"

@interface RightView : UIView

- (instancetype)initWithFrame:(CGRect)frame andViewModel:(ViewModel *)viewModel;

- (void)scrollViewToSection:(NSInteger)section row:(NSInteger)row;

@end
