//
//  Doctor.m
//  Patient&Doctor
//
//  Created by Victor Hong on 03/11/2016.
//  Copyright © 2016 Victor Hong. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

@synthesize prescriptionList;

-(instancetype)initWithName:(NSString *)name andSpecializtion:(NSString *)specialization {
    
    if (self = [super init]) {
        _name = name;
        _specialization = specialization;
        _prescription = @{@"headache":@"aspirin",
                           @"fever":@"tylenol"};
        prescriptionList = [NSMutableDictionary new];
    }
    return self;
    
}

-(BOOL)isPatientHealthCardValid:(Patient *)patient{
    
    if ([patient isHealthCardValid]) {
        NSLog(@"This patient name %@ can be treated", patient.name);
        return true;
    } else {
        NSLog(@"This patient name %@ can't be treated", patient.name);
        return false;
    }
    
}

-(void)requestMedication:(Patient *)patient {
    
    NSString *prescription = [self.prescription objectForKey:patient.symptom];
    self.prescriptionList[self.name] = prescription;
    
    NSLog(@"Patient %@ was giving a %@", patient.name, self.prescriptionList);

}

@end
