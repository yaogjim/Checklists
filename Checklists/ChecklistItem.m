//
//  ChecklistItem.m
//  Checklists
//
//  Created by Derek Bassett on 2/24/14.
//  Copyright (c) 2014 Two Cavemen LLC. All rights reserved.
//

#import "ChecklistItem.h"

@implementation ChecklistItem

-(void)toggleChecked
{
    self.checked = !self.checked;
}

@end
