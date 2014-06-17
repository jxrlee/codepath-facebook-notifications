//
//  JLAppDelegate.m
//  facebook-notifications
//
//  Created by Joseph Lee on 6/16/14.
//  Copyright (c) 2014 mn8. All rights reserved.
//

#import "JLAppDelegate.h"
#import "NotificationViewController.h"
#import "FeedViewController.h"
#import "RequestViewController.h"
#import "MessageViewController.h"
#import "MoreViewController.h"

@implementation JLAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    // New tab controller
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    
    FeedViewController *fvc = [[FeedViewController alloc] init];
    UINavigationController *fnc = [[UINavigationController alloc] initWithRootViewController:fvc];
    fnc.tabBarItem.title = @"News Feed";
    //fnc.tabBarItem.image = [UIImage imageNamed:@""];
    
    RequestViewController *rvc = [[RequestViewController alloc] init];
    UINavigationController *rnc = [[UINavigationController alloc] initWithRootViewController:rvc];
    rnc.tabBarItem.title = @"Requests";
    //fnc.tabBarItem.image = [UIImage imageNamed:@""];
    
    NotificationViewController *nvc = [[NotificationViewController alloc] init];
    UINavigationController *nnc = [[UINavigationController alloc] initWithRootViewController:nvc];
    nnc.tabBarItem.title = @"Notifications";
    //nnc.tabBarItem.image = [UIImage imageNamed:@""];
    
    MessageViewController *mvc = [[MessageViewController alloc] init];
    UINavigationController *mnc = [[UINavigationController alloc] initWithRootViewController:mvc];
    mnc.tabBarItem.title = @"Messages";
    //fnc.tabBarItem.image = [UIImage imageNamed:@""];
    
    MoreViewController *ovc = [[MoreViewController alloc] init];
    UINavigationController *onc = [[UINavigationController alloc] initWithRootViewController:ovc];
    onc.tabBarItem.title = @"More";
    //fnc.tabBarItem.image = [UIImage imageNamed:@""];
    
    tabBarController.viewControllers = @[fnc, rnc, mnc, nnc, onc];
    
    
    self.window.rootViewController = tabBarController;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
