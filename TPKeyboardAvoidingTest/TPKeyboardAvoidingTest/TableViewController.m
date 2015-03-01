//
//  TableViewController.m
//  TPKeyboardAvoidingTest
//
//  Created by 杨启晖 on 15/3/1.
//  Copyright (c) 2015年 NationSky. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:identifier];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

static NSString *identifier = @"cell";
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
    cell.textLabel.text = [NSString stringWithFormat:@"%d",indexPath.row];
    
    UITextField *textField = [[UITextField alloc]initWithFrame:CGRectMake(0, 0, 50, 40)];
    textField.backgroundColor = [UIColor blackColor];
    cell.accessoryView = textField;
    
    return cell;
}


@end
