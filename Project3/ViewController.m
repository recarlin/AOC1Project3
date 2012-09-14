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

//First and second are the numbers for our Add and Compare functions. FirstString and SecondString are for the append function
    int first = 5;
    int second = 15;
    NSString *firstString = @"Hello";
    NSString *secondString = @"world!";
//First, we set a BOOL variable to the return of our Compare function. Next, we take that variable and do an if check to see if it is YES or NO. If it is YES, build a NSString with the variables displaying that they are equal and run the DisplayAlertWithString function. If it is NO, do the same thing but display that it is not equal.
    BOOL equal = [self Compare:first secondInt:second];
    if (equal == YES){
        NSString *compareYes = [[NSString alloc] initWithFormat:@"%d and %d are equal", first, second];
        [self displayAlertWithString: compareYes];
    } else {
        NSString *compareNo = [[NSString alloc] initWithFormat:@"%d and %d are not equal", first, second];
        [self displayAlertWithString: compareNo];
    }
//Here we set the NSNumber to the return of the Add call. Then, we convert the NSNumber into a NSString with the stringValue method. Finally, we call the displayAlertWithtring function, with our converted string as the parameter.
    NSNumber *addResult = [[NSNumber alloc] initWithInt:[self Add:first secondInt:second]];
    NSString *convertNumber = [[NSString alloc] initWithFormat:@"The number is %@",[addResult stringValue]];
    [self displayAlertWithString:convertNumber];
//This is defining a NSString to the return of our Append function. Then, we call the displayAlertWithString function, passing our string into the message.
    NSString *appendResult = [self Append:firstString secondStr:secondString];
    [self displayAlertWithString:appendResult];
    
     
};
//Add function simply adds the two int parameters and returns an int.
- (int)Add:(NSInteger)firstInt secondInt:(NSInteger)secondInt
{
    return firstInt + secondInt;
};
//Bool function that takes too ints. If they are equal, it returns YES. If not, it returns NO.
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
//Creates an alert view with the message sent via the string parameter from the other functions. It then shows the alert as long as everything goes according to plan.
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
