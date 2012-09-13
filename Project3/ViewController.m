//
//  ViewController.m
//  Project3
//
//  Created by Russell Carlin on 9/12/12.
//  Copyright (c) 2012 Russell Carlin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    int addResult = [self Add:5 second:9];
    NSLog(@"Result: %d", addResult);
};

- (int)Add:(NSInteger)first second:(NSInteger)second
{
    return first + second;
};

- (BOOL)Compare:(NSInteger)first second:(NSInteger)second
{
    
}
- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
