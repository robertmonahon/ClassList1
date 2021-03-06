//
//  DetailViewController.h
//  ClassList1
//
//  Created by Robert Monahon on 12/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (strong, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *studentIdLabel;

@property (weak, nonatomic) IBOutlet UITextField *firstNameOutlet;
@property (weak, nonatomic) IBOutlet UITextField *lastNameOutlet;

- (IBAction)updateAction:(id)sender;

@end
