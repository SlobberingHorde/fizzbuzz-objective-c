//
//  FizzBuzzModel.h
//  FizzBuzz
//
//  Created by Guy Royse on 6/24/14.
//  Copyright (c) 2014 Guy Royse. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FizzBuzzModel : NSObject {
    NSInteger countValue;
}

@property NSInteger countValue;

- (NSString*) response;

@end
