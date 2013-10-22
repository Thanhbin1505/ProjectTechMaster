//
//  ViewController.h
//  PlayAudio
//
//  Created by Apple on 10/22/13.
//  Copyright (c) 2013 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVAudioPlayer.h>
@interface ViewController : UIViewController{
    IBOutlet UILabel *name;
    AVAudioPlayer *audioPalyer;
}

@end
