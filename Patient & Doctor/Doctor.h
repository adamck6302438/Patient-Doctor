//
//  Doctor.h
//  Patient & Doctor
//
//  Created by Frances ZiyiFan on 5/2/19.
//  Copyright © 2019 Ray Kang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Prescriptoin.h"

NS_ASSUME_NONNULL_BEGIN
@class Patient;
@interface Doctor : NSObject


@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) NSString* specialization;
@property (nonatomic, strong) NSMutableSet* patientList;

- (instancetype)initWithName: (NSString *)name andSpecialization: (NSString *)specialization;
- (void) visit: (Patient *) patient;
- (void) askInfo: (Patient *) patient;
- (Prescriptoin *) requestMedicationForPatient: (Patient *)patient;

@end

NS_ASSUME_NONNULL_END
