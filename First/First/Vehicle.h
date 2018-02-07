//
// Created by 백지훈 on 2018. 2. 2..
// Copyright (c) 2018 백지훈. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Vehicle : NSObject
@property int wheels;
@property int seats;

- (void)setFields:(int)wheal Seats:(int)s;

- (void)print;

- (void)drawCircleX:(int)x Y:(int)y R:(int)r;

- (void)drawCircleXYR:(int)x :(int)y :(int)r;
@end