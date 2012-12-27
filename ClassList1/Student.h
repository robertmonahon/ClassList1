//
//  Student.h
//  ClassList1
//
//  Created by Robert Monahon on 12/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
{
    NSString *firstName;
    NSString *lastName;
    int studentId;
    NSString *description;
}

- (id)initWithFirstName:(NSString *)studentFirstName andLastName:(NSString *)studentLastName andId:(int)studentNumber;
- (NSString *)getFirstName;
- (NSString *)getLastName;
- (void)setFirstName:(NSString *)firstNameToSet;
- (void)setLastName:(NSString *)lastNameToSet;
- (NSString *)getDescription;
- (void)updateDescription;
- (int)getId;

@end
