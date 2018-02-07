//
// Created by 백지훈 on 2018. 2. 2..
// Copyright (c) 2018 백지훈. All rights reserved.
//

#import "Vehicle.h"


@implementation Vehicle
- (void)setFields:(int)wheal Seats:(int)s {
    self.seats = s;
    self.wheels = wheal;
}

- (void)print {
    NSLog(@"wheels : %i, seats : %i", self.wheels, self.seats);
}

- (void)drawCircleX:(int)x Y:(int)y R:(int)r {

}

- (void)drawCircleXYR:(int)x :(int)y :(int)r {

}


@end
