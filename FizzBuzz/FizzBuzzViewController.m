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
    [self createFizzBuzzIfNeeded];
    [self resetFizzBuzzValue];
    [self updateView];
}

- (void) didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction) valueChanged:(id)sender
{
    NSInteger value = (NSInteger) [(UIStepper*)sender value];
    [self setFizzBuzzValue:value];
    [self updateView];
}

- (void) createFizzBuzzIfNeeded
{
    if (fizzBuzz == nil)
        fizzBuzz = [[FizzBuzzModel alloc] init];
}

- (void) resetFizzBuzzValue
{
    [self setFizzBuzzValue:0];
}

- (void) setFizzBuzzValue:(NSInteger)value
{
    fizzBuzz.countValue = value;
}

- (void) updateView
{
    self.theNumber.text = [NSString stringWithFormat:@"%d", fizzBuzz.countValue];
    self.theResponse.text = fizzBuzz.response;
}

@end
