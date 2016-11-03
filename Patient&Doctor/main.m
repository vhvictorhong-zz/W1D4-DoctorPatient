//
//  main.m
//  Patient&Doctor
//
//  Created by Victor Hong on 03/11/2016.
//  Copyright © 2016 Victor Hong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Patient *patient = [[Patient alloc] initWithAge:20 andName:@"David" andValidHealthCard:true andSymptoms:@"fever"];
        Doctor *doctor = [[Doctor alloc] initWithName:@"Bob" andSpecializtion:@"Brain"];
        
        [patient visitDoctor:doctor];
        
    }
    return 0;
}
