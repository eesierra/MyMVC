//
//  ESPostViewController.h
//  MyMVC
//
//  Created by Eduardo Sierra on 10/23/13.
//  Copyright (c) 2013 Sierra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ESPostViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, weak) IBOutlet UITextField *myUsername;
@property (nonatomic, weak) IBOutlet UITextField *myTitle;
@property (nonatomic, weak) IBOutlet UITextField *myContent;

@property (nonatomic, weak) IBOutlet UIButton *myPost;

- (IBAction)post:(id)sender;


@end
