//
//  ESPostsTableViewController.h
//  MyMVC
//
//  Created by Eduardo Sierra on 10/23/13.
//  Copyright (c) 2013 Sierra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ESPostViewController.h"

@interface ESPostsTableViewController : UITableViewController <AddPost>

@property (nonatomic) NSMutableArray *posts;



@end
