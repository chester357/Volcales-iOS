//
//  UViewController.m
//  Vocales
//
//  Created by MBP on 8/9/12.
//  Copyright (c) 2012 AEIOU Inc. All rights reserved.
//

#import "UViewController.h"

@interface UViewController ()

@property (nonatomic, strong) AVAudioPlayer *playerWomanU;
@property (nonatomic, strong) AVAudioPlayer *playerChildU;
@property (nonatomic, strong) AVAudioPlayer *playerManU;


@end

@implementation UViewController
@synthesize womanButtonU;
@synthesize childButtonU;
@synthesize manButtonU;
@synthesize unicornButton;
@synthesize playerManU;
@synthesize playerChildU;
@synthesize playerWomanU;

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
    NSURL *fileURL1 = [[NSURL alloc] initFileURLWithPath:[[NSBundle mainBundle] pathForResource: @"uWomanVoice" ofType: @"mp3"]];
    self.playerWomanU = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL1 error:nil];
    if (self.playerWomanU) 
    { 
        playerWomanU.numberOfLoops = 0;
    }
    
    //set up child sound
    NSURL *fileURL2 = [[NSURL alloc] initFileURLWithPath:[[NSBundle mainBundle] pathForResource: @"uBabyVoice" ofType: @"mp3"]];
    self.playerChildU = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL2 error:nil];
    if (self.playerChildU) 
    { 
        playerChildU.numberOfLoops = 0;
    }
    
    //set up man sound
    NSURL *fileURL3 = [[NSURL alloc] initFileURLWithPath:[[NSBundle mainBundle] pathForResource: @"uManVoice" ofType: @"mp3"]];
    self.playerManU = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL3 error:nil];
    if (self.playerManU) 
    { 
        playerManU.numberOfLoops = 0;
    }
    
    //perfome animations of people flying in
    [UIView animateWithDuration: 1.0 animations:^{
        self.womanButtonU.frame = CGRectMake(28, 376, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
    [UIView animateWithDuration: 1.0 animations:^{
        self.childButtonU.frame = CGRectMake(124, 376, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
    [UIView animateWithDuration: 1.0 animations:^{
        self.manButtonU.frame = CGRectMake(227, 376, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
    [UIView animateWithDuration: 1.0 animations:^{
        self.unicornButton.frame = CGRectMake(227, 20, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
}

- (void)viewDidUnload
{
    [self setWomanButtonU:nil];
    [self setChildButtonU:nil];
    [self setManButtonU:nil];
    [self setUnicornButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)playWomanU:(UIButton *)sender {
    [playerWomanU play];
    
}

- (IBAction)playChildU:(UIButton *)sender {
    [playerChildU play];
}

- (IBAction)playManU:(UIButton *)sender {
    [playerManU play];
}
@end
