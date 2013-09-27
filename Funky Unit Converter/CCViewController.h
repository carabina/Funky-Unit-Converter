//
//  CCViewController.h
//  Funky Unit Converter
//
//  Created by Eliot Arntz on 9/24/13.
//  Copyright (c) 2013 Code Coalition. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CCViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *numberOfBillsLabel;
@property (strong, nonatomic) IBOutlet UITextField *numberOfBillsTextField;
- (IBAction)convertUnits:(UIButton *)sender;

@end
