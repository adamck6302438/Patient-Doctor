//
//  Patient.h
//  Patient & Doctor
//
//  Created by Frances ZiyiFan on 5/2/19.
//  Copyright © 2019 Ray Kang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Symptom.h"
#import "Prescriptoin.h"

NS_ASSUME_NONNULL_BEGIN
@class Doctor;
@interface Patient : NSObject

@property (nonatomic, assign) int age;
@property (nonatomic, strong) NSString* name;
@property (nonatomic, assign) int healthCard;
@property (nonatomic, strong) NSMutableSet* symptoms;
@property (nonatomic, strong) Prescriptoin* prescription;

- (instancetype)initWithName: (NSString *)name andAge: (int)age;
- (void) askInfo: (Doctor *) doctor;
- (BOOL) checkHealthCard;
- (void) addSymptom:(Symptom *)symptom;

@end

NS_ASSUME_NONNULL_END
