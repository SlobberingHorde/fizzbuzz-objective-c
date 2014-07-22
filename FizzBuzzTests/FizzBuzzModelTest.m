//
//  FizzBuzzModelTest.m
//  FizzBuzz
//
//  Created by Guy Royse on 6/24/14.
//  Copyright (c) 2014 Guy Royse. All rights reserved.
//

#define HC_SHORTHAND
#import <OCHamcrestIOS/OCHamcrestIOS.h>

#import "OCMock/OCMock.h"

#import <XCTest/XCTest.h>

#import "FizzBuzzModel.h"

@interface FizzBuzzModelTest : XCTestCase {
    FizzBuzzModel* subject;
}
@end

@implementation FizzBuzzModelTest

- (void)setUp
{
    [super setUp];
    subject = [[FizzBuzzModel alloc] init];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testItReturnsTheNumberItIsHanded
{
    subject.countValue = 1;
    assertThat(subject.response, equalTo(@"1"));
}

- (void)testItReturnsOtherNumbersItIsHanded
{
    subject.countValue = 2;
    assertThat(subject.response, equalTo(@"2"));
}

- (void)testItReturnsFizzForMultiplesOfThree
{
    subject.countValue = 3;
    assertThat(subject.response, equalTo(@"fizz"));
}

- (void)testItReturnsFizzForOtherMultiplesOfThree
{
    subject.countValue = 6;
    assertThat(subject.response, equalTo(@"fizz"));
}

- (void)testItReturnsBuzzForMultiplesOfFive
{
    subject.countValue = 5;
    assertThat(subject.response, equalTo(@"buzz"));
}

- (void)testItReturnsBuzzForOtherMultiplesOfFive
{
    subject.countValue = 10;
    assertThat(subject.response, equalTo(@"buzz"));
}

- (void)testItReturnsFizzBuzzForMultiplesOfThreeAndFive
{
    subject.countValue = 15;
    assertThat(subject.response, equalTo(@"fizzbuzz"));
}

- (void)testItReturnsFizzBuzzForOtherMultiplesOfThreeAndFive
{
    subject.countValue = 30;
    assertThat(subject.response, equalTo(@"fizzbuzz"));
}

@end
