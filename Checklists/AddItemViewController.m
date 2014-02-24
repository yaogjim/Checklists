//
//  AddItemViewController.m
//  Checklists
//
//  Created by Derek Bassett on 2/24/14.
//  Copyright (c) 2014 Two Cavemen LLC. All rights reserved.
//

#import "AddItemViewController.h"
#import "ChecklistItem.h"

@interface AddItemViewController ()

@end

@implementation AddItemViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self.textField becomeFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)cancel
{
    [self.delegate addItemViewControllerDidCancel:self];
//  [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

-(IBAction)done
{
    ChecklistItem *item = [[ChecklistItem alloc] init];
    item.text = self.textField.text;
    item.checked = NO;
    [self.delegate addItemViewController:self didFinishAddingItem:item];
    
    // NSLog(@"Contents of the text field: %@", self.textField.text);
    //  [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

-(NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}

-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    NSString *newText = [textField.text stringByReplacingCharactersInRange:range withString:string];    
    self.doneBarButton.enabled = ([newText length] > 0);
    return YES;
}

@end
