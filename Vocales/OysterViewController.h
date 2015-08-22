//
//  OysterViewController.h
//  Vocales
//
//  Created by MBP on 8/9/12.
//  Copyright (c) 2012 AEIOU Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface OysterViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *womanButtonOyster;
@property (weak, nonatomic) IBOutlet UIButton *childButtonOyster;
@property (weak, nonatomic) IBOutlet UIButton *manButtonOyster;
@property (weak, nonatomic) IBOutlet UIButton *oButton;

- (IBAction)playWomanOyster:(UIButton *)sender;
- (IBAction)playChildOyster:(UIButton *)sender;
- (IBAction)manButtonOyster:(UIButton *)sender;


@end
