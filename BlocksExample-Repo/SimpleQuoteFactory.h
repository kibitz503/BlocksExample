//
//  SimpleBlockFactory.h
//  BlocksExample
//
//  Created by Tom Dolan on 2/9/13.
//  Copyright (c) 2013 Tom Dolan. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NSString* (^QuoteBlock) (void);

@interface SimpleQuoteFactory : NSObject

+(QuoteBlock)selectQuoteNumbered:(int)number;
+(NSString*)fetchRandomQuote;

@end
