//
//  ArchRegu.m
//  DSYMTools
//
//  Created by Dobby on 2017/11/4.
//  Copyright © 2017年 answer. All rights reserved.
//

#import "ArchRegu.h"

@implementation ArchRegu

+ (NSString *)reguLoadAdress:(NSString *)targetString {
    // 正式表达式
    NSString *LAPatternm = @"0x\\w+";
    NSRegularExpression *exp = [[NSRegularExpression alloc] initWithPattern:LAPatternm options:NSRegularExpressionCaseInsensitive error:nil];
    // 执行正则表达式
    NSArray<  NSTextCheckingResult *> *results = [exp matchesInString:targetString options:0 range:NSMakeRange(0, targetString.length)];
    //从匹配结果拿到range,进行sub到字符串
    NSRange loadAddressRange = results.firstObject.range;
    NSString *loadAddress =  [targetString substringWithRange:loadAddressRange];
    NSLog(@"loadAddress %@",loadAddress);
    return loadAddress;
}

+ (NSString *)reguUUID:(NSString *)targetString {
    NSString *CUIDPatternm = @"\\w{32}";
    NSRegularExpression *reg = [[NSRegularExpression alloc] initWithPattern:CUIDPatternm options:NSRegularExpressionCaseInsensitive error:nil];
    NSArray<  NSTextCheckingResult *> *uidResults = [reg matchesInString:targetString options:0 range:NSMakeRange(0, targetString.length)];
    //从匹配结果拿到range,进行sub到字符串
    NSLog(@"%@",uidResults);
    NSRange CUIDRange = uidResults.firstObject.range;
    NSString *CUID =  [targetString substringWithRange:CUIDRange];
    NSLog(@"CUID %@",CUID);
    return CUID;
}

@end
