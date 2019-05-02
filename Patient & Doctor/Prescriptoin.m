//
//  Prescriptoin.m
//  Patient & Doctor
//
//  Created by Frances ZiyiFan on 5/2/19.
//  Copyright © 2019 Ray Kang. All rights reserved.
//

#import "Prescriptoin.h"

@implementation Prescriptoin

- (instancetype)init
{
    self = [super init];
    if (self) {
        _prescription = [[NSMutableSet alloc]init];
        _prescriptionDict = @{
                              @"sneezing": @"advil",
                              @"fever": @"tynelol",
                              @"back pain": @"massage",
                              @"vomit": @"drink water",
                              @"eye sore": @"eye drop",
                              @"sore muscle": @"muscle relaxer"
                              };
    }
    return self;
}


- (void) addToPrescription:(Symptom *) symptom{
    [self.prescription addObject:[_prescriptionDict objectForKey:symptom]];
}

- (NSString *)description
{
    NSString* output = [[NSString alloc] init];
    for(NSString* cure in self.prescription){
        output = [output stringByAppendingString:[NSString stringWithFormat:@"%@ ", cure]];
    }
    return output;
}

@end
