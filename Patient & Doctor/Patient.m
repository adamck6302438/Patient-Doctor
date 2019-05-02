//
//  Patient.m
//  Patient & Doctor
//
//  Created by Frances ZiyiFan on 5/2/19.
//  Copyright © 2019 Ray Kang. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (instancetype)initWithName: (NSString *)name andAge: (int)age
{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        _symptoms = [[NSMutableSet alloc] init];
        _prescription = [[Prescriptoin alloc]init];
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"Patient's Name: %@, Age: %d", self.name, self.age];
}

- (void) askInfo: (Doctor *) doctor{
    NSLog(@"%@", doctor);
}

- (BOOL) checkHealthCard {
    if(self.healthCard != 0){
        return true;
    }else{
        return false;
    }
}

- (void) addSymptom:(Symptom *)symptom{
    [self.symptoms addObject:symptom];
}

@end
