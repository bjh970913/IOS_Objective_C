//
//  main.m
//  NSArrayTest
//
//  Created by 백지훈 on 2018. 2. 8..
//  Copyright © 2018 bjh. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        NSArray *month = @[
                @"Jan", @"Feb", @"Mar", @"Apr",
                @"May", @"Jun", @"Jul", @"Aug"
        ];
        NSMutableArray *m_month = [[NSMutableArray alloc] initWithArray:month];
        [m_month addObjectsFromArray:@[
                @"Set", @"Oct", @"Nov", @"Dec"
        ]];

        for(NSString *mon in month) {
            NSLog(@"NSArray %@", mon);
        }

        for(NSString *mon in m_month) {
            NSLog(@"NSMArray %@", mon);
        }
    }
    return 0;

}
