//
//  NSString+EditString.h
//  NSStringCategory
//
//  Created by qianfeng on 15/10/18.
//  Copyright (c) 2015年 AnarL. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (EditString)


/**
 *  在一个字符串中某个子串前插入一个子串
 *
 *  @param insertStr 准备插入的子串
 *  @param sourceStr 原来的字符串
 *  @param subString 要插入的位置子串标志
 *
 *  @return 插入子串后的新字符串
 */
+ (NSString *)insertString:(NSString *)insertStr intoString:(NSString *)sourceStr beforeSubString:(NSString *)subString;

/**
 *  在一个字符串中某个子串前插入一个子串
 *
 *  @param insertStr 准备插入的子串
 *  @param sourceStr 原来的字符串
 *  @param subString 要插入的位置子串标志
 *
 *  @return 插入子串后的新字符串
 */
+ (NSString *)insertString:(NSString *)insertStr intoString:(NSString *)sourceStr afterSubString:(NSString *)subString;

/**
 *  删除一个字符串中的指定范围的某个子串
 *
 *  @param subString 子串
 *  @param oldString 原字符串
 *  @param range     指定范围
 *
 *  @return 新的字符串
 */
+ (NSString *)removeSubString:(NSString *)subString fromString:(NSString *)oldString inRange:(NSRange)range;

/**
 *  删除一个字符串的所有的指定子串
 *
 *  @param subString 子串
 *  @param oldString 原字符串
 *
 *  @return 新字符串
 */
+ (NSString *)removeAllSubString:(NSString *)subString fromString:(NSString *)oldString;
@end
