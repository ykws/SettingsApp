//
//  AboutViewController.m
//  SettingsApp
//
//  Created by KAWASHIMA Yoshiyuki on 2021/11/29.
//

#import "AboutViewController.h"
#import "SettingsModel.h"

@interface AboutViewController ()

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end

@implementation AboutViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    SettingsModel *model = [SettingsModel sharedInstance];
    self.nameLabel.text = model.name;
}

@end
