//
//  UnicornViewController.m
//  Vocales
//
//  Created by MBP on 8/9/12.
//  Copyright (c) 2012 AEIOU Inc. All rights reserved.
//

#import "UnicornViewController.h"

@interface UnicornViewController ()

@property (nonatomic, strong) AVAudioPlayer *playerWomanUnicorn;
@property (nonatomic, strong) AVAudioPlayer *playerChildUnicorn;
@property (nonatomic, strong) AVAudioPlayer *playerManUnicorn;



@end

@implementation UnicornViewController

@synthesize buttonChildUnicorn;
@synthesize buttonWomanUnicorn;
@synthesize buttonManUnicorn;
@synthesize uButton;
@synthesize playerManUnicorn;
@synthesize playerChildUnicorn;
@synthesize playerWomanUnicorn;

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
    NSURL *fileURL1 = [[NSURL alloc] initFileURLWithPath:[[NSBundle mainBundle] pathForResource: @"unicorniowoman" ofType: @"mp3"]];
    self.playerWomanUnicorn = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL1 error:nil];
    if (self.playerWomanUnicorn) 
    { 
        playerWomanUnicorn.numberOfLoops = 0;
    }
    
    //set up child sound
    NSURL *fileURL2 = [[NSURL alloc] initFileURLWithPath:[[NSBundle mainBundle] pathForResource: @"unicorniobaby" ofType: @"mp3"]];
    self.playerChildUnicorn = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL2 error:nil];
    if (self.playerChildUnicorn) 
    { 
        playerChildUnicorn.numberOfLoops = 0;
    }
    
    //set up man sound
    NSURL *fileURL3 = [[NSURL alloc] initFileURLWithPath:[[NSBundle mainBundle] pathForResource: @"unicornioman" ofType: @"mp3"]];
    self.playerManUnicorn = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL3 error:nil];
    if (self.playerManUnicorn) 
    { 
        playerManUnicorn.numberOfLoops = 0;
    }
    
    //perfome animations of people flying in
    [UIView animateWithDuration: 1.0 animations:^{
        self.buttonWomanUnicorn.frame = CGRectMake(28, 376, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
    [UIView animateWithDuration: 1.0 animations:^{
        self.buttonChildUnicorn.frame = CGRectMake(124, 376, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
    [UIView animateWithDuration: 1.0 animations:^{
        self.buttonManUnicorn.frame = CGRectMake(227, 376, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
    [UIView animateWithDuration: 1.0 animations:^{
        self.uButton.frame = CGRectMake(227, 20, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
}

- (void)viewDidUnload
{
    [self setButtonWomanUnicorn:nil];
    [self setButtonChildUnicorn:nil];
    [self setButtonManUnicorn:nil];
    [self setUButton:nil];
    
   
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)playWomanUnicorn:(UIButton *)sender {
    [playerWomanUnicorn play];
}

- (IBAction)playChildUnicorn:(UIButton *)sender {
    [playerChildUnicorn play];
}

- (IBAction)playManUnicorn:(UIButton *)sender {
    [playerManUnicorn play];
}
@end
