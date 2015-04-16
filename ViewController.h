//
//  ViewController.h
//  CoreData
//
//  Created by Mubashir Meddekar on 16/04/15.
//  Copyright (c) 2015 Mubashir Meddekar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

