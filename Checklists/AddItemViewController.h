//
//  AddItemViewController.h
//  Checklists
//
//  Created by Derek Bassett on 2/24/14.
//  Copyright (c) 2014 Two Cavemen LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddItemViewController : UITableViewController<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneBarButton;
@property (weak, nonatomic) IBOutlet UITextField *textField;

- (IBAction)cancel;
- (IBAction)done;

@end
