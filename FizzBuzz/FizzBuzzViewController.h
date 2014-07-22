//
//  FizzBuzzViewController.h
//  FizzBuzz
//
//  Created by Guy Royse on 6/24/14.
//  Copyright (c) 2014 Guy Royse. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FizzBuzzModel.h"

@interface FizzBuzzViewController : UIViewController {
    FizzBuzzModel* fizzBuzz;
}

@property (retain) FizzBuzzModel* fizzBuzz;

@property (weak, nonatomic) IBOutlet UILabel* theNumber;
@property (weak, nonatomic) IBOutlet UILabel* theResponse;
@property (weak, nonatomic) IBOutlet UIStepper* theStepper;

- (IBAction)valueChanged:(id)sender;

@end
