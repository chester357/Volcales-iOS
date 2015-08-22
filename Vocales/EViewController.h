//
//  EViewController.h
//  Vocales
//
//  Created by MBP on 8/9/12.
//  Copyright (c) 2012 AEIOU Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface EViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *womanButtonE;
@property (weak, nonatomic) IBOutlet UIButton *childButtonE;
@property (weak, nonatomic) IBOutlet UIButton *manButtonE;
@property (weak, nonatomic) IBOutlet UIButton *elephantButton;

- (IBAction)playWomanE:(UIButton *)sender;
- (IBAction)playChildE:(UIButton *)sender;
- (IBAction)playManButtonE:(UIButton *)sender;


@end
