//
//  AirPlaneViewController.m
//  Vocales
//
//  Created by MBP on 8/9/12.
//  Copyright (c) 2012 AEIOU Inc. All rights reserved.
//

#import "AirPlaneViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface AirPlaneViewController ()

@property (nonatomic, strong) AVAudioPlayer *playerWomanAirPlane;
@property (nonatomic, strong) AVAudioPlayer *playerChildAirPlane;
@property (nonatomic, strong) AVAudioPlayer *playerManAirPlane;

@end

@implementation AirPlaneViewController
@synthesize womanButtonAP;
@synthesize childButtonAP;
@synthesize manButtonAP;
@synthesize aButtonAP;

@synthesize playerManAirPlane;
@synthesize playerChildAirPlane;
@synthesize playerWomanAirPlane;

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
	// Do any additional setup after loading the view.
    
    
    //Set up woman sound
    NSURL *fileURL1 = [[NSURL alloc] initFileURLWithPath:[[NSBundle mainBundle] pathForResource: @"avionwoman" ofType: @"mp3"]];
    self.playerWomanAirPlane = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL1 error:nil];
    if (self.playerWomanAirPlane) 
    { 
        playerWomanAirPlane.numberOfLoops = 0;
    }
    
    //set up child sound
    NSURL *fileURL2 = [[NSURL alloc] initFileURLWithPath:[[NSBundle mainBundle] pathForResource: @"avionbaby" ofType: @"mp3"]];
    self.playerChildAirPlane = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL2 error:nil];
    if (self.playerChildAirPlane) 
    { 
        playerChildAirPlane.numberOfLoops = 0;
    }
    
    //set up man sound
    NSURL *fileURL3 = [[NSURL alloc] initFileURLWithPath:[[NSBundle mainBundle] pathForResource: @"avionman" ofType: @"mp3"]];
    self.playerManAirPlane = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL3 error:nil];
    if (self.playerManAirPlane) 
    { 
        playerManAirPlane.numberOfLoops = 0;
    }
    
    //perfome animations of people flying in
    [UIView animateWithDuration: 1.0 animations:^{
        self.womanButtonAP.frame = CGRectMake(28, 376, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
    [UIView animateWithDuration: 1.0 animations:^{
        self.childButtonAP.frame = CGRectMake(124, 376, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
    [UIView animateWithDuration: 1.0 animations:^{
        self.manButtonAP.frame = CGRectMake(227, 376, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
    [UIView animateWithDuration: 1.0 animations:^{
        self.aButtonAP.frame = CGRectMake(227, 20, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    


    
    
}

- (void)viewDidUnload
{
    [self setWomanButtonAP:nil];
    [self setChildButtonAP:nil];
    [self setManButtonAP:nil];
    [self setAButtonAP:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}



- (IBAction)playWomanAP:(UIButton *)sender {
    [playerWomanAirPlane play];
}

- (IBAction)playChildAP:(UIButton *)sender {
    [playerChildAirPlane play];
}

- (IBAction)playManAP:(UIButton *)sender {
    [playerManAirPlane play]; 
}
@end
