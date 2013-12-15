#import "Record.h"

@implementation Record

@synthesize acceptNum;
@synthesize age;
@synthesize animalAnlong;
@synthesize bodyweight;
@synthesize build;
@synthesize childreAnlong;
@synthesize chipNum;
@synthesize email;
@synthesize hairType;
@synthesize Id;
@synthesize imageName;
@synthesize isSterilization;
@synthesize name;
@synthesize note;
@synthesize phone;
@synthesize reason;
@synthesize resettlement;
@synthesize sex;
@synthesize type;
@synthesize variety;

- (void)dealloc {

    [acceptNum release], acceptNum = nil;
    [age release], age = nil;
    [animalAnlong release], animalAnlong = nil;
    [bodyweight release], bodyweight = nil;
    [build release], build = nil;
    [childreAnlong release], childreAnlong = nil;
    [chipNum release], chipNum = nil;
    [email release], email = nil;
    [hairType release], hairType = nil;
    [Id release], Id = nil;
    [imageName release], imageName = nil;
    [isSterilization release], isSterilization = nil;
    [name release], name = nil;
    [note release], note = nil;
    [phone release], phone = nil;
    [reason release], reason = nil;
    [resettlement release], resettlement = nil;
    [sex release], sex = nil;
    [type release], type = nil;
    [variety release], variety = nil;

    [super dealloc];

}

+ (Record *)instanceFromDictionary:(NSDictionary *)aDictionary {

    Record *instance = [[[Record alloc] init] autorelease];
    [instance setAttributesFromDictionary:aDictionary];
    return instance;

}

- (void)setAttributesFromDictionary:(NSDictionary *)aDictionary {

    if (![aDictionary isKindOfClass:[NSDictionary class]]) {
        return;
    }

    [self setValuesForKeysWithDictionary:aDictionary];

}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key {

    if ([key isEqualToString:@"AcceptNum"]) {
        [self setValue:value forKey:@"acceptNum"];
    } else if ([key isEqualToString:@"Age"]) {
        [self setValue:value forKey:@"age"];
    } else if ([key isEqualToString:@"AnimalAnlong"]) {
        [self setValue:value forKey:@"animalAnlong"];
    } else if ([key isEqualToString:@"Bodyweight"]) {
        [self setValue:value forKey:@"bodyweight"];
    } else if ([key isEqualToString:@"Build"]) {
        [self setValue:value forKey:@"build"];
    } else if ([key isEqualToString:@"ChildreAnlong"]) {
        [self setValue:value forKey:@"childreAnlong"];
    } else if ([key isEqualToString:@"ChipNum"]) {
        [self setValue:value forKey:@"chipNum"];
    } else if ([key isEqualToString:@"Email"]) {
        [self setValue:value forKey:@"email"];
    } else if ([key isEqualToString:@"HairType"]) {
        [self setValue:value forKey:@"hairType"];
    } else if ([key isEqualToString:@"_id"]) {
        [self setValue:value forKey:@"Id"];
    } else if ([key isEqualToString:@"ImageName"]) {
        [self setValue:value forKey:@"imageName"];
    } else if ([key isEqualToString:@"IsSterilization"]) {
        [self setValue:value forKey:@"isSterilization"];
    } else if ([key isEqualToString:@"Name"]) {
        [self setValue:value forKey:@"name"];
    } else if ([key isEqualToString:@"Note"]) {
        [self setValue:value forKey:@"note"];
    } else if ([key isEqualToString:@"Phone"]) {
        [self setValue:value forKey:@"phone"];
    } else if ([key isEqualToString:@"Reason"]) {
        [self setValue:value forKey:@"reason"];
    } else if ([key isEqualToString:@"Resettlement"]) {
        [self setValue:value forKey:@"resettlement"];
    } else if ([key isEqualToString:@"Sex"]) {
        [self setValue:value forKey:@"sex"];
    } else if ([key isEqualToString:@"Type"]) {
        [self setValue:value forKey:@"type"];
    } else if ([key isEqualToString:@"Variety"]) {
        [self setValue:value forKey:@"variety"];
    } else {
        [super setValue:value forUndefinedKey:key];
    }

}



@end
