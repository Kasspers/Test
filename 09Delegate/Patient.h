//
//  Patient.h
//  09Delegate
//
//  Created by Александр on 25.09.15.
//  Copyright (c) 2015 Александр. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PatientDelegate;


@interface Patient : NSObject


@property (strong,nonatomic) NSString* name;
@property (assign, nonatomic) float temperature;
@property (assign, nonatomic) int levelOfPain;
@property (weak, nonatomic) id <PatientDelegate> delegate;

-(BOOL) gettingWorse;
-(BOOL) howAreYou;
-(void) takePill;
-(void) makeShot;
-(void) stayingInHospital;
@end

@protocol PatientDelegate

-(void) patientFeelsBad:(Patient*) patient;
-(void) patientFeelsEvenWorse:(Patient*) patient;
-(void) patient:(Patient*) patient hasQuestion:(NSString*) question;

@end
