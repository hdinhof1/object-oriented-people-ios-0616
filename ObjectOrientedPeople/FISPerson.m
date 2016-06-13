//
//  FISPerson.m
//  ObjectOrientedPeople
//
//  Created by Henry Dinhofer on 6/13/16.
//  Copyright © 2016 al-tyus.com. All rights reserved.
//

#import "FISPerson.h"

@interface FISPerson() //add @interface. ()parenthesis conclude private @interface section

//underneath @interface before @end redeclare properties as readwrite
@property (strong, nonatomic, readwrite) NSString *name;

@property (nonatomic, readwrite) NSUInteger ageInYears;

@property (nonatomic, readwrite) NSUInteger heightInInches;

@property (strong, nonatomic, readwrite) NSMutableArray *skills;

@end

@implementation FISPerson
//make sure FISPerson exists @implementation FISPerson , @implementation ClassName

-(instancetype)init{
    self = [self initWithName:@"Henry" ageInYears:23 heightInInches:71];
    return self;
}

-(instancetype)initWithName:(NSString *)name ageInYears:(NSUInteger)years{
    self = [self initWithName:name ageInYears:years heightInInches:67];
    return self;
}
-(instancetype)initWithName:(NSString *)name ageInYears:(NSUInteger)age heightInInches:(NSUInteger)height {
    self = [super init];
    if (self) {
        _name = name;
        _ageInYears = age;
        _heightInInches = height;
        _skills = [[NSMutableArray alloc] init];
    }
    return self;
}
-(NSString *)celebrateBirthday {
    self.ageInYears++;
    NSString *ordinal = [self ordinalForInteger:self.ageInYears];
    NSString *cheers = [NSString stringWithFormat:@"HAPPY %lu%@ BIRTHDAY, %@!!!",self.ageInYears, ordinal, self.name ];
    cheers = cheers.uppercaseString;
    NSLog(cheers);
    
    return cheers;
}
- (NSString *)ordinalForInteger:(NSUInteger)integer {
    NSString *ordinal = @"th";
    if (integer % 10 == 1 && integer % 100 != 11) {
        ordinal = @"st";
    } else if (integer % 10 == 2 && integer % 100 != 12) {
        ordinal = @"nd";
    } else if (integer % 10 == 3 && integer % 100 != 13) {
        ordinal = @"rd";
    }
    return ordinal;
}
-(void)learnSkillBash {
    if (![self.skills containsObject:@"bash"]) //containsObject so USEFUL FOR ARRAYS
    {
        [self.skills addObject:@"bash"];
    }
    
}
-(void)learnSkillXcode {
    if (![self.skills containsObject:@"Xcode"])
    {
        [self.skills addObject:@"Xcode"];

    }
    
}
-(void)learnSkillObjectiveC {
    if (![self.skills containsObject:@"Objective-C"])
    {
        [self.skills addObject:@"Objective-C"];
    }
}
-(void)learnSkillObjectOrientedProgramming {
    if (![self.skills containsObject:@"Object-Oriented Programming"])
    {
        [self.skills addObject:@"Object-Oriented Programming"];
    }
    
}
-(void)learnSkillInterfaceBuilder {
    if (![self.skills containsObject:@"Interface Builder"])
    {
        [self.skills addObject:@"Interface Builder"];
    }
    
}
-(BOOL)isQualifiedTutor {
    BOOL isQualified = NO;
    if (self.skills.count >= 4)
    {
        isQualified = YES;
    }
    
    return isQualified;
}
@end
