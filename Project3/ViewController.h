//
//  ViewController.h
//  Project3
//
//  Created by Russell Carlin on 9/12/12.
//  Copyright (c) 2012 Russell Carlin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    
}

- (int)Add:(NSInteger)firstInt secondInt:(NSInteger)secondInt;
- (BOOL)Compare:(NSInteger)firstInt secondInt:(NSInteger)secondInt;
- (NSString*)Append:(NSString*)firstStr secondStr:(NSString*)secondStr;
- (void)displayAlertWithString:(NSString*)alert;

@end
