//
//  ChecklistsViewController.m
//  Checklists
//
//  Created by Derek Bassett on 2/23/14.
//  Copyright (c) 2014 Two Cavemen LLC. All rights reserved.
//

#import "ChecklistsViewController.h"
#import "ChecklistItem.h"

@interface ChecklistsViewController ()

@end

@implementation ChecklistsViewController
{
    NSMutableArray *_items;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _items = [[NSMutableArray alloc] initWithCapacity:20];
    
    ChecklistItem *item;
    
    item = [[ChecklistItem alloc] init];
    item.text = @"Walk the dog";
    item.checked = NO;
    [_items addObject:item];
    
    item = [[ChecklistItem alloc] init];
    item.text = @"Brush teeth";
    item.checked = YES;
    [_items addObject:item];
    
    item = [[ChecklistItem alloc] init];
    item.text = @"Learn iOS development";
    item.checked = YES;
    [_items addObject:item];
    
    item = [[ChecklistItem alloc] init];
    item.text = @"Soccer practice";
    item.checked = NO;
    [_items addObject:item];
    
    item = [[ChecklistItem alloc] init];
    item.text = @"Eat ice cream";
    item.checked = YES;
    [_items addObject:item];
    
    item = [[ChecklistItem alloc] init];
    item.text = @"Find a job";
    item.checked = NO;
    [_items addObject:item];
    
    item = [[ChecklistItem alloc] init];
    item.text = @"Love my girls";
    item.checked = YES;
    [_items addObject:item];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_items count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
    cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ChecklistItem *item = _items[indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ChecklistItem"];

    [self configureTextForCell:cell withChecklistItem:item];
    [self configureCheckmarkForCell:cell withChecklistItem:item];
    return cell;
}

- (void)tableView:(UITableView *)tableView
    didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    ChecklistItem *item = _items[indexPath.row];
    [item toggleChecked];
    
    [self configureCheckmarkForCell:cell withChecklistItem:item];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
/*
- (IBAction)addItem
{
    NSInteger newRowIndex = [_items count];
    
    ChecklistItem *item = [[ChecklistItem alloc] init];
    item.text = @"I am a new row";
    item.checked = NO;
    [_items addObject:item];
    
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:newRowIndex inSection:0];
    NSArray *indexPaths = @[indexPath];
    [self.tableView insertRowsAtIndexPaths:indexPaths withRowAnimation:UITableViewRowAnimationAutomatic];
}
 */

-(void)tableView:(UITableView *)tableView
    commitEditingStyle:(UITableViewCellEditingStyle)editingStyle
    forRowAtIndexPath:(NSIndexPath *)indexPath
{
    [_items removeObjectAtIndex:indexPath.row];
    
    NSArray *indexPaths = @[indexPath];
    [tableView deleteRowsAtIndexPaths:indexPaths withRowAnimation:UITableViewRowAnimationAutomatic];
}

-(void)configureTextForCell:(UITableViewCell *)cell withChecklistItem:(ChecklistItem *)item
{
    UILabel *label = (UILabel*)[cell viewWithTag:1000];
    label.text = item.text;
}

-(void)configureCheckmarkForCell:(UITableViewCell *)cell
               withChecklistItem:(ChecklistItem *)item
{
    if(item.checked) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    } else {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
}

@end
