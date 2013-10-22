//
//  Animal.h
//  AnimalExample
//
//  Created by Apple on 10/22/13.
//  Copyright (c) 2013 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject{

    @public
        NSString * _id;
        NSMutableArray *_voices;
        NSMutableArray *_postures;
    @protected
        BOOL _moveable;
}
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *origin;

- (id) initWithName: (NSString*) name;
- (id) initWithName:(NSString *)name andOrigin: (NSString*) origin;

@end
