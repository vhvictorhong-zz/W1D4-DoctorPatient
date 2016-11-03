//
//  Patient.h
//  Patient&Doctor
//
//  Created by Victor Hong on 03/11/2016.
//  Copyright © 2016 Victor Hong. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Doctor;

@interface Patient : NSObject

@property NSInteger age;
@property NSString *name;
@property NSString *symptom;
@property BOOL validHealthCard;


-(instancetype)initWithAge:(NSInteger)age andName:(NSString *)name andValidHealthCard:(BOOL)validHealthCard andSymptoms:(NSString *)symptom;

-(BOOL)isHealthCardValid;
-(void)visitDoctor:(Doctor *)doctor;



@end
