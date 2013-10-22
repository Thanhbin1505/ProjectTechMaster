//
//  Animal.m
//  AnimalExample
//
//  Created by Apple on 10/22/13.
//  Copyright (c) 2013 Apple. All rights reserved.
//

#import "Animal.h"

@implementation Animal
- (id) initWithName: (NSString*) name
{
    self = [super init];
    if (self) {
        self.name = name;
    }
    return self;
}

- (id) initWithName:(NSString *)name andOrigin: (NSString*) origin
{
    if (self = [super init]) {
        self.name = name;
        self.origin = origin;
    }
    return self;
}

@end
