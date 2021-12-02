//
//  SelectionsTableViewController.m
//  SettingsApp
//
//  Created by KAWASHIMA Yoshiyuki on 2021/12/02.
//

#import "SelectionsTableViewController.h"
#import "SettingsModel.h"
#import "SelectionModel.h"

@interface SelectionsTableViewController ()

@property (weak, nonatomic) IBOutlet UITableViewCell *firstSelectionTableViewCell;
@property (weak, nonatomic) IBOutlet UITableViewCell *secondSelectionTableViewCell;
@property (weak, nonatomic) IBOutlet UITableViewCell *thirdSelectionTableViewCell;

@property (nonatomic) SettingsModel *model;

@end

@implementation SelectionsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.model = [SettingsModel sharedInstance];
    
    switch (self.model.selectionModel.row) {
        case 0:
            self.firstSelectionTableViewCell.accessoryType = UITableViewCellAccessoryCheckmark;
            break;
        case 1:
            self.secondSelectionTableViewCell.accessoryType = UITableViewCellAccessoryCheckmark;
            break;
        case 2:
            self.thirdSelectionTableViewCell.accessoryType = UITableViewCellAccessoryCheckmark;
            break;
    }
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    self.firstSelectionTableViewCell.accessoryType = UITableViewCellAccessoryNone;
    self.secondSelectionTableViewCell.accessoryType = UITableViewCellAccessoryNone;
    self.thirdSelectionTableViewCell.accessoryType = UITableViewCellAccessoryNone;
    
    self.model.selectionModel.row = indexPath.row;

    switch (indexPath.row) {
        case 0:
            self.model.selectionModel.value = self.firstSelectionTableViewCell.textLabel.text;
            self.firstSelectionTableViewCell.accessoryType = UITableViewCellAccessoryCheckmark;
            break;
        case 1:
            self.model.selectionModel.value = self.secondSelectionTableViewCell.textLabel.text;
            self.secondSelectionTableViewCell.accessoryType = UITableViewCellAccessoryCheckmark;
            break;
        case 2:
            self.model.selectionModel.value = self.thirdSelectionTableViewCell.textLabel.text;
            self.thirdSelectionTableViewCell.accessoryType = UITableViewCellAccessoryCheckmark;
            break;
    }
}

@end
