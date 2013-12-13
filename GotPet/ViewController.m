//
//  ViewController.m
//  GotPet
//
//  Created by David Tseng on 12/13/13.
//  Copyright (c) 2013 David Tseng. All rights reserved.
//

#import "ViewController.h"
#import "PetParsing.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)viewDidLoad{
    [self.tableView registerNib:[UINib nibWithNibName:@"FancyCellView" bundle:nil]
         forCellReuseIdentifier:@"FancyCellView"];
    [PetParsing updateData:nil];
}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    // Return the number of rows in the section.
    return 50;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 204;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"FancyCellView";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
    
    return cell;
}



@end