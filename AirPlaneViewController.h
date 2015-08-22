//
//  AirPlaneViewController.h
//  Vocales
//
//  Created by MBP on 8/9/12.
//  Copyright (c) 2012 AEIOU Inc. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface AirPlaneViewController : UIViewController

- (IBAction)playWomanAP:(UIButton *)sender;
- (IBAction)playChildAP:(UIButton *)sender;
- (IBAction)playManAP:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UIButton *womanButtonAP;
@property (weak, nonatomic) IBOutlet UIButton *childButtonAP;
@property (weak, nonatomic) IBOutlet UIButton *manButtonAP;
@property (weak, nonatomic) IBOutlet UIButton *aButtonAP;

@end
