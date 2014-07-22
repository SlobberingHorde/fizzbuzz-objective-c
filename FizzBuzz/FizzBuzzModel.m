//
//  FizzBuzzModel.m
//  FizzBuzz
//
//  Created by Guy Royse on 6/24/14.
//  Copyright (c) 2014 Guy Royse. All rights reserved.
//

#import "FizzBuzzModel.h"

@implementation FizzBuzzModel

@synthesize countValue;

- (NSString*) response
{
    NSString* result;
    
    if (countValue % 15 == 0) {
        result = @"fizzbuzz";
    } else if (countValue % 5 == 0) {
        result = @"buzz";
    } else if (countValue % 3 == 0) {
        result = @"fizz";
    } else {
        result = [NSString stringWithFormat: @"%d", countValue];
    }
    
    return result;
}

@end
