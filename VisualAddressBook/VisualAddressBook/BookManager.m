//
// Created by 백지훈 on 2018. 2. 8..
// Copyright (c) 2018 bjh. All rights reserved.
//

#import "BookManager.h"
#import "Book.h"


@implementation BookManager {

}
- (instancetype)init {
    self = [super init];
    if (self) {
        booklist = [NSMutableArray new];
    }

    return self;
}

- (void)addBook:(Book *)bookObject {
    [booklist addObject:bookObject];
}

- (NSString *)showAllBook {
    NSMutableString *temp = [NSMutableString new];
    for (Book *book in booklist) {
        [temp appendString:[book bookPrint]];
    }
    return temp;
}

- (NSUInteger)countBooks {
    return [booklist count];
}

- (Book *)findBook:(NSString *)name {
    for (Book *book in booklist) {
        if ([book.name isEqualToString:name]) {
            return book;
        }
    }
    return nil;
}

- (NSString *)deleteBook:(NSString *)name {
    Book *target = [self findBook:name];
    if (target != nil) {
        [booklist removeObject:target];
        return target.name;
    } else {
        return @"";
    }
}


@end