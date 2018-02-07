//
//  main.m
//  First
//
//  Created by 백지훈 on 2018. 2. 2..
//  Copyright © 2018년 백지훈. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Vehicle.h"

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        Vehicle *hello = [[Vehicle alloc] init];

//        hello.seats = 2;
//        hello.wheels = 4;

        [hello setFields:4 Seats:4];

        if (hello.wheels == 4) {
            [hello print];
        }

        NSLog(@"wheels : %i, seats : %i", hello.wheels, hello.seats);
    }
    return 0;
}
