//
//  Doctor.m
//  09Delegate
//
//  Created by Александр on 29.09.15.
//  Copyright (c) 2015 Александр. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

-(void) patientFeelsBad:(Patient*) patient{
    NSLog(@"Patient %@ feels bad", patient.name);
    if (patient.temperature >= 37 && patient.temperature <= 40) {
        [patient takePill];
    } else if  (patient.temperature > 40) {
        [patient makeShot];
    }else {
        NSLog(@"Patient %@ should rest", patient.name);
    }
        
    }

-(void) patientFeelsEvenWorse:(Patient *)patient {
    NSLog(@"Patient %@ feels even worse", patient.name);
    if (patient.levelOfPain >=2) {
        [patient stayingInHospital];
    }
        else if (patient.levelOfPain < 2){
            NSLog(@"%@ is alright", patient.name);
            
        }
    }

-(void) patient:(Patient*) patient hasQuestion:(NSString*) question{
     
    
}

@end
