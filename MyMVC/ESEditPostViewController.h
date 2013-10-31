//
//  ESEditPostViewController.h
//  MyMVC
//
//  Created by Eduardo Sierra on 10/29/13.
//  Copyright (c) 2013 Sierra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ESPost.h"
#import "ESPostViewController.h"

@interface ESEditPostViewController : UIViewController <AddPost, UITextFieldDelegate>

@property (nonatomic, weak) IBOutlet UITextField *myUsername;
@property (nonatomic, weak) IBOutlet UITextField *myTitle;
@property (nonatomic, weak) IBOutlet UITextField *myContent;

@property (nonatomic, weak) NSString *stringmyUsername;
@property (nonatomic, weak) NSString *stringmyTitle;
@property (nonatomic, weak) NSString *stringmyContent;

@property (nonatomic, weak) NSIndexPath *index;

@property (nonatomic, weak) id delegate;

- (IBAction)edit:(id)sender;


@end
