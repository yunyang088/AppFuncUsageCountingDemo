//
//  LoggingConfig.h
//  AppFuncUsageCountingDemo
//
//  Created by noc on 16/11/17.
//  Copyright © 2016年 yunyang088. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Aspects.h"

static NSString *GLLoggingTrackedEvents = @"GLLoggingTrackedEvents";
static NSString *GLLoggingEventName = @"GLLoggingEventName";
static NSString *GLLoggingFuncName = @"GLLoggingFuncName";
static NSString *GLLoggingSelectorName = @"GLLoggingSelectorName";

@interface GLLogging : NSObject

+ (void)setupWithConfiguration;

@end
