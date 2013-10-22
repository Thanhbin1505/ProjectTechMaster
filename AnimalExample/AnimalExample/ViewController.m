//
//  ViewController.m
//  AnimalExample
//
//  Created by Apple on 10/22/13.
//  Copyright (c) 2013 Apple. All rights reserved.
//

#import "ViewController.h"
#import "GameManager.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.game = [GameManager new];
    [self.game initGame];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)startGame:(id)sender {
    [self.game startGame];
}
- (IBAction)stopGame:(id)sender {
    [self.game pauseGame];
}
- (IBAction)resumeGame:(id)sender {
    [self.game resumeGame];
}
- (IBAction)endGame:(id)sender {
    [self.game endGame];
}

@end
