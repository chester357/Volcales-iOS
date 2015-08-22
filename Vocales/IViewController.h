//
//  IViewController.h
//  Vocales
//
//  Created by MBP on 8/9/12.
//  Copyright (c) 2012 AEIOU Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface IViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *womanButtonI;
@property (weak, nonatomic) IBOutlet UIButton *childButtonI;
@property (weak, nonatomic) IBOutlet UIButton *manButtonI;
@property (weak, nonatomic) IBOutlet UIButton *iguanaButton;

- (IBAction)playWomanI:(UIButton *)sender;
- (IBAction)childButtonI:(UIButton *)sender;
- (IBAction)manButtonI:(id)sender;



@end
