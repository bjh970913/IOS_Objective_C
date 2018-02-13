//
//  ViewController.h
//  VisualAddressBook
//
//  Created by 백지훈 on 2018. 2. 13..
//  Copyright © 2018년 백지훈. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BookManager;

@interface ViewController : UIViewController {
    BookManager *manager;
}

@property IBOutlet UITextView *result;
@property IBOutlet UITextField *name;
@property IBOutlet UITextField *genre;
@property IBOutlet UITextField *author;
@property IBOutlet UILabel *totalCount;

-(IBAction) showAllBookAction:(id) sender;
-(IBAction) registerBookAction:(id) sender;
-(IBAction) searchBookAction:(id) sender;
-(IBAction) deleteBookAction:(id) sender;

-(void) syncCount;

@end

