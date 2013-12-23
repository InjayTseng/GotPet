//
//  PetCell.h
//  ClientTemplate
//
//  Created by injay on 13/4/23.
//  Copyright (c) 2013年 injay. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SDWebImage/UIImageView+WebCache.h>

@class RecordPlus;

@interface PetCell : UITableViewCell

@property (nonatomic, copy) NSString *acceptNum;
@property (nonatomic, copy) NSString *age;
@property (nonatomic, copy) NSString *animalAnlong;
@property (nonatomic, copy) NSString *bodyweight;
@property (nonatomic, copy) NSString *build;
@property (nonatomic, copy) NSString *childreAnlong;
@property (nonatomic, copy) NSString *chipNum;
@property (nonatomic, copy) NSString *email;
@property (nonatomic, copy) NSString *hairType;
@property (nonatomic, copy) NSNumber *Id;
@property (nonatomic, copy) NSString *imageName;
@property (nonatomic, copy) NSString *isSterilization;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *note;
@property (nonatomic, copy) NSString *phone;
@property (nonatomic, copy) NSString *reason;
@property (nonatomic, copy) NSString *resettlement;
@property (nonatomic, copy) NSString *sex;
@property (nonatomic, copy) NSString *type;
@property (nonatomic, copy) NSString *variety;

@property (nonatomic,strong) IBOutlet UILabel *lbName;
@property (nonatomic,strong) IBOutlet UILabel *lbVariety;
@property (nonatomic,strong) IBOutlet UILabel *lbAge;
@property (nonatomic,strong) IBOutlet UIImageView *imgView;

-(void)setByRecordPlus:(RecordPlus*)record;

@end
