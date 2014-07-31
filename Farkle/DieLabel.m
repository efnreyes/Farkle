//
//  DieLabel.m
//  Farkle
//
//  Created by Efrén Reyes Torres on 7/30/14.
//  Copyright (c) 2014 Efrén Reyes Torres. All rights reserved.
//

#import "DieLabel.h"

@implementation DieLabel

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.isSelected = NO;
    }
    return self;
}

-(void)roll {
    self.text = [NSString stringWithFormat:@"%d", arc4random()%6 + 1];
}

#pragma mark Actions
-(IBAction)onTapped:(id)sender {
    [self.delegate didChooseDie:self];
}

@end
