//
//  SearchEngineModel.m
//  SettingsApp
//
//  Created by KAWASHIMA Yoshiyuki on 2021/12/03.
//

#import "SearchEngineModel.h"

@implementation SearchEngineModel

+ (NSArray *)searchEngines {
    static NSMutableArray * _names;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _names = [NSMutableArray arrayWithCapacity:5];
        [_names insertObject:@"Google" atIndex:Google];
        [_names insertObject:@"Yahoo" atIndex:Yahoo];
        [_names insertObject:@"Bing" atIndex:Bing];
        [_names insertObject:@"DuckDuckGo" atIndex:DuckDuckGo];
        [_names insertObject:@"Ecosia" atIndex:Ecosia];
    });
    
    return _names;
}

+ (NSInteger)defaultRow {
    return 0;
}

- (NSString *)value {
    return [SearchEngineModel searchEngines][self.row];
}

@end
