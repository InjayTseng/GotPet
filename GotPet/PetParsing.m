//
//  PetParsing.m
//  GotPet
//
//  Created by David Tseng on 12/13/13.
//  Copyright (c) 2013 David Tseng. All rights reserved.
//

#import "PetParsing.h"
#import "JSONKit.h"

@implementation PetParsing

+(void)updateData:(CompletionBlock)finishBlock{
    
    NSString *api = @"http://60.199.253.136/api/action/datastore_search?resource_id=c57f54e2-8ac3-4d30-bce0-637a8968796e&limit=500";
    NSURL *url = [ NSURL URLWithString:api];
    NSURLRequest *req = [ NSURLRequest requestWithURL:url
                                          cachePolicy:NSURLRequestReloadIgnoringCacheData
                                      timeoutInterval:30.0];
    NSOperationQueue *queue = [[NSOperationQueue alloc] init];
    [NSURLConnection sendAsynchronousRequest:req queue:queue completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
        NSString* newStr = [[NSString alloc] initWithData:data
                                                 encoding:NSUTF8StringEncoding];
        
        NSDictionary *json = [newStr objectFromJSONString];
        NSArray* animalArray = [[json objectForKey:@"result"] objectForKey:@"records"];
        for (id obj in animalArray){
            
            NSLog(@"%@",[obj objectForKey:@"Name"]);
            
        }
        finishBlock();
    }];
}
@end
