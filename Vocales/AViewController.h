//
//  AViewController.h
//  Vocales
//
//  Created by MBP on 8/8/12.
//  Copyright (c) 2012 AEIOU Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface AViewController : UIViewController

//- (IBAction)buttonAPresses:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *womanButton;
@property (weak, nonatomic) IBOutlet UIButton *childButton;
@property (weak, nonatomic) IBOutlet UIButton *manButton;
@property (weak, nonatomic) IBOutlet UIButton *airPlaneButton;

- (IBAction)playWomanA:(UIButton *)sender;
- (IBAction)playChildA:(UIButton *)sender;
- (IBAction)playManA:(UIButton *)sender;



@end
