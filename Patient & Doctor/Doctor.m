//
//  Doctor.m
//  Patient & Doctor
//
//  Created by Li Pan on 2016-01-14.
//  Copyright © 2016 Li Pan. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"
#import "Prescriptions.h"

@implementation Doctor

- (instancetype) initWithName: (NSString *)name specialization: (NSString *) specialization allPrescriptions: (NSMutableDictionary *) allPrescription {
    self = [super init];
    if (self) {
        _name = name;
        _specialization =specialization;
        _patientListArray = [NSMutableArray new];
        _allPrescriptions = allPrescription;

    }
    return self;
}

- (void)askPatient: (Patient *)patient {
    NSLog(@"Doctor: What is your name and age?");
    NSLog(@"My name is %@ and I am %ld", patient.name, (long)patient.age);
}

- (BOOL)acceptPatient:(Patient *)aPatient {
    NSLog(@"Doctor: Do you have your health card with you?");
    
    if (!aPatient.haveHealthCard) {
        
        NSLog(@"Doctor: Sorry you must have your health card for me to help you");
        return NO;
    }
    [self.patientListArray addObject:aPatient];
    
    NSLog(@"Doctor: Okay, let me record you in the list of my clients");
    return YES;
}
-(void)writePrescription : (Patient *)thePatient{
    if ([self.patientListArray containsObject:thePatient]) {
        
        NSLog(@"Doctor: Here is your prescription, let me record it");
        self.allPrescriptions[thePatient.name] = [[Prescriptions alloc] init];
    }
}
- (Prescriptions *)getPrescription: (Patient *)thePatient Symptoms: (NSString *)symptoms {
    if ([self.patientListArray containsObject:thePatient]) {
        if ([self.allPrescriptions objectForKey:symptoms]) {
            Prescriptions *prescriptions = self.allPrescriptions[symptoms];
            NSLog(@"Your symptom %@, has been added to a history of symptoms", prescriptions.name);
            
        }
    }
    return [self.allPrescriptions objectForKey:symptoms];
}



@end
