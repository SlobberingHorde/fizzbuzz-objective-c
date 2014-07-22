//
//  FizzBuzzViewController.m
//  FizzBuzz
//
//  Created by Guy Royse on 6/24/14.
//  Copyright (c) 2014 Guy Royse. All rights reserved.
//

#import "FizzBuzzViewController.h"
#import "FizzBuzzModel.h"

@implementation FizzBuzzViewController

@synthesize fizzBuzz;

- (void) viewDidLoad
{
    [super viewDidLoad];
    if (fizzBuzz == nil) {
        fizzBuzz = [[FizzBuzzModel alloc] init];
    }
    fizzBuzz.countValue = 0;
    [self updateFizzBuzz];
}

- (void) didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction) valueChanged:(id)sender
{
    NSInteger value = (NSInteger) [(UIStepper*)sender value];
    fizzBuzz.countValue = value;
    [self updateFizzBuzz];
}

- (void) updateFizzBuzz
{
    self.theNumber.text = [NSString stringWithFormat:@"%d", fizzBuzz.countValue];
    self.theResponse.text = fizzBuzz.response;
}

@end
