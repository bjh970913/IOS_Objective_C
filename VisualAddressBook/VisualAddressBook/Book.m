//
// Created by 백지훈 on 2018. 2. 8..
// Copyright (c) 2018 bjh. All rights reserved.
//

#import "Book.h"


@implementation Book {

}
- (instancetype)initWithName:(NSString *)name genre:(NSString *)genre author:(NSString *)author {
    self = [super init];
    if (self) {
        self.name = name;
        self.genre = genre;
        self.author = author;
    }

    return self;
}

- (NSString *)bookPrint {
    return [[NSString alloc]
            initWithFormat:
                    @"\nName: %@\nGenre: %@\nAuthor: %@\n----------------",
                    self.name, self.genre, self.author
    ];
}

@end