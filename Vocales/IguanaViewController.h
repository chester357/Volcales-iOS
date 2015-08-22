//
//  IguanaViewController.h
//  Vocales
//
//  Created by MBP on 8/9/12.
//  Copyright (c) 2012 AEIOU Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface IguanaViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *womanButtonIguana;
@property (weak, nonatomic) IBOutlet UIButton *childButtonIguana;
@property (weak, nonatomic) IBOutlet UIButton *manButtonIguana;
@property (weak, nonatomic) IBOutlet UIButton *iButton;

- (IBAction)playWomanIguana:(UIButton *)sender;
- (IBAction)playChildIguana:(UIButton *)sender;
- (IBAction)playManButton:(UIButton *)sender;



@end
