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

@property NSString *firstName;
@property NSString *lastName;
@property int studentId;
@property NSString *description;

- (id)initWithFirstName:(NSString *)studentFirstName andLastName:(NSString *)studentLastName andId:(int)studentNumber;

@end
