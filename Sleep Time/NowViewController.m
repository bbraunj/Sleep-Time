//
//  NowViewController.m
//  Sleep Time
//
//  Created by Josh Braun on 12/28/12.
//  Copyright (c) 2012 Josh Braun. All rights reserved.
//

#import "NowViewController.h"

@interface NowViewController ()

@end

@implementation NowViewController
@synthesize nineHours, sevenHalfHours, sixHours, fourHalfHours, threeHours, oneHalfHours, timer;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        UITabBarItem *tabBar = [self tabBarItem];
        [tabBar setTitle: @"Now"];
        [tabBar setImage: [UIImage imageNamed: @"clock"]];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat: @"hh:mm a"];
    
    [nineHours setText: [formatter stringFromDate: [NSDate dateWithTimeIntervalSinceNow: 33300]]];
    [sevenHalfHours setText: [formatter stringFromDate: [NSDate dateWithTimeIntervalSinceNow: 27900]]];
    [sixHours setText: [formatter stringFromDate: [NSDate dateWithTimeIntervalSinceNow: 22500]]];
    [fourHalfHours setText: [formatter stringFromDate: [NSDate dateWithTimeIntervalSinceNow: 17100]]];
    [threeHours setText: [formatter stringFromDate: [NSDate dateWithTimeIntervalSinceNow: 11700]]];
    [oneHalfHours setText: [formatter stringFromDate: [NSDate dateWithTimeIntervalSinceNow: 6300]]];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(updateTimes:) userInfo:nil repeats:YES];
    
    // Set the background to Sleep Time Background.png
    [[self view] setBackgroundColor: [UIColor colorWithPatternImage: [UIImage imageNamed: @"Sleep Time Background"]]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    nineHours = nil;
    sevenHalfHours = nil;
    sixHours = nil;
    fourHalfHours = nil;
    threeHours = nil;
    oneHalfHours = nil;
}

-(IBAction)updateTimes:(id)sender
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat: @"hh:mm a"];
    
    [nineHours setText: [formatter stringFromDate: [NSDate dateWithTimeIntervalSinceNow: 33300]]];
    [sevenHalfHours setText: [formatter stringFromDate: [NSDate dateWithTimeIntervalSinceNow: 27900]]];
    [sixHours setText: [formatter stringFromDate: [NSDate dateWithTimeIntervalSinceNow: 22500]]];
    [fourHalfHours setText: [formatter stringFromDate: [NSDate dateWithTimeIntervalSinceNow: 17100]]];
    [threeHours setText: [formatter stringFromDate: [NSDate dateWithTimeIntervalSinceNow: 11700]]];
    [oneHalfHours setText: [formatter stringFromDate: [NSDate dateWithTimeIntervalSinceNow: 6300]]];
}

@end
