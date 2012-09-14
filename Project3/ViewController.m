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

    int first = 5;
    int second = 4;
    NSString *firstString = @"Hello";
    NSString *secondString = @"world!";
    
    NSNumber *addResult = [[NSNumber alloc] initWithInt:[self Add:first secondInt:second]];
    NSString *convertNumber = [[NSString alloc] initWithString:[addResult stringValue]];
    
    BOOL equal = [self Compare:first secondInt:second];
    if (equal == YES){
        NSString *compareYes = [[NSString alloc] initWithFormat:@"%d and %d are equal", first, second];
        [self displayAlertWithString: compareYes];
    } else {
        NSString *compareNo = [[NSString alloc] initWithFormat:@"%d and %d are not equal", first, second];
        [self displayAlertWithString: compareNo];
    }
    
    NSString *appendResult = [self Append:firstString secondStr:secondString];
    
    [self displayAlertWithString:convertNumber];
    [self displayAlertWithString:appendResult];
    
};

- (int)Add:(NSInteger)firstInt secondInt:(NSInteger)secondInt
{
    return firstInt + secondInt;
};

- (BOOL)Compare:(NSInteger)firstInt secondInt:(NSInteger)secondInt
{
    if (firstInt == secondInt){
        return YES;
    } else {
        return NO;
    }
}
//Append function contains a NSMutableString that takes 2 string paramenters and combines them using formating, then returns the string.
- (NSString*)Append:(NSString*)firstStr secondStr:(NSString*)secondStr
{
    NSMutableString *combined = [[NSMutableString alloc] initWithFormat:@"%@ %@", firstStr, secondStr];
    return combined;
}

- (void)displayAlertWithString:(NSString*)alert
{
    UIAlertView *appendView = [[UIAlertView alloc] initWithTitle:@"Results" message:alert delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
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
