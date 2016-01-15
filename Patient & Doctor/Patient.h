//
//  Patient.h
//  Patient & Doctor
//
//  Created by Li Pan on 2016-01-14.
//  Copyright © 2016 Li Pan. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Doctor;

@interface Patient : NSObject
@property (nonatomic, strong)NSString *name;
@property (nonatomic, assign)NSInteger age;
@property (assign)BOOL haveHealthCard;
@property (nonatomic, strong)NSString *symptom;

-(instancetype) initWithPatient: (NSString *)name age: (NSInteger)age haveHealthCard: (BOOL) haveHealthCard  symptom: (NSString *) symptom;
-(void)askDoctor: (Doctor *)doctor;
-(BOOL)canVisitDoctor: (Doctor *)doctor;
-(void)askForPrescription: (Doctor *)doctor;


@end
