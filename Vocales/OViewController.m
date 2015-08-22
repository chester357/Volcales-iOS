//
//  OViewController.m
//  Vocales
//
//  Created by MBP on 8/9/12.
//  Copyright (c) 2012 AEIOU Inc. All rights reserved.
//

#import "OViewController.h"

@interface OViewController ()
@property (nonatomic, strong) AVAudioPlayer *playerWomanO;
@property (nonatomic, strong) AVAudioPlayer *playerChildO;
@property (nonatomic, strong) AVAudioPlayer *playerManO;
@property (nonatomic, weak) UISwipeGestureRecognizer *rightSwipe;



@end

@implementation OViewController
@synthesize womanButtanO;
@synthesize childButtonO;
@synthesize manButtonO;
@synthesize oysterButton;
@synthesize playerManO;
@synthesize playerChildO;
@synthesize playerWomanO;
@synthesize rightSwipe;


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
   
	// Do any additional setup after loading the view.
    
    //Set up woman sound
    NSURL *fileURL1 = [[NSURL alloc] initFileURLWithPath:[[NSBundle mainBundle] pathForResource: @"oWomanVoice" ofType: @"mp3"]];
    self.playerWomanO = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL1 error:nil];
    if (self.playerWomanO) 
    { 
        playerWomanO
        .numberOfLoops = 0;
    }
    
    //set up child sound
    NSURL *fileURL2 = [[NSURL alloc] initFileURLWithPath:[[NSBundle mainBundle] pathForResource: @"oBabySound" ofType: @"mp3"]];
    self.playerChildO = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL2 error:nil];
    if (self.playerChildO) 
    { 
        playerChildO.numberOfLoops = 0;
    }
    
    //set up man sound
    NSURL *fileURL3 = [[NSURL alloc] initFileURLWithPath:[[NSBundle mainBundle] pathForResource: @"oManVoice" ofType: @"mp3"]];
    self.playerManO = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL3 error:nil];
    if (self.playerManO) 
    { 
        playerManO.numberOfLoops = 0;
    }
    
    //perfome animations of people flying in
    [UIView animateWithDuration: 1.0 animations:^{
        self.womanButtanO.frame = CGRectMake(28, 376, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
    [UIView animateWithDuration: 1.0 animations:^{
        self.childButtonO.frame = CGRectMake(124, 376, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
    [UIView animateWithDuration: 1.0 animations:^{
        self.manButtonO.frame = CGRectMake(227, 376, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
    [UIView animateWithDuration: 1.0 animations:^{
        self.oysterButton.frame = CGRectMake(227, 20, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
   
}

- (void)viewDidUnload
{
    [self setWomanButtanO:nil];
    [self setChildButtonO:nil];
    [self setManButtonO:nil];
    [self setOysterButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    
    }

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)PlayWomanO:(UIButton *)sender {
    [playerWomanO play];
}

- (IBAction)playChildO:(UIButton *)sender {
    [playerChildO play];
}

- (IBAction)playManO:(UIButton *)sender {
    [playerManO play];
}



@end
