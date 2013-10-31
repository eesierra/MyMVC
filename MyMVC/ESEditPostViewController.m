//
//  ESEditPostViewController.m
//  MyMVC
//
//  Created by Eduardo Sierra on 10/29/13.
//  Copyright (c) 2013 Sierra. All rights reserved.
//

#import "ESEditPostViewController.h"
#import "UIColor+Custom.h"

@interface ESEditPostViewController ()

@end

@implementation ESEditPostViewController

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
    
    self.myUsername.delegate = self;
    self.myTitle.delegate = self;
    self.myContent.delegate = self;
    
    self.myUsername.text = self.stringmyUsername;
    self.myTitle.text = self.stringmyTitle;
    self.myContent.text = self.stringmyContent;
    
    
	// Do any additional setup after loading the view.
}

- (IBAction)edit:(id)sender;
{
    NSString *theUsername = self.myUsername.text;
    NSString *theTitle = self.myTitle.text;
    NSString *theContent = self.myContent.text;
    
    ESPost *theNewpost = [[ESPost alloc] init];
    theNewpost.userName = theUsername;
    theNewpost.title = theTitle;
    theNewpost.content = theContent;
    theNewpost.timeStamp = [NSDate date];
    theNewpost.color = [UIColor randomColor];
    
    
    [self.delegate editPost:theNewpost index:self.index];
    [[self navigationController] popViewControllerAnimated:YES];
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    return [textField resignFirstResponder];
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation];
    
    if (orientation == UIInterfaceOrientationPortrait) {
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationDuration:0.1];
        [UIView setAnimationBeginsFromCurrentState:YES];
        self.view.frame = CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y - 40, self.view.frame.size.width, self.view.frame.size.height);
        
        [UIView commitAnimations];
    }
    
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation];
    
    if (orientation == UIInterfaceOrientationPortrait) {
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationDuration:0.1];
        [UIView setAnimationBeginsFromCurrentState:YES];
        self.view.frame = CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y + 40, self.view.frame.size.width, self.view.frame.size.height);
        
        [UIView commitAnimations];
    }
    
    
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
