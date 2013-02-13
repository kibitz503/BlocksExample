//
//  ViewController.h
//  BlocksExample
//
//  Created by Tom Dolan on 2/9/13.
//  Copyright (c) 2013 Tom Dolan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *quoteLabel;
@property (weak, nonatomic) IBOutlet UIButton *quoteButton;
- (IBAction)buttonPressed:(id)sender;

@end
