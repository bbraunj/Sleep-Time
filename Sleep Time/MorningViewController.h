//
//  MorningViewController.h
//  Sleep Time
//
//  Created by Josh Braun on 12/28/12.
//  Copyright (c) 2012 Josh Braun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MorningViewController : UIViewController

@property (nonatomic, weak) IBOutlet UIDatePicker *datePicker;
@property (nonatomic, weak) IBOutlet UILabel *toWakeUpAt;
@property (nonatomic, weak) IBOutlet UILabel *nineHours;
@property (nonatomic, weak) IBOutlet UILabel *sevenHalfHours;
@property (nonatomic, weak) IBOutlet UILabel *sixHours;
@property (nonatomic, weak) IBOutlet UILabel *fourHalfHours;
@property (nonatomic, weak) IBOutlet UILabel *threeHours;
@property (nonatomic, weak) IBOutlet UILabel *oneHalfHours;

-(IBAction)dateChanged:(id)sender;

@end
