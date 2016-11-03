//
//  Doctor.h
//  Patient&Doctor
//
//  Created by Victor Hong on 03/11/2016.
//  Copyright © 2016 Victor Hong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@interface Doctor : NSObject

@property NSString *name;
@property NSString *specialization;
@property NSDictionary *prescription;
@property (nonatomic, retain) NSMutableDictionary *prescriptionList;

-(instancetype)initWithName:(NSString *)name andSpecializtion:(NSString *)specialization;

-(BOOL)isPatientHealthCardValid:(Patient *)patient;

-(void)requestMedication:(Patient *)symptom;

@end
