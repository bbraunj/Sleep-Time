//
//  MorningViewController.m
//  Sleep Time
//
//  Created by Josh Braun on 12/28/12.
//  Copyright (c) 2012 Josh Braun. All rights reserved.
//

#import "MorningViewController.h"

@interface MorningViewController ()

@end

@implementation MorningViewController
@synthesize datePicker, toWakeUpAt, nineHours, sevenHalfHours, sixHours, fourHalfHours, threeHours, oneHalfHours;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        UITabBarItem *tbi = [self tabBarItem];
        [tbi setTitle: @"Morning"];
        [tbi setImage: [UIImage imageNamed: @"MorningIcon"]];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat: @"hh:mm a"];
    
    // use dateChanged: method when the value of the date picker has changed
    [datePicker addTarget: self action: @selector(dateChanged:) forControlEvents: UIControlEventValueChanged];
    
    NSString *text = [toWakeUpAt text];
    text = [text stringByAppendingFormat: @"%@:", [formatter stringFromDate: [NSDate date]]];
    [toWakeUpAt setText: text];
    
    [nineHours setText: [formatter stringFromDate: [NSDate dateWithTimeIntervalSinceNow: -33300]]];
    [sevenHalfHours setText: [formatter stringFromDate: [NSDate dateWithTimeIntervalSinceNow: -27900]]];
    [sixHours setText: [formatter stringFromDate: [NSDate dateWithTimeIntervalSinceNow: -22500]]];
    [fourHalfHours setText: [formatter stringFromDate: [NSDate dateWithTimeIntervalSinceNow: -17100]]];
    [threeHours setText: [formatter stringFromDate: [NSDate dateWithTimeIntervalSinceNow: -11700]]];
    [oneHalfHours setText: [formatter stringFromDate: [NSDate dateWithTimeIntervalSinceNow: -6300]]];
    
    // Set the background to Sleep Time Background.png
    [[self view] setBackgroundColor: [UIColor colorWithPatternImage: [UIImage imageNamed: @"Sleep Time Background"]]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)dateChanged:(id)sender
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat: @"hh:mm a"];
    
    [toWakeUpAt setText: [NSString stringWithFormat: @"To wake up at %@", [formatter stringFromDate: datePicker.date]]];
    
    [nineHours setText: [formatter stringFromDate: [datePicker.date dateByAddingTimeInterval: -33300]]];
    [sevenHalfHours setText: [formatter stringFromDate: [datePicker.date dateByAddingTimeInterval: -27900]]];
    [sixHours setText: [formatter stringFromDate: [datePicker.date dateByAddingTimeInterval: -22500]]];
    [fourHalfHours setText: [formatter stringFromDate: [datePicker.date dateByAddingTimeInterval: -17100]]];
    [threeHours setText: [formatter stringFromDate: [datePicker.date dateByAddingTimeInterval: -11700]]];
    [oneHalfHours setText: [formatter stringFromDate: [datePicker.date dateByAddingTimeInterval: -6300]]];
}

@end
