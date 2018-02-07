//
//  main.m
//  NSStringTest
//
//  Created by 백지훈 on 2018. 2. 2..
//  Copyright © 2018 bjh. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        NSString *str = @"This is NSString";
        NSMutableString *mstr = [NSMutableString stringWithString:str];

        NSString *result = [str substringFromIndex:6];
//        [mstr appendString:@" TEST"];
        [mstr appendFormat:@"%@", @"asd"];
        [mstr insertString:@"Mutable " atIndex:8];
        NSLog(@"str: %@", mstr);
    }
    return 0;

}
