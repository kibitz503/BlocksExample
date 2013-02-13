//
//  ViewController.m
//  BlocksExample
//
//  Created by Tom Dolan on 2/9/13.
//  Copyright (c) 2013 Tom Dolan. All rights reserved.
//

#import "ViewController.h"
#import "SimpleQuoteFactory.h"
#import "BlockTests.h"

@interface ViewController ()
-(void)generateNewText;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    BlockTests* blockTests = [[BlockTests alloc]init];
    [blockTests runAllTests];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)dealloc
{
    
}
- (IBAction)buttonPressed:(id)sender
{
    if (sender == self.quoteButton)
    {
        [self generateNewText];
    }
}

-(void)generateNewText
{
    self.quoteLabel.text = [SimpleQuoteFactory fetchRandomQuote];
}
@end
