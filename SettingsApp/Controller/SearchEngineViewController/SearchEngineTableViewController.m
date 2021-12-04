//
//  SearchEngineTableViewController.m
//  SettingsApp
//
//  Created by KAWASHIMA Yoshiyuki on 2021/12/02.
//

#import "SearchEngineTableViewController.h"
#import "SettingsModel.h"
#import "SearchEngineModel.h"

@interface SearchEngineTableViewController ()

@property (nonatomic) SettingsModel *model;

@end

@implementation SearchEngineTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.model = [SettingsModel sharedInstance];
}

#pragma mark - Table view dataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [SearchEngineModel searchEngines].count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"searchEngineTableViewCell" forIndexPath:indexPath];
    cell.textLabel.text = [SearchEngineModel searchEngines][indexPath.row];
    cell.accessoryType = self.model.searchEngineModel.row == indexPath.row ? UITableViewCellAccessoryCheckmark : UITableViewCellAccessoryNone;
    
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    self.model.searchEngineModel.row = indexPath.row;
    
    [tableView reloadData];
}

@end
