//
//  Patient.m
//  09Delegate
//
//  Created by Александр on 25.09.15.
//  Copyright (c) 2015 Александр. All rights reserved.
//

#import "Patient.h"

@implementation Patient

-(BOOL) howAreYou {
    BOOL iFeelGood = arc4random() % 2;
    if (!iFeelGood) {
        [self.delegate patientFeelsBad:self];
    }
    
    return iFeelGood;
}
-(BOOL) gettingWorse {
    BOOL iFeelBetter = arc4random() %2;
    if (!iFeelBetter) {
        [self.delegate patientFeelsEvenWorse:self];
}
    return iFeelBetter;
}
-(void) takePill{
    NSLog(@"%@ takes a pill", self.name);
}
-(void) makeShot{
    NSLog(@"%@ makes a shot", self.name);
}
-(void) stayingInHospital{
    NSLog(@"%@ stays in hospital for treatment", self.name);
}

@end
