//
//  PData.m
//  GotPet
//
//  Created by David Tseng on 12/18/13.
//  Copyright (c) 2013 David Tseng. All rights reserved.
//

#import "PData.h"

@implementation PData

+(PData *) shared
{
    static PData *_sharedClient = nil;
    static dispatch_once_t oncePredicate;
    dispatch_once(&oncePredicate, ^{
        _sharedClient = [[self alloc] init];
    });
    return _sharedClient;
}

-(id)init{
    self = [super init];
    if (self) {

    }
    return self;
}

@end
