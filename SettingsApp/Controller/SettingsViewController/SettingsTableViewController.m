//
//  SettingsTableViewController.m
//  SettingsApp
//
//  Created by KAWASHIMA Yoshiyuki on 2021/09/26.
//

#import "SettingsTableViewController.h"
#import "SettingsModel.h"

@interface SettingsTableViewController ()

@property (weak, nonatomic) IBOutlet UILabel *selectionLabel;

@end

@implementation SettingsTableViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    SettingsModel *model = [SettingsModel sharedInstance];
    self.selectionLabel.text = model.selectionModel.value;
}

@end
