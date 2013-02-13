//
//  SimpleBlockFactory.m
//  BlocksExample
//
//  Created by Tom Dolan on 2/9/13.
//  Copyright (c) 2013 Tom Dolan. All rights reserved.
//

#import "SimpleQuoteFactory.h"

@implementation SimpleQuoteFactory

+(NSString*)fetchRandomQuote
{
    QuoteBlock block = [SimpleQuoteFactory selectQuoteNumbered:(arc4random() % 3)];
    return block();
}

+(QuoteBlock)selectQuoteNumbered:(int)number
{
    QuoteBlock block = nil;
    switch (number) {
        case 0:
        {
            block = ^{
                return  @"Blocks are my favotite!";
            };
            break;
        }
        case 1:
        {
            block = ^{
                return @"Blocks are great!";
            };
            break;
        }
        case 2:
        {
            block = ^{
                return @"Blocks are powerful!";
            };
            break;
        }
        default:
            break;
    }
    return [block copy];
}
@end
