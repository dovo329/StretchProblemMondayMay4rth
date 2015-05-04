//
//  AppDelegate.m
//  StretchProblemMay4rthMonday
//
//  Created by Douglas Voss on 5/4/15.
//  Copyright (c) 2015 Doug. All rights reserved.
//

#import "AppDelegate.h"
#define NSLog(FORMAT, ...) printf("%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    NSArray *keyArray = @[@"name", @"population", @"continent", @"major export"];
    NSArray *chinaObjectArray = @[@"China", @"1.2 billion", @"Asia", @"Everything"];
    NSArray *usaObjectArray = @[@"U.S.A", @"300 million", @"North America", @"Entertainment; Intellectual Property"];
   
    
    NSDictionary *chinaDict = [[NSDictionary alloc] initWithObjects:chinaObjectArray forKeys:keyArray];
    NSDictionary *usaDict   = [[NSDictionary alloc] initWithObjects:usaObjectArray forKeys:keyArray];
    
/*  NSDictionary *countryDict = @{          @"name" : @"China",
                               @"population" : @"4 billion",
                                         @"continent" : @"Asia",
                                         @"major export" : @"Everything"
 };
    
    for (int i=0; i<5; i++) {
        NSString *randomKey = keyArray[arc4random() % [keyArray count]];
 NSLog(@"random object from countryDict for key %@: %@", randomKey, [countryDict objectForKey:randomKey]);
    }*/
    
    for (int i=0; i<10; i++) {
        NSString *randomKey = keyArray[arc4random() % [keyArray count]];
        NSLog(@"random object from chinaDict for key %@: %@", randomKey, [chinaDict objectForKey:randomKey]);
        NSLog(@"random object from usaDict for key %@: %@", randomKey, [usaDict objectForKey:randomKey]);
    }
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
