//
//  EViewController.m
//  Vocales
//
//  Created by MBP on 8/9/12.
//  Copyright (c) 2012 AEIOU Inc. All rights reserved.
//

#import "EViewController.h"

@interface EViewController ()
@property (nonatomic, strong) AVAudioPlayer *playerWomanE;
@property (nonatomic, strong) AVAudioPlayer *playerChildE;
@property (nonatomic, strong) AVAudioPlayer *playerManE;



@end

@implementation EViewController
@synthesize womanButtonE;
@synthesize childButtonE;
@synthesize manButtonE;
@synthesize elephantButton;
@synthesize playerManE;
@synthesize playerChildE;
@synthesize playerWomanE;

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
    NSURL *fileURL1 = [[NSURL alloc] initFileURLWithPath:[[NSBundle mainBundle] pathForResource: @"eWomanVoice" ofType: @"mp3"]];
    self.playerWomanE = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL1 error:nil];
    if (self.playerWomanE) 
    { 
        playerWomanE.numberOfLoops = 0;
    }
    
    //set up child sound
    NSURL *fileURL2 = [[NSURL alloc] initFileURLWithPath:[[NSBundle mainBundle] pathForResource: @"eBabyVoice" ofType: @"mp3"]];
    self.playerChildE = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL2 error:nil];
    if (self.playerChildE) 
    { 
        playerChildE.numberOfLoops = 0;
    }
    
    //set up man sound
    NSURL *fileURL3 = [[NSURL alloc] initFileURLWithPath:[[NSBundle mainBundle] pathForResource: @"eManVoice" ofType: @"mp3"]];
    self.playerManE = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL3 error:nil];
    if (self.playerManE) 
    { 
        playerManE.numberOfLoops = 0;
    }
    
    //perfome animations of people flying in
    [UIView animateWithDuration: 1.0 animations:^{
        self.womanButtonE.frame = CGRectMake(28, 376, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
    [UIView animateWithDuration: 1.0 animations:^{
        self.childButtonE.frame = CGRectMake(124, 376, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
    [UIView animateWithDuration: 1.0 animations:^{
        self.manButtonE.frame = CGRectMake(227, 376, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
    [UIView animateWithDuration: 1.0 animations:^{
        self.elephantButton.frame = CGRectMake(227, 20, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
}

- (void)viewDidUnload
{
    [self setWomanButtonE:nil];
    [self setChildButtonE:nil];
    [self setManButtonE:nil];
    [self setElephantButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)playWomanE:(UIButton *)sender {
    [playerWomanE play];
}

- (IBAction)playChildE:(UIButton *)sender {
    [playerChildE play];
}

- (IBAction)playManButtonE:(UIButton *)sender {
    [playerManE play];
}
@end
