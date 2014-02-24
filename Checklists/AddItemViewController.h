//
//  AddItemViewController.h
//  Checklists
//
//  Created by Derek Bassett on 2/24/14.
//  Copyright (c) 2014 Two Cavemen LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AddItemViewController;
@class ChecklistItem;

@protocol AddItemViewControllerDelegate <NSObject>

-(void)addItemViewControllerDidCancel:(AddItemViewController *)controller;

-(void)addItemViewController:(AddItemViewController *)controller
         didFinishAddingItem:(ChecklistItem *)item;
@end

@interface AddItemViewController : UITableViewController<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneBarButton;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (nonatomic, weak) id <AddItemViewControllerDelegate> delegate;

- (IBAction)cancel;
- (IBAction)done;

@end
