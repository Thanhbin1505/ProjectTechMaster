//
//  ViewController.m
//  PlayAudio
//
//  Created by Apple on 10/22/13.
//  Copyright (c) 2013 Apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController
BOOL isPlay = YES;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.imageView.alpha = 0;

    
}
- (void) viewWillAppear:(BOOL)animated
{
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"mp3Ex" ofType:@"mp3"]];
    NSError *error;
    audioPalyer = [[AVAudioPlayer alloc] initWithContentsOfURL: url error: &error];
    
    
    //init imageview
    [UIView animateWithDuration:2 animations:^{
        self.imageView.alpha = 1;
    } completion:^(BOOL finished) {
        [audioPalyer play];
        [UIView animateWithDuration:2.5 animations:^(void){
            [name setFrame:CGRectMake(135, 300, 50, 20)];
        } completion:^(BOOL finished){
            [audioPalyer play];
            [UIView animateWithDuration:2.5 animations:^(void){
                [name setFrame:CGRectMake(135, 300, 50, 20)];
            } completion:^(BOOL finished){
                
            }];
            
            isPlay = NO;
        }];

    }];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)demoPlayAudio:(id)sender {
   
    
    if (isPlay) {
        [audioPalyer play];
        [UIView animateWithDuration:2.5 animations:^(void){
            [name setFrame:CGRectMake(135, 300, 50, 20)];
        } completion:^(BOOL finished){
            
        }];
        
        isPlay = NO;
    }
    else {
        [audioPalyer stop];
        [UIView animateWithDuration:2.5 animations:^(void){
            [name setFrame:CGRectMake(-50, 300, 50, 20)];
        } completion:^(BOOL finished){
            
        }];
        
        isPlay = YES;
    }

}

@end
