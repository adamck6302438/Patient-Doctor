//
//  Prescriptoin.h
//  Patient & Doctor
//
//  Created by Frances ZiyiFan on 5/2/19.
//  Copyright © 2019 Ray Kang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Symptom.h"

NS_ASSUME_NONNULL_BEGIN

@interface Prescriptoin : NSObject

@property (nonatomic, readonly) NSDictionary* prescriptionDict;
@property (nonatomic, strong) NSMutableSet* prescription;

- (void) addToPrescription:(NSString *)medication;

@end

NS_ASSUME_NONNULL_END
