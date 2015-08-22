//
//  ViewController.m
//  Vocales
//
//  Created by James Parks on 8/7/12.
//  Copyright (c) 2012 AEIOU Inc. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()



@end

@implementation ViewController
@synthesize aButton;



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{

 
    [self setAButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}



    
   
@end
