//
//  Prescriptions.m
//  Patient & Doctor
//
//  Created by Li Pan on 2016-01-14.
//  Copyright © 2016 Li Pan. All rights reserved.
//

#import "Prescriptions.h"

@implementation Prescriptions

+ (instancetype)prescriptionWithName:(NSString *)name {
    Prescriptions *prescription = [[Prescriptions alloc] init];
    prescription.name = name;
    return prescription;
}




@end
