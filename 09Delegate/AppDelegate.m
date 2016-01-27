//
//  AppDelegate.m
//  09Delegate
//
//  Created by Александр on 25.09.15.
//  Copyright (c) 2015 Александр. All rights reserved.
//

#import "AppDelegate.h"
#import "Patient.h"
#import "Doctor.h"
#import "DoctorsFriend.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    Patient* patient1 = [[Patient alloc] init];
    patient1.name = @"Vova";
    patient1.temperature = 36.6f;
    patient1.levelOfPain = arc4random()%4;
    
    Patient* patient2 = [[Patient alloc] init];
    patient2.name = @"Petya";
    patient2.temperature = 38.f;
    patient2.levelOfPain = arc4random()%4;
    
    Patient* patient3 = [[Patient alloc] init];
    patient3.name = @"Mara";
    patient3.temperature = 40.5;
    patient3.levelOfPain = arc4random()%4;
    
    Patient* patient4 = [[Patient alloc] init];
    patient4.name = @"John";
    patient4.temperature = 40.5;
    patient4.levelOfPain = arc4random()%4;
    
    Doctor* doctor1 = [[Doctor alloc] init];
    DoctorsFriend* badDoctor1 = [[DoctorsFriend alloc] init];
    DoctorsFriend* badDoctor2 = [[DoctorsFriend alloc] init];
    
    patient1.delegate = doctor1;
    patient2.delegate = doctor1;
    patient3.delegate = badDoctor1;
    patient4.delegate = badDoctor2;
    
    NSArray* patients = [NSArray arrayWithObjects:patient4, patient3, patient2, patient1, nil];
    
    for (Patient* patient in patients){
        NSLog(@"%@ are you ok? %@ now you are feeling better? %@", patient.name,
              [patient howAreYou] ? @"Yes" : @"No", [patient gettingWorse] ? @"Yes" : @"No");
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
