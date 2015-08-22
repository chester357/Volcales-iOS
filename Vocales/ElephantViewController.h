//
//  ElephantViewController.h
//  Vocales
//
//  Created by MBP on 8/9/12.
//  Copyright (c) 2012 AEIOU Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ElephantViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *womanButtonElephant;
@property (weak, nonatomic) IBOutlet UIButton *childButtonElephant;
@property (weak, nonatomic) IBOutlet UIButton *manButtonElephant;
@property (weak, nonatomic) IBOutlet UIButton *eButton;

- (IBAction)playWomanElephant:(UIButton *)sender;
- (IBAction)playChildElephant:(UIButton *)sender;
- (IBAction)playManElephant:(UIButton *)sender;



@end
