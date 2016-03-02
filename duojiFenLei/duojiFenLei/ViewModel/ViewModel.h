//
//  ViewModel.h
//  duojiFenLei
//
//  Created by fly on 16/3/1.
//  Copyright © 2016年 fly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Models.h"

@interface ViewModel : NSObject

@property (nonatomic, strong) NSMutableArray *leftViewModelArray;
@property (nonatomic, strong) NSMutableArray *rightViewModelArray;

+ (ViewModel *)generateViewModelByModel:(ListModel *)list;

@end
