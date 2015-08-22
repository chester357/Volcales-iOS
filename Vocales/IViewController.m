//
//  IViewController.m
//  Vocales
//
//  Created by MBP on 8/9/12.
//  Copyright (c) 2012 AEIOU Inc. All rights reserved.
//

#import "IViewController.h"

@interface IViewController ()
@property (nonatomic, strong) AVAudioPlayer *playerWomanI;
@property (nonatomic, strong) AVAudioPlayer *playerChildI;
@property (nonatomic, strong) AVAudioPlayer *playerManI;


@end

@implementation IViewController
@synthesize womanButtonI;
@synthesize childButtonI;
@synthesize manButtonI;
@synthesize iguanaButton;
@synthesize playerManI;
@synthesize playerChildI;
@synthesize playerWomanI;

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
    NSURL *fileURL1 = [[NSURL alloc] initFileURLWithPath:[[NSBundle mainBundle] pathForResource: @"iWomanVoice" ofType: @"mp3"]];
    self.playerWomanI = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL1 error:nil];
    if (self.playerWomanI) 
    { 
        playerWomanI.numberOfLoops = 0;
    }
    
    //set up child sound
    NSURL *fileURL2 = [[NSURL alloc] initFileURLWithPath:[[NSBundle mainBundle] pathForResource: @"iBabyVoice" ofType: @"mp3"]];
    self.playerChildI
    = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL2 error:nil];
    if (self.playerChildI) 
    { 
        playerChildI.numberOfLoops = 0;
    }
    
    //set up man sound
    NSURL *fileURL3 = [[NSURL alloc] initFileURLWithPath:[[NSBundle mainBundle] pathForResource: @"iManVoice" ofType: @"mp3"]];
    self.playerManI = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL3 error:nil];
    if (self.playerManI) 
    { 
        playerManI.numberOfLoops = 0;
    }
    
    //perfome animations of people flying in
    [UIView animateWithDuration: 1.0 animations:^{
        self.womanButtonI.frame = CGRectMake(28, 376, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
    [UIView animateWithDuration: 1.0 animations:^{
        self.childButtonI.frame = CGRectMake(124, 376, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
    [UIView animateWithDuration: 1.0 animations:^{
        self.manButtonI.frame = CGRectMake(227, 376, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
    [UIView animateWithDuration: 1.0 animations:^{
        self.iguanaButton.frame = CGRectMake(227, 20, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
}

- (void)viewDidUnload
{
    [self setWomanButtonI:nil];
    [self setChildButtonI:nil];
    [self setManButtonI:nil];
    [self setIguanaButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)playWomanI:(UIButton *)sender {
    [playerWomanI play];
}

- (IBAction)childButtonI:(UIButton *)sender {
    [playerChildI play];
}

- (IBAction)manButtonI:(id)sender {
    [playerManI play];
}
@end
