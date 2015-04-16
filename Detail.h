//
//  Detail.h
//  CoreData
//
//  Created by Mubashir Meddekar on 16/04/15.
//  Copyright (c) 2015 Mubashir Meddekar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface Detail : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *nameText;
@property (strong, nonatomic) IBOutlet UITextField *versionText;
@property (strong, nonatomic) IBOutlet UITextField *companyText;

- (IBAction)save:(id)sender;
- (IBAction)cancel:(id)sender;

@end
