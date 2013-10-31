//
//  ESPostViewController.h
//  MyMVC
//
//  Created by Eduardo Sierra on 10/23/13.
//  Copyright (c) 2013 Sierra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ESPost.h"

@protocol AddPost <NSObject>
@optional

- (void)addNewPost:(ESPost *)theNewpost;
- (void)editPost:(ESPost *)post index:(NSIndexPath *)index;

@end


@interface ESPostViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, weak) IBOutlet UITextField *myUsername;
@property (nonatomic, weak) IBOutlet UITextField *myTitle;
@property (nonatomic, weak) IBOutlet UITextField *myContent;

@property (nonatomic, weak) IBOutlet UIBarButtonItem *myPost;

@property (nonatomic, weak) id delegate;

- (IBAction)post:(id)sender;


@end
