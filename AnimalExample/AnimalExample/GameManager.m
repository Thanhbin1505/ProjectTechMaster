//
//  GameManager.m
//  DemoOOP
//
//  Created by techmaster on 10/4/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "GameManager.h"
#import "Scene.h"
@implementation GameManager

-(void) initGame{
    self.scene = [Scene new];
    [self.scene initAnimal];
}
- (void) startGame{
    [self.scene dogAttackCat];
    [self.scene catAttackMouse];
}
- (void) pauseGame{
    [self.scene animalStop];
    
}
- (void) resumeGame{
    [self.scene dogAttackCat];
    [self.scene catAttackMouse];
}
- (void) endGame{
    NSLog(@"End Game");
}
@end
