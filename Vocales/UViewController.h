//
//  UViewController.h
//  Vocales
//
//  Created by MBP on 8/9/12.
//  Copyright (c) 2012 AEIOU Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface UViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *womanButtonU;
@property (weak, nonatomic) IBOutlet UIButton *childButtonU;
@property (weak, nonatomic) IBOutlet UIButton *manButtonU;
@property (weak, nonatomic) IBOutlet UIButton *unicornButton;

- (IBAction)playWomanU:(UIButton *)sender;
- (IBAction)playChildU:(UIButton *)sender;
- (IBAction)playManU:(UIButton *)sender;


@end
