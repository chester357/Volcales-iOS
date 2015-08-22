//
//  UnicornViewController.h
//  Vocales
//
//  Created by MBP on 8/9/12.
//  Copyright (c) 2012 AEIOU Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface UnicornViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *buttonWomanUnicorn;
@property (weak, nonatomic) IBOutlet UIButton *buttonChildUnicorn;
@property (weak, nonatomic) IBOutlet UIButton *buttonManUnicorn;
@property (weak, nonatomic) IBOutlet UIButton *uButton;


- (IBAction)playWomanUnicorn:(UIButton *)sender;
- (IBAction)playChildUnicorn:(UIButton *)sender;
- (IBAction)playManUnicorn:(UIButton *)sender;





@end
