//
//  ViewController.h
//  State&City
//
//  Created by tops on 3/18/16.
//  Copyright (c) 2016 tops. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CityViewController.h"

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    NSArray *arr_main;
    NSArray *arr_st;
}
@property (weak, nonatomic) IBOutlet UITableView *tbl_vw;
@end

