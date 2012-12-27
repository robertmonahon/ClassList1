//
//  Student.m
//  ClassList1
//
//  Created by Robert Monahon on 12/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Student.h"

@implementation Student

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

- (NSString *)getFirstName{
    return self->firstName;
}

- (NSString *)getLastName{
    return self->lastName;
}

- (NSString *)getDescription{
    return self->description;
}

- (void)setFirstName:(NSString *)firstNameToSet{
    self->firstName = firstNameToSet;
    [self updateDescription];
}

- (void)setLastName:(NSString *)lastNameToSet{
    self->lastName = lastNameToSet;
    [self updateDescription];
}

- (void)updateDescription{
    NSMutableString *desc = [NSMutableString stringWithFormat:@"%d: ",self->studentId];
    [desc appendString:self->firstName];
    [desc appendString:@" "];
    [desc appendString:self->lastName];
    self->description = desc;
}

- (int)getId{
    return self->studentId;
}

@end
