//
// Created by 백지훈 on 2018. 2. 8..
// Copyright (c) 2018 bjh. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Book;


@interface BookManager : NSObject {
    NSMutableArray<Book *> *booklist;
}
- (void)addBook:(Book *)bookObject;

- (NSString *)showAllBook;

- (NSUInteger)countBooks;

- (Book *)findBook:(NSString *)name;

- (NSString *)deleteBook:(NSString *)name;
@end