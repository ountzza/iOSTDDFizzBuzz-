//
//  FizzBuzzTest.m
//  TDDFizzBuzz
//
//  Created by Pondd on 12/7/2557 BE.
//  Copyright (c) 2557 Pondd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "FizzBuzz.h"

@interface FizzBuzzTest : XCTestCase
@property FizzBuzz *fizzBuzz;
@end

@implementation FizzBuzzTest

- (void)setUp {
    [super setUp];
    self.fizzBuzz = [FizzBuzz new];
}

- (void)tearDown {
    self.fizzBuzz = nil;
    [super tearDown];
}

- (void)testIsOneOk {
    NSInteger result = [self.fizzBuzz fizzBuzzOrNumber:1];
    NSInteger expectedResult = 1;
    XCTAssertEqual(expectedResult, result);
}


@end
