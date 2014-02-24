//
//  ChecklistsViewController.m
//  Checklists
//
//  Created by Derek Bassett on 2/23/14.
//  Copyright (c) 2014 Two Cavemen LLC. All rights reserved.
//

#import "ChecklistsViewController.h"

@interface ChecklistsViewController ()

@end

@implementation ChecklistsViewController
{
    NSString *_row0text;
    NSString *_row1text;
    NSString *_row2text;
    NSString *_row3text;
    NSString *_row4text;
    
    BOOL _row0checked;
    BOOL _row1checked;
    BOOL _row2checked;
    BOOL _row3checked;
    BOOL _row4checked;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _row0text = @"Walk the dog";
    _row1text = @"Brush teeth";
    _row2text = @"Learn iOS development";
    _row3text = @"Soccer practice";
    _row4text = @"Eat ice cream";
    
    _row1checked = YES;
    _row2checked = YES;
    _row4checked = YES;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
    cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ChecklistItem"];
    UILabel *label = (UILabel*)[cell viewWithTag:1000];
    
    if(indexPath.row == 0) {
        label.text = @"Walk the dog";
    } else if (indexPath.row == 1) {
        label.text = @"Brush my teeth";
    } else if (indexPath.row == 2) {
        label.text = @"Learn iOS development";
    } else if (indexPath.row == 3) {
        label.text = @"Soccer practice";
    } else if (indexPath.row == 4) {
        label.text = @"Eat ice cream";
    }
    [self configureCheckmarkForCell:cell atIndexPath:indexPath];
    return cell;
}

- (void)tableView:(UITableView *)tableView
    didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    
    if(indexPath.row == 0){
        _row0checked = !_row0checked;
    } else if (indexPath.row == 1){
        _row1checked = !_row1checked;
    } else if (indexPath.row == 2){
        _row2checked = !_row2checked;
    } else if (indexPath.row == 3){
        _row3checked = !_row3checked;
    } else if (indexPath.row == 4){
        _row4checked = !_row4checked;
    }
    
    [self configureCheckmarkForCell:cell atIndexPath:indexPath];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

-(void)configureCheckmarkForCell:(UITableViewCell *)cell
                     atIndexPath:(NSIndexPath *)indexPath
{
    BOOL isChecked = NO;
    if(indexPath.row == 0){
        isChecked = _row0checked;
    } else if (indexPath.row == 1){
        isChecked = _row1checked;
    } else if (indexPath.row == 2){
        isChecked = _row2checked;
    } else if (indexPath.row == 3){
        isChecked = _row3checked;
    } else if (indexPath.row == 4){
        isChecked = _row4checked;
    }
    
    if(isChecked) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    } else {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
}

@end
