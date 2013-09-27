//
//  CCViewController.m
//  Funky Unit Converter
//
//  Created by Eliot Arntz on 9/24/13.
//  Copyright (c) 2013 Code Coalition. All rights reserved.
//

#import "CCViewController.h"

@interface CCViewController ()

@end

@implementation CCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // This is a comment
    
    /*
     Comment one line
     Comment second line
     */
    
    /* NSLog is a function we can use to print out items between our " " to our console */
    NSLog(@"Hello world");

    /* Additional Variable name rules:
     1. avoid !@#$%^&*() to start variable names
     2. avoid if, struct, void and for.*/
    
    /* the value 5 is being assigned to the variable named 'x' and it is of type int short for integer.  Integers are whole numbers. */
    int x = 5;
    int y = 20;
    int z = -2;
    
    //valid operations + - * /
    
    // 5 + 20 = 25;
    int additionAnswer = x + y;
 
    // 20 * -2 = -40;
    int multiplicationAnswer = y * z;
    
    /* Tokens allow us to print out variables out to our console.  They allow us to prove that a variable has a value.  We can print multiple variables to our console by adding multiple tokens to our NSLog statement. We use the token %i for integers and %f for floats. */
    
    NSLog(@"the value of x equals %i", x);
    NSLog(@"x = %i y = %i z = %i", x, y, z);

    
    float heightOfEverstBaseCamp = 16900.3;
    float heightOfEverst = 29029;
    
    float distanceToTravel = heightOfEverst - heightOfEverstBaseCamp;
    distanceToTravel = distanceToTravel - 1000;
    
    //Print out the distanceToTravel variable to our console
    NSLog(@"%f", distanceToTravel);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)convertUnits:(UIButton *)sender
{
    /* First we create a variable of type float.  We then access the string (series of characters) text from the textField and convert it to a floatValue */
    float numberOfBills = [self.numberOfBillsTextField.text floatValue];
    
    /* In order to convert the number of bills to number of football fields divide the number by 91440.*/
    float numberOfFootballFields = numberOfBills / 91440;
    
    /* Next we update the label to show the number of football fields.  In order to display the numberOfFootballFields float variable as text on our screen we must convert the float variable to an NSString.  NSStrings, which we will learn about in our Objects section, allows us to package characters together. Notice that we use a format string similiar to the NSLog statements we learned earlier.  The token %f accepts the variable numberOfFootballFields and converts it to an NSString object.*/
    self.numberOfBillsLabel.text = [NSString stringWithFormat:@"%f", numberOfFootballFields];
}
@end
