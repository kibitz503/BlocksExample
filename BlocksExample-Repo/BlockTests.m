//
//  BlockTests.m
//  BlocksExample
//
//  Created by Tom Dolan on 2/10/13.
//  Copyright (c) 2013 Tom Dolan. All rights reserved.
//

#import "BlockTests.h"

@interface BlockTests ()

-(void)scaleNumber;
-(void)blockVarScaleNum;
-(void)scaleNumberPointer;
-(void)blockDefTest;
-(void)playingWithMutableArrays;

@end

@implementation BlockTests

-(void)runAllTests
{
    [self scaleNumber];
    [self blockVarScaleNum];
    [self scaleNumberPointer];
    [self blockDefTest];
    [self playingWithMutableArrays];
}


-(void)scaleNumber
{
    int scalar = 3;
    int (^scale)(int) = ^(int number) {
        return number * scalar;
    };
    scalar++;
    NSLog(@"scaleNumber %d", scale(5));
}

-(void)scaleNumberInsideBlock
{
//    int scalar = 3;
//    int (^scale)(int) = ^(int number) {
//        scalar++; //Can't do this because it's a const 
//        return number * scalar;
//    };
//    
//    NSLog(@"scaleNumber %d", scale(5));
}

-(void)blockVarScaleNum
{
    __block int scalar = 3;
    int (^scale)(int) = ^(int number) {
        scalar++;
        return number * scalar;
    };
    scalar++;
    NSLog(@"blockVarScaleNum %d", scale(5));
}

-(void)scaleNumberPointer
{
    int *scalar = malloc(sizeof(int*));
    *scalar = 3;
    int (^scale)(int) = ^(int number) {
        return number * (*scalar);
    };
    *scalar = *scalar + 1;
    //Don't forget *scalar++ will just increment the pointer address
    //We want to change tha value the pointer points to 

    NSLog(@"scaleNumberPointer %d", scale(5));
    free(scalar);
}

-(void)blockDefTest
{
    int (^multiply)(int, int) = ^(int x, int y) {
        return x * y;
    };
    NSLog(@"blockDefTest %d", multiply(3,3));
    
    MultiplicationBlock block = ^(int x, int y) {
        return x * y;
    };
    NSLog(@"MultiplicationBlock %d", block(3,3));
}


-(void)playingWithMutableArrays
{
    NSMutableArray* testArray = [NSMutableArray arrayWithObjects:@"One", @"Two", @"Three", nil];
    NSMutableArray* (^removeValue) (NSMutableArray*) = ^(NSMutableArray* array){
        [array removeObjectAtIndex:1];
        return array;
    
    };
    for (NSString* string in removeValue(testArray)) {
        NSLog(@"testArray %@", string);
    }


    NSMutableArray* anotherTestArray = [NSMutableArray arrayWithObjects:@"One", @"Two", @"Three", nil];
    void (^anotherRemoveValue) (void) = ^{
        [anotherTestArray removeObjectAtIndex:1];
    };
    anotherRemoveValue();
    for (NSString* string in anotherTestArray) {
        NSLog(@"anotherTestArray %@", string);
    }
}




@end
