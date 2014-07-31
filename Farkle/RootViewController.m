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
@property (strong, nonatomic) IBOutlet DieLabel *dieLabel2;
@property (strong, nonatomic) IBOutlet DieLabel *dieLabel3;
@property (strong, nonatomic) IBOutlet DieLabel *dieLabel4;
@property (strong, nonatomic) IBOutlet DieLabel *dieLabel5;
@property (strong, nonatomic) IBOutlet DieLabel *dieLabel6;
@property BOOL isRolled;
@property NSMutableArray *dice;
@end

@implementation RootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.dieLabel1.delegate = self;
    self.dieLabel2.delegate = self;
    self.dieLabel3.delegate = self;
    self.dieLabel4.delegate = self;
    self.dieLabel5.delegate = self;
    self.dieLabel6.delegate = self;
    self.isRolled = NO;
    self.dice = [NSMutableArray array];
}

- (IBAction)onRollButtonPressed:(id)sender {
self.isRolled = YES;
    DieLabel *label;
    for (UIView *view in self.view.subviews) {
        if ([view isKindOfClass:[DieLabel class]]) {
            label = (DieLabel*)view;
            if ([self.dice containsObject:label]) {
                [self.dice removeObject:label];
                label.backgroundColor = [UIColor whiteColor];
                label.isSelected = NO;
            } else {
                [label roll];
            }
        }
    }
}

#pragma mark DieLabel delegate methods
-(void)didChooseDie:(id)dieLabel {
    if (self.isRolled) {
        DieLabel *dl = (DieLabel*)dieLabel;
        if (dl.isSelected) {
            [self.dice removeObject:dl];
            dl.backgroundColor = [UIColor whiteColor];
            dl.isSelected = NO;
        } else {
            [self.dice addObject:dl];
            dl.backgroundColor = [UIColor brownColor];
            dl.isSelected = YES;
        }
    }
}

@end
