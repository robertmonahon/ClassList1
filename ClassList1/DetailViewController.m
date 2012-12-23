//
//  DetailViewController.m
//  ClassList1
//
//  Created by Robert Monahon on 12/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DetailViewController.h"

#import "Student.h"

@interface DetailViewController ()
- (void)configureView;
@end

@implementation DetailViewController

@synthesize detailItem = _detailItem;
@synthesize detailDescriptionLabel = _detailDescriptionLabel;
@synthesize studentIdLabel = _studentIdLabel;
@synthesize firstNameOutlet = _firstNameOutlet;
@synthesize lastNameOutlet = _lastNameOutlet;

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
        self.studentIdLabel.text = [NSString stringWithFormat:@"%d",[self.detailItem studentId]];
        self.firstNameOutlet.text = [self.detailItem firstName];
        self.lastNameOutlet.text = [self.detailItem lastName];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)viewDidUnload
{
    [self setStudentIdLabel:nil];
    [self setFirstNameOutlet:nil];
    [self setLastNameOutlet:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    self.detailDescriptionLabel = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)updateAction:(id)sender {
    Student *tempStudent = self.detailItem;
    tempStudent.firstName = self.firstNameOutlet.text;
    tempStudent.lastName = self.lastNameOutlet.text;
    
}
@end
