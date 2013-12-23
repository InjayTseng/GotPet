//
//  PData.h
//  GotPet
//
//  Created by David Tseng on 12/18/13.
//  Copyright (c) 2013 David Tseng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PData : NSObject

+(PData *) shared;
-(id)init;

@property (strong, nonatomic) NSArray *petArray;

@end
