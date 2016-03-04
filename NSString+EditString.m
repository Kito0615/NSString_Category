//
//  NSString+EditString.m
//  NSStringCategory
//
//  Created by qianfeng on 15/10/18.
//  Copyright (c) 2015年 AnarL. All rights reserved.
//

#import "NSString+EditString.h"

@implementation NSString (EditString)

+ (NSString *)insertString:(NSString *)insertStr intoString:(NSString *)sourceStr beforeSubString:(NSString *)subString
{
    NSMutableString * copySourceString = [NSMutableString stringWithString:sourceStr];
    
    NSRange subStringRange = [copySourceString rangeOfString:subString options:NSBackwardsSearch range:NSMakeRange(0, sourceStr.length)];
    
    while (subStringRange.location != NSNotFound) {
        NSRange lastRange = subStringRange;
        
        [copySourceString insertString:insertStr atIndex:lastRange.location];
        
        subStringRange = [copySourceString rangeOfString:subString options:NSBackwardsSearch range:NSMakeRange(0, lastRange.location)];
        
    }
    return copySourceString;

}


+ (NSString *)insertString:(NSString *)insertStr intoString:(NSString *)sourceStr afterSubString:(NSString *)subString
{
    NSMutableString * copySourceString = [NSMutableString stringWithString:sourceStr];
    
    NSRange subStringRange = [copySourceString rangeOfString:subString options:NSBackwardsSearch range:NSMakeRange(0, sourceStr.length)];
    
    while (subStringRange.location != NSNotFound) {
        NSRange lastRange = subStringRange;
        
        [copySourceString insertString:insertStr atIndex:lastRange.location + lastRange.length];
        
        subStringRange = [copySourceString rangeOfString:subString options:NSBackwardsSearch range:NSMakeRange(0, lastRange.location)];
    }
    
    return copySourceString;
}

+ (NSString *)removeSubString:(NSString *)subString fromString:(NSString *)oldString inRange:(NSRange)range
{
    NSMutableString * newString = [NSMutableString stringWithString:oldString];
    
    NSRange subStringRange = [newString rangeOfString:subString options:NSBackwardsSearch range:range];
    
    while (subStringRange.location != NSNotFound) {
        [newString deleteCharactersInRange:subStringRange];
        subStringRange = [newString rangeOfString:subString options:NSBackwardsSearch range:NSMakeRange(0, subStringRange.location)];
    }
    
    return newString;
    
}

+ (NSString *)removeAllSubString:(NSString *)subString fromString:(NSString *)oldString
{
    return [NSString removeSubString:subString fromString:oldString inRange:NSMakeRange(0, oldString.length)];
}



@end
