//
//  GameManager.h
//  DemoOOP
//
//  Created by techmaster on 10/4/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Scene.h"
@interface GameManager : NSObject
@property (nonatomic, strong) Scene *scene;
-(void) initGame;
- (void) startGame;
- (void) pauseGame;
- (void) resumeGame;
- (void) endGame;
@end
