//
//  ViewController.m
//  GotPet
//
//  Created by David Tseng on 12/13/13.
//  Copyright (c) 2013 David Tseng. All rights reserved.
//

#import "ViewController.h"
#import "PetParsing.h"
#import "RecordPlus.h"
#import <SDWebImage/UIImageView+WebCache.h>
#import "PetCell.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)viewDidLoad{
    
    self.showArray = [NSArray arrayWithObjects:nil];
    [self.tableView registerNib:[UINib nibWithNibName:@"PetCell" bundle:nil]
         forCellReuseIdentifier:@"PetCell"];
    [PetParsing updateDataWithRecordArray:^(NSArray *array) {
        [[PData shared] setPetArray:array];
        [self performSelectorOnMainThread:@selector(refresh) withObject:Nil waitUntilDone:NO];
    }];
}

-(void)refresh{
    [self setShowArray:[[PData shared] petArray]];
    [self.tableView reloadData];
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
    return self.showArray.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 160.;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"PetCell";
    PetCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    // Configure the cell...
    RecordPlus *rp = [self.showArray objectAtIndex:indexPath.row];
    [cell setByRecordPlus:rp];

    return cell;
}



@end