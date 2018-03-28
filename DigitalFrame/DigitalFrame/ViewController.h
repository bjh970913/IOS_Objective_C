//
//  ViewController.h
//  DigitalFrame
//
//  Created by baekjihun on 2018. 3. 28..
//  Copyright © 2018 baekjihun. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewController : UIViewController {

}

@property(nonatomic, strong) IBOutlet UIImageView *imageView;
@property(nonatomic, strong) IBOutlet UIButton *button;
@property(nonatomic, strong) IBOutlet UILabel *label;
@property(nonatomic, strong) IBOutlet UISlider *slider;

- (IBAction) toggleAction:(id)sender;

@end
