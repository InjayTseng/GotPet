#import <Foundation/Foundation.h>

@interface Record : NSObject {

    NSString *acceptNum;
    NSString *age;
    NSString *animalAnlong;
    NSString *bodyweight;
    NSString *build;
    NSString *childreAnlong;
    NSString *chipNum;
    NSString *email;
    NSString *hairType;
    NSNumber *Id;
    NSString *imageName;
    NSString *isSterilization;
    NSString *name;
    NSString *note;
    NSString *phone;
    NSString *reason;
    NSString *resettlement;
    NSString *sex;
    NSString *type;
    NSString *variety;

}

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

+ (Record *)instanceFromDictionary:(NSDictionary *)aDictionary;
- (void)setAttributesFromDictionary:(NSDictionary *)aDictionary;

@end
