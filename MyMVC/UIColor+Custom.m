//
//  UIColor+Custom.m
//  MyMVC
//
//  Created by Eduardo Sierra on 10/28/13.
//  Copyright (c) 2013 Sierra. All rights reserved.
//

#import "UIColor+Custom.h"

@implementation UIColor (Custom)

+ (UIColor *)randomColor
{
    float red =  (CGFloat)arc4random()/(CGFloat)RAND_MAX;
    float blue = (CGFloat)arc4random()/(CGFloat)RAND_MAX;
    float green = (CGFloat)arc4random()/(CGFloat)RAND_MAX;
    
    UIColor *random = [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
    return random;
}


+ (UIColor *)lightColor:(UIColor *)original
{
    
    float red, blue, green, alpha;
    
    
    [original getRed:&red green:&green blue:&blue alpha:&alpha];
    UIColor *light = [[UIColor alloc] initWithRed:(red + .9) green:(green + .9) blue:(blue + .9) alpha:1.0];
    return light;
    
    
}

@end
