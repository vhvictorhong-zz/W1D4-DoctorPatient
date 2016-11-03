//
//  Patient.m
//  Patient&Doctor
//
//  Created by Victor Hong on 03/11/2016.
//  Copyright © 2016 Victor Hong. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

-(instancetype)initWithAge:(NSInteger)age andName:(NSString *)name andValidHealthCard:(BOOL)validHealthCard andSymptoms:(NSString *)symptom{
    
    if (self = [super init]) {
        
        _age = age;
        _name = name;
        _validHealthCard = validHealthCard;
        _symptom = symptom;
        
    }
    return self;
}

-(BOOL)isHealthCardValid {
    
    if (self.validHealthCard) {
        NSLog(@"Health card is valid");
    } else {
        NSLog(@"Health card is invalid");
    }
    
    return self.validHealthCard;
}

-(void)visitDoctor:(Doctor *)doctor{

    if ([doctor isPatientHealthCardValid: self]) {
        NSLog(@"Doctor %@ will treat you", doctor.name);
        [doctor requestMedication:self];
    } else {
        NSLog(@"Doctor %@ will not treat you", doctor.name);
    }
}

@end
