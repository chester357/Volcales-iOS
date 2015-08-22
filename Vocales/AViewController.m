//
//  AViewController.m
//  Vocales
//
//  Created by MBP on 8/8/12.
//  Copyright (c) 2012 AEIOU Inc. All rights reserved.
//

#import "AViewController.h"

@interface AViewController ()

@property (nonatomic, strong) AVAudioPlayer *playerWomanA;
@property (nonatomic, strong) AVAudioPlayer *playerChildA;
@property (nonatomic, strong) AVAudioPlayer *playerManA;

@end

@implementation AViewController
@synthesize womanButton;
@synthesize childButton;
@synthesize manButton;
@synthesize airPlaneButton;
@synthesize playerWomanA;
@synthesize playerChildA;
@synthesize playerManA;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //Set up woman sound
    NSURL *fileURL1 = [[NSURL alloc] initFileURLWithPath:[[NSBundle mainBundle] pathForResource: @"aWomanVoice" ofType: @"mp3"]];
    self.playerWomanA = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL1 error:nil];
    if (self.playerWomanA) 
    { 
        playerWomanA.numberOfLoops = 0;
    }
    
    //set up child sound
    NSURL *fileURL2 = [[NSURL alloc] initFileURLWithPath:[[NSBundle mainBundle] pathForResource: @"aBabyVoice" ofType: @"mp3"]];
    self.playerChildA = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL2 error:nil];
    if (self.playerChildA) 
    { 
        playerChildA.numberOfLoops = 0;
    }
    
    //set up man sound
    NSURL *fileURL3 = [[NSURL alloc] initFileURLWithPath:[[NSBundle mainBundle] pathForResource: @"aManVoice" ofType: @"mp3"]];
    self.playerManA = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL3 error:nil];
    if (self.playerManA) 
    { 
        playerManA.numberOfLoops = 0;
    }
    
 
    //perfome animations of people flying in
        [UIView animateWithDuration: 1.0 animations:^{
            self.womanButton.frame = CGRectMake(28, 376, 60, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        
        [UIView animateWithDuration: 1.0 animations:^{
            self.childButton.frame = CGRectMake(124, 376, 60, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        
        [UIView animateWithDuration: 1.0 animations:^{
            self.manButton.frame = CGRectMake(227, 376, 60, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        
        [UIView animateWithDuration: 1.0 animations:^{
            self.airPlaneButton.frame = CGRectMake(227, 20, 60, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
    
    

}

- (void)viewDidUnload
{

    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (IBAction)playWomanA:(UIButton *)sender {
    [playerWomanA play];
}

- (IBAction)playChildA:(UIButton *)sender {
     [playerChildA play];
}

- (IBAction)playManA:(id)sender {
     [playerManA play];
}
@end
