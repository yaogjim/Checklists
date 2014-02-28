//
//  DataModel.h
//  Checklists
//
//  Created by Derek Bassett on 2/26/14.
//  Copyright (c) 2014 Two Cavemen LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Checklist;

@interface DataModel : NSObject

@property (nonatomic, strong) NSMutableArray *lists;

- (void)saveChecklists;
- (NSInteger)indexOfSelectedChecklist;
- (void)setIndexOfSelectedChecklist:(NSInteger)index;
- (void)addChecklist:(Checklist *)checklist;
- (void)removeChecklistAtIndex:(NSInteger)index;
- (NSInteger)getChecklistCount;
- (void)sortChecklists;
+ (NSInteger)nextChecklistItemId;

@end
