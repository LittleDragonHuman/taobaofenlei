//
//  Models.h
//  duojiFenLei
//
//  Created by 冯莉娅 on 16/3/1.
//  Copyright © 2016年 fly. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Element : NSObject
@property (nonatomic, copy) NSString *elementTitle;
@end

@interface ItemModel : NSObject
@property (nonatomic, copy) NSString *itemTitle;
@property (nonatomic, strong) NSMutableArray *elements;
@end

@interface MainModel : NSObject
@property (nonatomic, copy) NSString *mainTitle;
@property (nonatomic, strong) NSMutableArray *subItems;
@end

@interface ListModel : NSObject
@property (nonatomic, strong) NSMutableArray *list;
@end

@interface Models : NSObject
@end
