//
//  Manager.h
//  duojiFenLei
//
//  Created by fly on 16/3/1.
//  Copyright © 2016年 fly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Models.h"

@interface Manager : NSObject

+ (void)fetchListDatas:(void(^)(ListModel *, NSError *))block;

@end
