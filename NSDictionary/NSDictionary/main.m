//
//  main.m
//  NSDictionary
//
//  Created by 백지훈 on 2018. 2. 8..
//  Copyright © 2018 bjh. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDictionary<NSString*, NSString *> *dict01 = @{
                @"key01": @"value01",
                @"key02": @"value02"
        };
        NSMutableDictionary *m_dict01 = [[NSMutableDictionary alloc] initWithDictionary:dict01];
        m_dict01[@"key03"] = @"value03";

        for (NSString *key in m_dict01) {
            NSLog(@"%@ %@", key, m_dict01[key]);
        }
    }
    return 0;

}