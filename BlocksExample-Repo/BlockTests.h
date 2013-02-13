//
//  BlockTests.h
//  BlocksExample
//
//  Created by Tom Dolan on 2/10/13.
//  Copyright (c) 2013 Tom Dolan. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef int (^MultiplicationBlock) (int, int);

@interface BlockTests : NSObject

-(void)runAllTests;

@end
