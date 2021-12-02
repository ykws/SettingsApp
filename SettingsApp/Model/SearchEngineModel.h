//
//  SearchEngineModel.h
//  SettingsApp
//
//  Created by KAWASHIMA Yoshiyuki on 2021/12/03.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum {
    Google,
    Yahoo,
    Bing,
    DuckDuckGo,
    Ecosia
} SearchEngineType;

@interface SearchEngineModel : NSObject

@property (nonatomic) NSInteger row;

+ (NSArray *)searchEngines;
+ (NSInteger)defaultRow;

- (NSString *)value;

@end

NS_ASSUME_NONNULL_END
