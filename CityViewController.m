//
//  CityViewController.m
//  State&City
//
//  Created by tops on 3/18/16.
//  Copyright (c) 2016 tops. All rights reserved.
//

#import "CityViewController.h"

@interface CityViewController ()

@end

@implementation CityViewController
@synthesize tbl_vw,arr_ct;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    tbl_vw.dataSource=self;
    tbl_vw.delegate=self;
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return arr_ct.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=nil;
    cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    cell.textLabel.text=[[arr_ct objectAtIndex:indexPath.row]objectForKey:@"name"];
    cell.detailTextLabel.text=[[arr_ct objectAtIndex:indexPath.row]objectForKey:@"state"];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
