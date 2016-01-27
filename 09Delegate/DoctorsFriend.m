//
//  DoctorsFriend.m
//  09Delegate
//
//  Created by Александр on 30.09.15.
//  Copyright (c) 2015 Александр. All rights reserved.
//

#import "DoctorsFriend.h"

@implementation DoctorsFriend

-(void) patientFeelsBad:(Patient*) patient{
    if (patient.temperature >= 37 && patient.temperature <= 40) {
        [patient takePill];
    } else if (patient.temperature > 40) {
    NSLog(@"Sorry,%@ , I dont know what to do", patient.name);
    }
}
-(void) patientFeelsEvenWorse:(Patient*) patient{
    if (patient.levelOfPain >= 2){
        NSLog(@"Doctor is running away from patient %@", patient.name);
    }
    else {
        NSLog(@"%@, you are ok!", patient.name);
    }
}
-(void) patient:(Patient *)patient hasQuestion:(NSString *)question {
    
}

@end
