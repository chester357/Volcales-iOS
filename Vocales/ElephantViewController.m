//
//  ElephantViewController.m
//  Vocales
//
//  Created by MBP on 8/9/12.
//  Copyright (c) 2012 AEIOU Inc. All rights reserved.
//

#import "ElephantViewController.h"

@interface ElephantViewController ()

@property (nonatomic, strong) AVAudioPlayer *playerWomanElephant;
@property (nonatomic, strong) AVAudioPlayer *playerChildElephant;
@property (nonatomic, strong) AVAudioPlayer *playerManElephant;



@end

@implementation ElephantViewController
@synthesize womanButtonElephant;
@synthesize childButtonElephant;
@synthesize manButtonElephant;
@synthesize eButton;
@synthesize playerManElephant;
@synthesize playerChildElephant;
@synthesize playerWomanElephant;

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
    NSURL *fileURL1 = [[NSURL alloc] initFileURLWithPath:[[NSBundle mainBundle] pathForResource: @"elefantewoman" ofType: @"mp3"]];
    self.playerWomanElephant = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL1 error:nil];
    if (self.playerWomanElephant) 
    { 
        playerWomanElephant.numberOfLoops = 0;
    }
    
    //set up child sound
    NSURL *fileURL2 = [[NSURL alloc] initFileURLWithPath:[[NSBundle mainBundle] pathForResource: @"elefantebaby" ofType: @"mp3"]];
    self.playerChildElephant = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL2 error:nil];
    if (self.playerChildElephant) 
    { 
        playerChildElephant.numberOfLoops = 0;
    }
    
    //set up man sound
    NSURL *fileURL3 = [[NSURL alloc] initFileURLWithPath:[[NSBundle mainBundle] pathForResource: @"elefanteman" ofType: @"mp3"]];
    self.playerManElephant = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL3 error:nil];
    if (self.playerManElephant) 
    { 
        playerManElephant.numberOfLoops = 0;
    }
    
    //perfome animations of people flying in
    [UIView animateWithDuration: 1.0 animations:^{
        self.womanButtonElephant.frame = CGRectMake(28, 376, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
    [UIView animateWithDuration: 1.0 animations:^{
        self.childButtonElephant.frame = CGRectMake(124, 376, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
    [UIView animateWithDuration: 1.0 animations:^{
        self.manButtonElephant.frame = CGRectMake(227, 376, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
    [UIView animateWithDuration: 1.0 animations:^{
        self.eButton.frame = CGRectMake(227, 20, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
}

- (void)viewDidUnload
{
    [self setWomanButtonElephant:nil];
    [self setChildButtonElephant:nil];
    [self setManButtonElephant:nil];
    [self setEButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)playWomanElephant:(UIButton *)sender {
    [playerWomanElephant play];
}

- (IBAction)playChildElephant:(UIButton *)sender {
    [playerChildElephant play];
}

- (IBAction)playManElephant:(UIButton *)sender {
    [playerManElephant play];
}
@end
