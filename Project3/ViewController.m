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
    
    NSString* appendResult = [self Append:@"Hello" second:@"world!"];
    [self displayAlertWithString:appendResult];
    
};

- (int)Add:(NSInteger)first second:(NSInteger)second
{
    return first + second;
};

- (BOOL)Compare:(NSInteger)first second:(NSInteger)second
{
    if (first == second){
        return YES;
    } else {
        return NO;
    }
}

- (NSString*)Append:(NSString*)first second:(NSString*)second
{
    NSMutableString *combined = [[NSMutableString alloc] initWithFormat:@"%@ %@", first, second];
    return combined;
}

- (void)displayAlertWithString:(NSString*)alert
{
    UIAlertView *appendView = [[UIAlertView alloc] initWithTitle:@"ALERT" message:alert delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    if (appendView != nil){
        [appendView show];
    };
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
