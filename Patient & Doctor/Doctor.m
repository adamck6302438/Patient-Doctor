//
//  Doctor.m
//  Patient & Doctor
//
//  Created by Frances ZiyiFan on 5/2/19.
//  Copyright © 2019 Ray Kang. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

- (instancetype)initWithName: (NSString *)name andSpecialization: (NSString *)specialization
{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
        _patientList = [[NSMutableSet alloc]init];
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"Doctor's Name: %@, Specification: %@", self.name, self.specialization];
}

- (void) visit:(Patient *) patient{
    if([patient checkHealthCard]){
        [self.patientList addObject: patient];
    }else{
        NSLog(@"%@ doesn't have a valid health card. Dr. %@ cannot take him/her.", patient.name, self.name);
    }
}

- (void) askInfo: (Patient *) patient{
    NSLog(@"%@", patient);
}

- (Prescriptoin *)requestMedicationForPatient:(Patient *)patient{
    Prescriptoin* prescription = [[Prescriptoin alloc]init];
    for(Symptom* symptom in patient.symptoms){
        [prescription addToPrescription: symptom];
    }
    return prescription;
}

@end
