//
//  DieLabel.h
//  Farkle
//
//  Created by Efrén Reyes Torres on 7/30/14.
//  Copyright (c) 2014 Efrén Reyes Torres. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol DieLabelDelegate
-(void)didChooseDie:(id)dieLabel;
@end

@interface DieLabel : UILabel
@property id <DieLabelDelegate> delegate;
@property BOOL isSelected;
-(void)roll;
@end
