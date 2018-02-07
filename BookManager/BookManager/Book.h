//
// Created by 백지훈 on 2018. 2. 8..
// Copyright (c) 2018 bjh. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Book : NSObject

@property(nonatomic) NSString *name;
@property(nonatomic) NSString *genre;
@property(nonatomic) NSString *author;

- (instancetype)initWithName:(NSString *)name genre:(NSString *)genre author:(NSString *)author;

- (NSString *)bookPrint;


@end