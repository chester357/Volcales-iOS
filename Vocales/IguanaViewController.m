//
//  IguanaViewController.m
//  Vocales
//
//  Created by MBP on 8/9/12.
//  Copyright (c) 2012 AEIOU Inc. All rights reserved.
//

#import "IguanaViewController.h"

@interface IguanaViewController ()
@property (nonatomic, strong) AVAudioPlayer *playerWomanIguana;
@property (nonatomic, strong) AVAudioPlayer *playerChildIguana;
@property (nonatomic, strong) AVAudioPlayer *playerManIguana;



@end

@implementation IguanaViewController
@synthesize womanButtonIguana;
@synthesize childButtonIguana;
@synthesize manButtonIguana;
@synthesize iButton;
@synthesize playerManIguana;
@synthesize playerChildIguana;
@synthesize playerWomanIguana;

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
    NSURL *fileURL1 = [[NSURL alloc] initFileURLWithPath:[[NSBundle mainBundle] pathForResource: @"iguanawoman" ofType: @"mp3"]];
    self.playerWomanIguana = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL1 error:nil];
    if (self.playerWomanIguana) 
    { 
        playerWomanIguana.numberOfLoops = 0;
    }
    
    //set up child sound
    NSURL *fileURL2 = [[NSURL alloc] initFileURLWithPath:[[NSBundle mainBundle] pathForResource: @"iguanababy" ofType: @"mp3"]];
    self.playerChildIguana = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL2 error:nil];
    if (self.playerChildIguana) 
    { 
        playerChildIguana.numberOfLoops = 0;
    }
    
    //set up man sound
    NSURL *fileURL3 = [[NSURL alloc] initFileURLWithPath:[[NSBundle mainBundle] pathForResource: @"iguanaman" ofType: @"mp3"]];
    self.playerManIguana = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL3 error:nil];
    if (self.playerManIguana) 
    { 
        playerManIguana.numberOfLoops = 0;
    }
    
    //perfome animations of people flying in
    [UIView animateWithDuration: 1.0 animations:^{
        self.womanButtonIguana.frame = CGRectMake(28, 376, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
    [UIView animateWithDuration: 1.0 animations:^{
        self.childButtonIguana.frame = CGRectMake(124, 376, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
    [UIView animateWithDuration: 1.0 animations:^{
        self.manButtonIguana.frame = CGRectMake(227, 376, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
    [UIView animateWithDuration: 1.0 animations:^{
        self.iButton.frame = CGRectMake(227, 20, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
}

- (void)viewDidUnload
{
    [self setWomanButtonIguana:nil];
    [self setChildButtonIguana:nil];
    [self setManButtonIguana:nil];
    [self setIButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)playWomanIguana:(UIButton *)sender {
    [playerWomanIguana play];
}

- (IBAction)playChildIguana:(UIButton *)sender {
    [playerChildIguana play];
}

- (IBAction)playManButton:(UIButton *)sender {
    [playerManIguana play];
}
@end
