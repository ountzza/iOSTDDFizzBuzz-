//
//  FizzBuzz.m
//  TDDFizzBuzz
//
//  Created by Pondd on 12/7/2557 BE.
//  Copyright (c) 2557 Pondd. All rights reserved.
//

#import "FizzBuzz.h"

@implementation FizzBuzz
- (NSString*)fizzBuzzOrNumber:(NSInteger)number{
    if (number%3 == 0)
        return @"fizz";
    else
        return [NSString stringWithFormat:@"%li",(long)number];
}
@end
