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
    NSString* result = [self.fizzBuzz fizzBuzzOrNumber:1];
    NSInteger expectedResult = 1;
    XCTAssertEqual(expectedResult, result.integerValue);
}

-(void)testIsTwoOk {
    NSString* result = [self.fizzBuzz fizzBuzzOrNumber:2];
    NSInteger expectedResult = 2;
    XCTAssertEqual(expectedResult, result.integerValue);
}

-(void)testIsThreeFizz {
    NSString* result = [self.fizzBuzz fizzBuzzOrNumber:3];
    NSString* expectedResult = @"fizz";
    XCTAssertEqual(expectedResult, result);
}

-(void)testIsNineHundredNinetyOK {
    NSString* result = [self.fizzBuzz fizzBuzzOrNumber:997];
    NSInteger expectedResult = 997;
    XCTAssertEqual(expectedResult, result.integerValue);
}
-(void)testIsNineHundredNinetyNineFizz {
    NSString* result = [self.fizzBuzz fizzBuzzOrNumber:999];
    NSString* expectedResult = @"fizz";
    XCTAssertEqual(expectedResult, result);
}

@end
