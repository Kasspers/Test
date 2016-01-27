//
//  Doctor.h
//  09Delegate
//
//  Created by Александр on 29.09.15.
//  Copyright (c) 2015 Александр. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@interface Doctor : NSObject <PatientDelegate> 

@end
