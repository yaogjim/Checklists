//
//  AddItemViewController.h
//  Checklists
//
//  Created by Derek Bassett on 2/24/14.
//  Copyright (c) 2014 Two Cavemen LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ItemDetailViewController;
@class ChecklistItem;

@protocol ItemDetailViewControllerDelegate <NSObject>

-(void)itemDetailViewControllerDidCancel:(ItemDetailViewController *)controller;

-(void)itemDetailViewController:(ItemDetailViewController *)controller
        didFinishAddingItem:(ChecklistItem *)item;

-(void)itemDetailViewController:(ItemDetailViewController *)controller
        didFinishEditingItem:(ChecklistItem *)item;

@end

@interface ItemDetailViewController : UITableViewController<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneBarButton;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (nonatomic, weak) id <ItemDetailViewControllerDelegate> delegate;
@property (nonatomic, strong) ChecklistItem *itemToEdit;
@property (nonatomic, weak) IBOutlet UISwitch *switchControl;
@property (nonatomic, weak) IBOutlet UILabel *dueDateLabel;

- (IBAction)cancel;
- (IBAction)done;

@end
