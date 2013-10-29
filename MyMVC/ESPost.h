//
//  ESPost.h
//  MyMVC
//
//  Created by Eduardo Sierra on 10/23/13.
//  Copyright (c) 2013 Sierra. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ESPost : NSObject

@property (nonatomic) NSString *userName;
@property (nonatomic) NSString *title;
@property (nonatomic) NSString *content;

@property (nonatomic) NSDate *timeStamp;

@property (nonatomic) UIColor *colors;


@end
