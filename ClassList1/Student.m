//
//  Student.m
//  ClassList1
//
//  Created by Robert Monahon on 12/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Student.h"

@implementation Student

@synthesize firstName, lastName, studentId, description;

- (id)initWithFirstName:(NSString *)studentFirstName andLastName:(NSString *)studentLastName andId:(int)studentNumber
{
    self = [super init];
    if(self){
        self->firstName = studentFirstName;
        self->lastName = studentLastName;
        self->studentId = studentNumber;
        NSMutableString *desc = [NSMutableString stringWithFormat:@"%d: ",studentId];
        [desc appendString:firstName];
        [desc appendString:@" "];
        [desc appendString:lastName];
        self->description = desc;
        
    }
    return self;
}

@end
