//
//  DieLabel.m
//  Farkle
//
//  Created by Efrén Reyes Torres on 7/30/14.
//  Copyright (c) 2014 Efrén Reyes Torres. All rights reserved.
//

#import "DieLabel.h"

@implementation DieLabel

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

#pragma mark Actions
-(IBAction)onTapped:(id)sender {
    NSLog(@"Lable tapped");
    [self.delegate roll];
}

@end
