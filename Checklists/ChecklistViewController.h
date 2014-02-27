//
//  ChecklistsViewController.h
//  Checklists
//
//  Created by Derek Bassett on 2/23/14.
//  Copyright (c) 2014 Two Cavemen LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ItemDetailViewController.h"

@class Checklist;

@interface ChecklistViewController : UITableViewController
    <ItemDetailViewControllerDelegate>

@property (nonatomic, strong) Checklist *checklist;
@end
