//
//  SettingsModel.m
//  SettingsApp
//
//  Created by KAWASHIMA Yoshiyuki on 2021/11/29.
//

#import "SettingsModel.h"

@implementation SettingsModel

+ (instancetype)sharedInstance {
    static SettingsModel *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[SettingsModel alloc] init];
    });
    return sharedInstance;
}

@end
