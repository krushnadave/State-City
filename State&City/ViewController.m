//
//  ViewController.m
//  State&City
//
//  Created by tops on 3/18/16.
//  Copyright (c) 2016 tops. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize tbl_vw;
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    tbl_vw.dataSource=self;
    tbl_vw.delegate=self;
    
    
    NSURL *url=[NSURL URLWithString:@"https://raw.githubusercontent.com/nshntarora/Indian-Cities-JSON/master/cities.json"];
    NSData *data=[NSData dataWithContentsOfURL:url];
    
    arr_main=[NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    
    NSArray *arr_get_st=[arr_main valueForKey:@"state"];//Get All States
    
    NSOrderedSet *orderedSet = [NSOrderedSet orderedSetWithArray:arr_get_st];
    
    arr_st = [orderedSet array];//Remove Duplicate Values
    
    arr_st = [arr_st  sortedArrayUsingComparator:
                            ^NSComparisonResult(id obj1, id obj2){
                                //ascending order
                                return [obj1 compare:obj2];}];
    //Asending Order
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return arr_st.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=nil;
    cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    cell.textLabel.text=[arr_st objectAtIndex:indexPath.row];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSPredicate *prd=[NSPredicate predicateWithFormat:@"state==%@",[arr_st objectAtIndex:indexPath.row]];
    
    CityViewController *ct=[self.storyboard instantiateViewControllerWithIdentifier:@"CityViewController"];
    
    ct.arr_ct=[arr_main filteredArrayUsingPredicate:prd];
    
    [self.navigationController pushViewController:ct animated:YES];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
