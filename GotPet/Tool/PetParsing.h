//
//  PetParsing.h
//  GotPet
//
//  Created by David Tseng on 12/13/13.
//  Copyright (c) 2013 David Tseng. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^CompletionBlock)(void);
typedef void (^ArrayBlock)(NSArray* array);
typedef void (^RecordArrayBlock)(NSArray* array);

@interface PetParsing : NSObject

+(void)updateDataWithRecordArray:(RecordArrayBlock)finishBlock; //return records
+(void)updateDataWithArray:(ArrayBlock)finishBlock; //return dictionary



@end
