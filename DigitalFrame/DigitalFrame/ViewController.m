//
//  ViewController.m
//  DigitalFrame
//
//  Created by baekjihun on 2018. 3. 28..
//  Copyright © 2018 baekjihun. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

@synthesize imageView;
@synthesize button;
@synthesize label;
@synthesize slider;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSArray<UIImage *> *imgs = @[
            [UIImage imageNamed:@"1.jpg"],
            [UIImage imageNamed:@"2.jpg"],
            [UIImage imageNamed:@"3.jpg"],
            [UIImage imageNamed:@"4.jpg"],
            [UIImage imageNamed:@"5.jpg"],
            [UIImage imageNamed:@"6.jpg"],
            [UIImage imageNamed:@"7.jpg"],
            [UIImage imageNamed:@"8.jpg"],
            [UIImage imageNamed:@"9.jpg"],
            [UIImage imageNamed:@"10.jpg"],
            [UIImage imageNamed:@"11.jpg"],
            [UIImage imageNamed:@"12.jpg"],
            [UIImage imageNamed:@"13.jpg"],
            [UIImage imageNamed:@"14.jpg"],
            [UIImage imageNamed:@"15.jpg"],
    ];
    imageView.animationImages = imgs;
    imageView.animationDuration = 15.0;
    [imageView startAnimating];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)toggleAction:(id)sender {

}


@end
