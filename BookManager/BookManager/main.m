//
//  main.m
//  BookManager
//
//  Created by 백지훈 on 2018. 2. 8..
//  Copyright © 2018 bjh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"
#import "BookManager.h"

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        // insert code here...
        Book *book1 = [[Book alloc] initWithName:@"햄릿" genre:@"비극" author:@"셰익스피어"];
        Book *book2 = [[Book alloc] initWithName:@"노인과바다" genre:@"소설" author:@"어니스트 헤밍웨이"];
        Book *book3 = [[Book alloc] initWithName:@"죄와 벌" genre:@"사실주의" author:@"톨스토이"];

//        [book1 bookPrint];
//        [book2 bookPrint];
//        [book3 bookPrint];

        BookManager *manager = [BookManager new];
        [manager addBook:book1];
        [manager addBook:book2];
        [manager addBook:book3];

        NSLog(@"%@", [manager showAllBook]);
        NSLog(@"Number of Books: %lu", [manager countBooks]);

        Book *result = [manager findBook:@"햄릿"];

        if (result != nil) {
            NSLog(@"Book: %@", [result bookPrint]);
        } else {
            NSLog(@"Book: No result");
        }

        NSLog(@"Number of Books: %lu", [manager countBooks]);
        NSLog(@"Delete Books: %@", [manager deleteBook:@"햄릿"]);
        NSLog(@"Number of Books: %lu", [manager countBooks]);
    }
    return 0;

}