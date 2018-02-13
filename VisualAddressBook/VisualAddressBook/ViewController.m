//
//  ViewController.m
//  VisualAddressBook
//
//  Created by 백지훈 on 2018. 2. 13..
//  Copyright © 2018년 백지훈. All rights reserved.
//

#import "ViewController.h"
#import "Book.h"
#import "BookManager.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize result;
@synthesize name;
@synthesize author;
@synthesize genre;
@synthesize totalCount;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    Book *book1 = [[Book alloc] initWithName:@"햄릿" genre:@"비극" author:@"셰익스피어"];
    Book *book2 = [[Book alloc] initWithName:@"노인과바다" genre:@"소설" author:@"어니스트 헤밍웨이"];
    Book *book3 = [[Book alloc] initWithName:@"죄와 벌" genre:@"사실주의" author:@"톨스토이"];

    manager = [BookManager new];
    [manager addBook:book1];
    [manager addBook:book2];
    [manager addBook:book3];

    self.syncCount;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showAllBookAction:(id)sender {
    [result setText:[manager showAllBook]];
}

- (IBAction) registerBookAction:(id)sender {
    Book *newBook = [[Book alloc] initWithName:name.text genre:genre.text author:author.text];
    [manager addBook:newBook];
    result.text = newBook.bookPrint;
    [self syncCount];
}

- (IBAction) searchBookAction:(id)sender {
    result.text = [manager findBook:name.text].bookPrint;
}

- (IBAction) deleteBookAction:(id)sender {
    NSMutableString *temp = NSMutableString.alloc.init;
    [temp appendString:[manager deleteBook:name.text]];
    [temp appendString:@" 삭제 완료"];
    result.text = temp;
    [self syncCount];
}

- (void)syncCount {
    NSString *total = [[NSString alloc] initWithFormat:@"%lu", manager.countBooks];
    totalCount.text = total;
}

@end
