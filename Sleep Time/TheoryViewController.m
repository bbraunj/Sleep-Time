//
//  TheoryViewController.m
//  Sleep Time
//
//  Created by Josh Braun on 12/28/12.
//  Copyright (c) 2012 Josh Braun. All rights reserved.
//

#import "TheoryViewController.h"

@interface TheoryViewController ()

@end

@implementation TheoryViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        UITabBarItem *tbi = [self tabBarItem];
        [tbi setTitle: @"Theory"];
        [tbi setImage: [UIImage imageNamed: @"TheoryIcon"]];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    // Set the background to Sleep Time Background.png
    [[self view] setBackgroundColor: [UIColor colorWithPatternImage: [UIImage imageNamed: @"Sleep Time Background"]]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
