//
//  FFTableViewController.m
//  PracticeCollapsibelContrance
//
//  Created by 9188iMac on 16/10/8.
//  Copyright © 2016年 9188iMac. All rights reserved.
//

#import "FFTableViewController.h"
#import "FFTableViewCell.h"
#import "UITableView+FDTemplateLayoutCell.h"
@interface FFTableViewController ()

@end

@implementation FFTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 7;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    FFTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"autoCell" forIndexPath:indexPath];
    cell.indexPath = indexPath;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 239;
}
@end
