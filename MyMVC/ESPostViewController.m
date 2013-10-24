//
//  ESPostViewController.m
//  MyMVC
//
//  Created by Eduardo Sierra on 10/23/13.
//  Copyright (c) 2013 Sierra. All rights reserved.
//

#import "ESPostViewController.h"
#import "ESPostsTableViewController.h"

@interface ESPostViewController ()

@end

@implementation ESPostViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.myUsername.delegate = self;
    self.myTitle.delegate = self;
    self.myContent.delegate = self;
    
    _myPost.hidden = YES;
    
}

- (IBAction)post:(id)sender
{
    ESPostsTableViewController *Post = [self.storyboard instantiateViewControllerWithIdentifier:@"ESPostsTableViewController"];
    
    Post.stringmyUsername = self.myUsername.text;
    Post.stringmyTitle = self.myTitle.text;
    Post.stringmyContent = self.myContent.text;
    
    [self presentViewController:Post animated:YES completion:nil];
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    return [textField resignFirstResponder];
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    _myPost.hidden = NO;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
