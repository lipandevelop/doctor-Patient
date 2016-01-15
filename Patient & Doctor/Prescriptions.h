//
//  Prescriptions.h
//  Patient & Doctor
//
//  Created by Li Pan on 2016-01-14.
//  Copyright © 2016 Li Pan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Prescriptions : NSObject
@property (nonatomic, strong)NSString *name;

+ (instancetype) prescriptionWithName: (NSString *) name;

@end
