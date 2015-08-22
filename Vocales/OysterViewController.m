//
//  OysterViewController.m
//  Vocales
//
//  Created by MBP on 8/9/12.
//  Copyright (c) 2012 AEIOU Inc. All rights reserved.
//

#import "OysterViewController.h"

@interface OysterViewController ()

@property (nonatomic, strong) AVAudioPlayer *playerWomanOyster;
@property (nonatomic, strong) AVAudioPlayer *playerChildOyster;
@property (nonatomic, strong) AVAudioPlayer *playerManOyster;

@end

@implementation OysterViewController
@synthesize womanButtonOyster;
@synthesize childButtonOyster;
@synthesize manButtonOyster;
@synthesize oButton;
@synthesize playerManOyster;
@synthesize playerChildOyster;
@synthesize playerWomanOyster;

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
    NSURL *fileURL1 = [[NSURL alloc] initFileURLWithPath:[[NSBundle mainBundle] pathForResource: @"osowoman" ofType: @"mp3"]];
    self.playerWomanOyster = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL1 error:nil];
    if (self.playerWomanOyster) 
    { 
        playerWomanOyster.numberOfLoops = 0;
    }
    
    //set up child sound
    NSURL *fileURL2 = [[NSURL alloc] initFileURLWithPath:[[NSBundle mainBundle] pathForResource: @"osobaby" ofType: @"mp3"]];
    self.playerChildOyster = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL2 error:nil];
    if (self.playerChildOyster) 
    { 
        playerChildOyster.numberOfLoops = 0;
    }
    
    //set up man sound
    NSURL *fileURL3 = [[NSURL alloc] initFileURLWithPath:[[NSBundle mainBundle] pathForResource: @"osoman" ofType: @"mp3"]];
    self.playerManOyster = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL3 error:nil];
    if (self.playerManOyster) 
    { 
        playerManOyster.numberOfLoops = 0;
    }
    
    //perfome animations of people flying in
    [UIView animateWithDuration: 1.0 animations:^{
        self.womanButtonOyster.frame = CGRectMake(28, 376, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
    [UIView animateWithDuration: 1.0 animations:^{
        self.childButtonOyster.frame = CGRectMake(124, 376, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
    [UIView animateWithDuration: 1.0 animations:^{
        self.manButtonOyster.frame = CGRectMake(227, 376, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
    [UIView animateWithDuration: 1.0 animations:^{
        self.oButton.frame = CGRectMake(227, 20, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
}

- (void)viewDidUnload
{
    [self setWomanButtonOyster:nil];
    [self setChildButtonOyster:nil];
    [self setManButtonOyster:nil];
    [self setOButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)playWomanOyster:(UIButton *)sender {
    [playerWomanOyster play];
}

- (IBAction)playChildOyster:(UIButton *)sender {
    [playerChildOyster play];
}

- (IBAction)manButtonOyster:(UIButton *)sender {
    [playerManOyster play];
}
@end
