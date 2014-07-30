//
//  ViewController.m
//  Farkle
//
//  Created by Efrén Reyes Torres on 7/30/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "RootViewController.h"
#import "DieLabel.h"

@interface RootViewController () <DieLabelDelegate>
@property (strong, nonatomic) IBOutlet DieLabel *dieLabel1;

@end

@implementation RootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

#pragma mark DieLabel delegate methods
-(void)roll {
    
}

@end
