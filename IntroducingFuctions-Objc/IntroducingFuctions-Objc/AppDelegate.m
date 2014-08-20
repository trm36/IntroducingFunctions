//
//  AppDelegate.m
//  IntroducingFuctions-Objc
//
//  Created by Joshua Howland on 8/14/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
            

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    NSString *myName = @"Taylor Mott";
    NSString *introduction = [NSString stringWithFormat:@"My name is %@", myName];
    NSString *japaneseIntroduction = [myName stringByAppendingString:@" to moushimasu"];
    
    NSLog(@"%@", introduction);
    NSLog(@"%@", japaneseIntroduction);
    
    [self countDownTillIntroduction: 4];
    
    [self printIntroductions: myName];
    
    return YES;
}

- (void)printIntroductions:(NSString*)name
{
    NSString *introduction = [NSString stringWithFormat:@"My name is %@", name];
    NSString *japaneseIntroduction = [name stringByAppendingString:@" to moushimasu"];
    
    NSLog(@"%@ from f(x)", introduction);
    NSLog(@"%@ from f(x)", japaneseIntroduction);
}

- (void)countDownTillIntroduction:(NSInteger)numberOfDays
{
    if (numberOfDays == 0)
    {
        NSLog(@"The time has come");
    }
    else
    {
        NSLog(@"%ld days left until introductions", numberOfDays);
        NSInteger oneLessDay = numberOfDays - 1;
        [self countDownTillIntroduction: oneLessDay];
    }
}



@end
