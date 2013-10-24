//
//  ESPostTableViewCell.h
//  MyMVC
//
//  Created by Eduardo Sierra on 10/23/13.
//  Copyright (c) 2013 Sierra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ESPostTableViewCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *userName;

@property (nonatomic, weak) IBOutlet UILabel *title;

@property (nonatomic, weak) IBOutlet UILabel *content;

@property (nonatomic) IBOutlet UILabel *timeStamp;



@end
