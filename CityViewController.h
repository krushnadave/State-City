//
//  CityViewController.h
//  State&City
//
//  Created by tops on 3/18/16.
//  Copyright (c) 2016 tops. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CityViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property(retain,nonatomic)NSArray *arr_ct;

@property (weak, nonatomic) IBOutlet UITableView *tbl_vw;
@end
