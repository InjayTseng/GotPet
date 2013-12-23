//
//  PetCell.m
//  ClientTemplate
//
//  Created by injay on 13/4/23.
//  Copyright (c) 2013年 injay. All rights reserved.
//

#import "PetCell.h"
#import "RecordPlus.h"

@implementation PetCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        //[self.imageView setContentMode:UIViewContentModeRight];
    }
    return self;
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setByRecordPlus:(RecordPlus*)record{

    self.lbName.text = record.name;
    self.lbVariety.text = record.variety;
    [self.imgView setImageWithURL:[NSURL URLWithString:record.imageName]
                   placeholderImage:[UIImage imageNamed:@"1.png"]];

//    unsigned int outCount, i;
//    objc_property_t *properties = class_copyPropertyList([self class], &outCount);
//    for(i = 0; i < outCount; i++) {
//        objc_property_t property = properties[i];
//        const char *propName = property_getName(property);
//        if(propName) {
//            NSString *propertyName = [NSString stringWithUTF8String:propName];
//            [self setValue:[record valueForKey:propertyName] forKey:propertyName];
//        }
//    }
//    free(properties);
}

@end
