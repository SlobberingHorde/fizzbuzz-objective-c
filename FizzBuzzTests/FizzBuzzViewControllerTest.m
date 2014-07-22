//
//  FizzBuzzViewControllerTest.m
//  FizzBuzz
//
//  Created by Guy Royse on 7/22/14.
//  Copyright (c) 2014 Guy Royse. All rights reserved.
//

#define HC_SHORTHAND
#import <OCHamcrestIOS/OCHamcrestIOS.h>

#import "OCMock/OCMock.h"

#import <XCTest/XCTest.h>

#import "FizzBuzzViewController.h"

@interface FizzBuzzViewControllerTest : XCTestCase {
    FizzBuzzViewController* subject;
    UIStepper* mockStepper;
    id mockFizzBuzz;
    id mockNumberLabel;
    id mockResponseLabel;
}
@end

@implementation FizzBuzzViewControllerTest

- (void) setUp
{
    [super setUp];

    mockFizzBuzz = OCMClassMock([FizzBuzzModel class]);
    mockNumberLabel = OCMClassMock([UILabel class]);
    mockResponseLabel = OCMClassMock([UILabel class]);
    mockStepper = OCMClassMock([UIStepper class]);
    
    subject = [[FizzBuzzViewController alloc] init];
    subject.fizzBuzz = mockFizzBuzz;
    subject.theNumber = mockNumberLabel;
    subject.theResponse = mockResponseLabel;
}

- (void) tearDown
{
    [super tearDown];
}

- (void) test_viewDidLoad_createsFizzBuzzIfNotSet
{
    subject.fizzBuzz = nil;
    [subject viewDidLoad];
    assertThat(subject.fizzBuzz, isNot(nilValue()));
}

- (void) test_viewDidLoad_setsValueOfFizzBuzzToZero
{
    OCMExpect([mockFizzBuzz setCountValue:0]);
    [subject viewDidLoad];
    OCMVerifyAll(mockFizzBuzz);
}

- (void) test_viewDidLoad_setsTheNumberToFizzBuzzNumber
{
    OCMStub([mockFizzBuzz countValue]).andReturn(0);
    OCMExpect([mockNumberLabel setText:@"0"]);
    [subject viewDidLoad];
    OCMVerifyAll(mockNumberLabel);
}

- (void) test_viewDidLoad_setsTheResponseToFizzBuzzResponse
{
    OCMStub([mockFizzBuzz response]).andReturn(@"foobar");
    OCMExpect([mockResponseLabel setText:@"foobar"]);
    [subject viewDidLoad];
    OCMVerifyAll(mockResponseLabel);
}

- (void) test_valueChanged_setsValueOfFizzBuzzToStepperValue
{
    OCMStub([mockStepper value]).andReturn(12.0);
    OCMExpect([mockFizzBuzz setCountValue:12]);
    [subject valueChanged:mockStepper];
    OCMVerifyAll(mockFizzBuzz);
}

- (void) test_valueChanged_setsTheNumberToFizzBuzzNumber
{
    OCMStub([mockFizzBuzz countValue]).andReturn(24);
    OCMExpect([mockNumberLabel setText:@"24"]);
    [subject valueChanged:mockStepper];
    OCMVerifyAll(mockFizzBuzz);
}

- (void) test_valueChanged_setsTheResponseToFizzBuzzResponse
{
    OCMStub([mockFizzBuzz response]).andReturn(@"bazqux");
    OCMExpect([mockResponseLabel setText:@"bazqux"]);
    [subject valueChanged:mockStepper];
    OCMVerifyAll(mockResponseLabel);
}


@end
