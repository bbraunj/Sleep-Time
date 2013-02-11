//
//  NowViewController.h
//  Sleep Time
//
//  Created by Josh Braun on 12/28/12.
//  Copyright (c) 2012 Josh Braun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NowViewController : UIViewController
@property IBOutlet UILabel *nineHours;
@property IBOutlet UILabel *sevenHalfHours;
@property IBOutlet UILabel *sixHours;
@property IBOutlet UILabel *fourHalfHours;
@property IBOutlet UILabel *threeHours;
@property IBOutlet UILabel *oneHalfHours;
@property NSTimer *timer;

-(IBAction)updateTimes:(id)sender;

@end
