//
//  Checklist.h
//  Checklists
//
//  Created by Derek Bassett on 2/26/14.
//  Copyright (c) 2014 Two Cavemen LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Checklist : NSObject <NSCoding>

@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) NSMutableArray *items;
@property (nonatomic, copy) NSString *iconName;

- (int)countUncheckedItems;

@end
