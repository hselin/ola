//
//  FoodItem.h
//  Ola
//
//  Created by Albert Chen on 11/23/14.
//  Copyright (c) 2014 cs147. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FoodItem : NSObject

@property (strong, nonatomic) NSString *name;
@property (nonatomic) NSUInteger carbCount;

-(id)initWithName:(NSString *)name andCarbCount:(NSUInteger)carbCount;

@end
