//
//  Doctor.h
//  Patient & Doctor
//
//  Created by Li Pan on 2016-01-14.
//  Copyright © 2016 Li Pan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Prescriptions.h"

@interface Doctor : NSObject

@property(nonatomic, strong)NSString *name;
@property(nonatomic, strong)NSString *specialization;
@property(assign) BOOL available;
@property(nonatomic, strong)NSMutableArray *patientListArray;
@property(nonatomic, strong)NSMutableDictionary *allPrescriptions;

- (instancetype) initWithName: (NSString *)name specialization: (NSString *) specialization allPrescriptions: (NSMutableDictionary *) allPrescription;
- (void)askPatient: (Patient *)patient;
- (BOOL)acceptPatient:(Patient *)patient;
- (void)writePrescription : (Patient *)thePatient;
- (Prescriptions *)getPrescription: (Patient *)thePatient Symptoms: (NSString *)symptom;

@end
