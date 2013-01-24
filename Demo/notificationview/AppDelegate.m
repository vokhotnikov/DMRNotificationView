//
//  AppDelegate.m
//  notificationview
//
//  Created by Damir Tursunovic on 1/23/13.
//  Copyright (c) 2013 Damir Tursunovic (damir.me). All rights reserved.
//

#import "AppDelegate.h"
#import "DemoViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    DemoViewController *demoViewController = [[DemoViewController alloc] init];
    UINavigationController *navigationViewController = [[UINavigationController alloc] initWithRootViewController:demoViewController];
    
    [self setWindow:[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]]];
    [_window setRootViewController:navigationViewController];
    [_window makeKeyAndVisible];
    return YES;
}

@end
