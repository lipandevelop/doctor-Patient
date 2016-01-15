//
//  main.m
//  Patient & Doctor
//
//  Created by Li Pan on 2016-01-14.
//  Copyright © 2016 Li Pan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    NSMutableDictionary *allPrescriptions = [[NSMutableDictionary alloc] init];
    
    Doctor *newDoctor = [[Doctor alloc] initWithName:@"Some Doctor" specialization:@"Some Specializtion" allPrescriptions: allPrescriptions];
    Patient *newPatient = [[Patient alloc] initWithPatient:@"Some Patient" age:30 haveHealthCard:YES symptom:@"Some Symptom"];
    
    
    

    return 0;
}
