//
//  Scene.h
//  DemoOOP
//
//  Created by techmaster on 10/4/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Scene : NSObject
@property (nonatomic, strong) NSMutableArray *animals; //Chứa các con vật
@property (nonatomic, strong) NSMutableArray *backgrounds; //Chứa các ảnh nền nối tiếp nhau
-(void) initAnimal;
-(void) dogAttackCat;
-(void) catAttackMouse;
-(void) animalStop;
@end
