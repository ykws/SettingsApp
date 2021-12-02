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
        
        SelectionModel *selectionModel = [[SelectionModel alloc] init];
        selectionModel.row = 0;
        selectionModel.value = @"0";
        
        sharedInstance.selectionModel = selectionModel;
    });
    return sharedInstance;
}

@end
