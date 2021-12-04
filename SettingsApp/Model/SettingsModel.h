//
//  SettingsModel.h
//  SettingsApp
//
//  Created by KAWASHIMA Yoshiyuki on 2021/11/29.
//

#import <Foundation/Foundation.h>
#import "SearchEngineModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface SettingsModel : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) SearchEngineModel *searchEngineModel;

+ (instancetype)sharedInstance;

@end

NS_ASSUME_NONNULL_END
