//
//  main.m
//  Patient & Doctor
//
//  Created by Frances ZiyiFan on 5/2/19.
//  Copyright © 2019 Ray Kang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Doctor* doc1 = [[Doctor alloc]initWithName:@"Doc1" andSpecialization:@"Field1"];
        Patient* patient1 = [[Patient alloc]initWithName:@"Patient1" andAge: 64];
        [patient1 setHealthCard: 123];
//        Patient* patient2 = [[Patient alloc]initWithName:@"Patient2" andAge: 14];
//        [patient2 setHealthCard: 234];
//        Patient* patient3 = [[Patient alloc]initWithName:@"Patient3" andAge: 75];
//        [patient3 setHealthCard: 546];
//        Patient* patient4 = [[Patient alloc]initWithName:@"Patient4" andAge: 25];
        
        [doc1 visit:patient1];
//        [doc1 visit:patient2];
//        [doc1 visit:patient3];
//        [doc1 visit:patient4];
        
        [patient1 addSymptom:@"sneezing"];
        [patient1 addSymptom:@"vomit"];
        
        [patient1 setPrescription:[doc1 requestMedicationForPatient:patient1]];
        NSLog(@"%@", [patient1 prescription]);
    }
    return 0;
}
