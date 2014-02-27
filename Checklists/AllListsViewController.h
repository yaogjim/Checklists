//
//  AllListsViewController.h
//  Checklists
//
//  Created by Derek Bassett on 2/25/14.
//  Copyright (c) 2014 Two Cavemen LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ListDetailViewController.h"

@class DataModel;

@interface AllListsViewController : UITableViewController <ListDetailViewControllerDelegate>

@property (nonatomic, strong) DataModel *dataModel;

@end
