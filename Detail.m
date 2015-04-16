//
//  Detail.m
//  CoreData
//
//  Created by Mubashir Meddekar on 16/04/15.
//  Copyright (c) 2015 Mubashir Meddekar. All rights reserved.
//

#import "Detail.h"

@interface Detail ()

@end

@implementation Detail

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSManagedObjectContext *)managedObjectContext {
    NSManagedObjectContext *context = nil;
    id delegate = [[UIApplication sharedApplication]delegate];
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        context = [delegate managedObjectContext];
    }
    return context;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)save:(id)sender {
    NSManagedObjectContext *managedObject = [self managedObjectContext];
    NSManagedObject *newObject = [NSEntityDescription insertNewObjectForEntityForName:@"Device" inManagedObjectContext:managedObject];
    [newObject setValue:self.nameText.text forKey:@"name"];
    [newObject setValue:self.versionText.text forKey:@"version"];
    [newObject setValue:self.companyText.text forKey:@"company"];
    
    NSError *error = nil;
    // Save the object to persistent store
    if (![managedObject save:&error]) {
        NSLog(@"Can't Save! %@ %@", error, [error localizedDescription]);
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)cancel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
