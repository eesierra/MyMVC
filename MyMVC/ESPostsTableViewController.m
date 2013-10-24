//
//  ESPostsTableViewController.m
//  MyMVC
//
//  Created by Eduardo Sierra on 10/23/13.
//  Copyright (c) 2013 Sierra. All rights reserved.
//

#import "ESPostsTableViewController.h"
#import "ESPost.h"
#import "ESPostTableViewCell.h"
#import "ESPostViewController.h"

@interface ESPostsTableViewController ()

@end

@implementation ESPostsTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    ESPost *post = [[ESPost alloc] init];
    post.userName = self.stringmyUsername;
    post.title = self.stringmyTitle;
    post.content = self.stringmyContent;
    post.timeStamp = [NSDate date];
   
    ESPost *post1 = [[ESPost alloc] init];
    post1.userName = @"rwilson";
    post1.title = @"I am a QB!";
    post1.content = @"We had a great game this Thursday! Go Seahawks!";
    post1.timeStamp = [NSDate date];
    
    ESPost *post2 = [[ESPost alloc] init];
    post2.userName = @"rtannehill";
    post2.title = @"Dolphins' QB!";
    post2.content = @"We're looking to bounce back against the Pats! Go Fins!";
    post2.timeStamp = [NSDate date];
    
    ESPost *post3 = [[ESPost alloc] init];
    post3.userName = @"emanning";
    post3.title = @"Go Giants!";
    post3.content = @"I'll try to go undefeated for the rest of the season!";
    post3.timeStamp = [NSDate date];
    
    ESPost *post4 = [[ESPost alloc] init];
    post4.userName = @"pmanning";
    post4.title = @"Eli's older brother";
    post4.content = @"We're doing something special in Denver! Watch out!";
    post4.timeStamp = [NSDate date];
    
    ESPost *post5 = [[ESPost alloc] init];
    post5.userName = @"arodgers";
    post5.title = @"From Green Bay!";
    post5.content = @"Looking to break some NFL records!";
    post5.timeStamp = [NSDate date];
    
    ESPost *post6 = [[ESPost alloc] init];
    post6.userName = @"gsmith";
    post6.title = @"All about the Jets";
    post6.content = @"Look out AFC East! There's a new QB in town";
    post6.timeStamp = [NSDate date];
    
    ESPost *post7 = [[ESPost alloc] init];
    post7.userName = @"lbjames";
    post7.title = @"Go Heat!";
    post7.content = @"Looking for a 3-peat. Let's see how this goes.";
    post7.timeStamp = [NSDate date];
    
    ESPost *post8 = [[ESPost alloc] init];
    post8.userName = @"kbryant";
    post8.title = @"Hello L.A.";
    post8.content = @"I'm coming back for another championship";
    post8.timeStamp = [NSDate date];
    
    ESPost *post9 = [[ESPost alloc] init];
    post9.userName = @"dhoward";
    post9.title = @"Moving to Houston";
    post9.content = @"Don't underestimate the Rockets, we want it all!";
    post9.timeStamp = [NSDate date];
    
    ESPost *post10 = [[ESPost alloc] init];
    post10.userName = @"lmessi";
    post10.title = @"Barça and Argentina";
    post10.content = @"Ready for this Saturday's Clasico vs. Real Madrid";
    post10.timeStamp = [NSDate date];
    
    _posts = [NSMutableArray arrayWithObjects: post, post1, post2, post3, post4, post5, post6, post7, post8, post9, post10, nil];
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return _posts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    ESPostTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.userName.text = [_posts[indexPath.row] userName];
    
    cell.title.text = [_posts[indexPath.row] title];
    
    cell.content.text = [_posts[indexPath.row] content];
    
    NSDateFormatter *date = [NSDateFormatter new];
    [date setDateFormat:@"MM/dd HH:MM"];
    NSString *postDate = [date stringFromDate:[_posts[indexPath.row] timeStamp]];
    cell.timeStamp.text = postDate;
    
    
    cell.detailTextLabel.text = [_posts[indexPath.row] title];
    
    return cell;
}

- (void)tableView: (UITableView *)tableView didSelectRowAtIndexPath: (NSIndexPath *)indexPath {
    
    [tableView setEditing:YES animated:YES];
    
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        
        [_posts removeObjectAtIndex:[indexPath row]];
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
