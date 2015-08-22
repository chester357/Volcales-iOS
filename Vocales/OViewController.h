//
//  OViewController.h
//  Vocales
//
//  Created by MBP on 8/9/12.
//  Copyright (c) 2012 AEIOU Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>



@interface OViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *womanButtanO;
@property (weak, nonatomic) IBOutlet UIButton *childButtonO;
@property (weak, nonatomic) IBOutlet UIButton *manButtonO;
@property (weak, nonatomic) IBOutlet UIButton *oysterButton;

- (IBAction)PlayWomanO:(UIButton *)sender;
- (IBAction)playChildO:(UIButton *)sender;
- (IBAction)playManO:(UIButton *)sender;




@end
