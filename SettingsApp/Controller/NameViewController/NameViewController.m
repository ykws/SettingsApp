//
//  NameViewController.m
//  SettingsApp
//
//  Created by KAWASHIMA Yoshiyuki on 2021/11/29.
//

#import "NameViewController.h"
#import "SettingsModel.h"

@interface NameViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@property (nonatomic) SettingsModel *model;

@end

@implementation NameViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.model = [SettingsModel sharedInstance];
    self.nameTextField.text = self.model.name;
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    self.model.name = self.nameTextField.text;
}

@end
