//
//  Symptom.m
//  Patient & Doctor
//
//  Created by Frances ZiyiFan on 5/2/19.
//  Copyright © 2019 Ray Kang. All rights reserved.
//

#import "Symptom.h"

@implementation Symptom

- (instancetype)initSymptom: (NSString *)symptom
{
    self = [super init];
    if (self) {
        _symptom = symptom;
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@", self.symptom];
}

@end
