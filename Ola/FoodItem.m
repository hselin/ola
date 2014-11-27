//
//  FoodItem.m
//  Ola
//
//  Created by Albert Chen on 11/23/14.
//  Copyright (c) 2014 cs147. All rights reserved.
//

#import "FoodItem.h"

@implementation FoodItem

- (id)init
{
    return [self initWithName:@"" andCarbCount:0];
}

-(id)initWithName:(NSString *)name andCarbCount:(NSUInteger)carbCount
{
    self = [super init];
    self.name = name;
    self.carbCount = carbCount;
    return self;
}


@end
