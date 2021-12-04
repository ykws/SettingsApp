//
//  SafariTableViewController.m
//  SettingsApp
//
//  Created by KAWASHIMA Yoshiyuki on 2021/12/03.
//

#import "SafariTableViewController.h"
#import "SettingsModel.h"

@interface SafariTableViewController ()

@property (weak, nonatomic) IBOutlet UILabel *searchEngineLabel;

@end

@implementation SafariTableViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    SettingsModel *model = [SettingsModel sharedInstance];
    self.searchEngineLabel.text = model.searchEngineModel.value;
}

@end
