//
//  LoggingConfig.m
//  AppFuncUsageCountingDemo
//
//  Created by noc on 16/11/17.
//  Copyright © 2016年 yunyang088. All rights reserved.
//

#import "GLLogging.h"

@import UIKit;


@implementation GLLogging


+ (void)setupWithConfiguration{
    NSDictionary *configs = [self dictionaryFromUserStatisticsConfigPlist];
    for (NSString *className in configs) {
        Class clazz = NSClassFromString(className);
        NSDictionary *config = configs[className];
        if (config[GLLoggingTrackedEvents]) {
            for (NSDictionary *event in config[GLLoggingTrackedEvents]) {
                SEL selector = NSSelectorFromString(event[GLLoggingSelectorName]);
                [clazz aspect_hookSelector:selector
                               withOptions:AspectPositionAfter
                                usingBlock:^(id<AspectInfo> aspectInfo) {
                                    NSLog(@"%@-%@ Hooked!",event[GLLoggingEventName],event[GLLoggingFuncName]);
                                } error:NULL];
            }
        }
    }
}

+ (NSDictionary *)dictionaryFromUserStatisticsConfigPlist
{
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"FuncLog" ofType:@"plist"];
    NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:filePath];
    return dic;
}


@end




