//
//  Scene.m
//  DemoOOP
//
//  Created by techmaster on 10/4/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "Scene.h"
#import "Cat.h"
#import "Dog.h"
#import "Mouse.h"
@implementation Scene
-(void) initAnimal{
    Cat *cat = [[Cat alloc] initWithName:@"Cat A"];
    Dog *dog = [[Dog alloc] initWithName:@"Dog A"];
    Mouse *mouse = [[Mouse alloc] initWithName:@"Mouse A"];
    self.animals =[NSMutableArray arrayWithArray: @[cat,dog,mouse]];
    
}
-(void) dogAttackCat{
    Dog *dog = self.animals[1];
    [dog attack];
}
-(void) catAttackMouse{
    Cat *cat = self.animals[0];
    [cat attack];
}
-(void) animalStop{
    Dog *dog = self.animals[1];
    [dog stop];
    Cat *cat = self.animals[0];
    [cat stop];
    Mouse *mouse = self.animals[2];
    [mouse stop];
}
@end
