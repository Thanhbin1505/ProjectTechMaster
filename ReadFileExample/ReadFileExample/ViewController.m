//
//  ViewController.m
//  ReadFileExample
//
//  Created by Apple on 10/22/13.
//  Copyright (c) 2013 Apple. All rights reserved.
//

#import "ViewController.h"
#import "KeyCounting.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.nsmArray = [[NSMutableArray alloc] init];
    


    NSString *txtFilePath = [[NSBundle mainBundle] pathForResource:@"putin" ofType:@"txt"];//file name
	NSString *txtFileContents = [NSString stringWithContentsOfFile:txtFilePath encoding:NSUTF8StringEncoding error:NULL];//content file
	
	NSArray *array = [NSArray arrayWithObjects:@"MOSCOW",@"Relations",@"The",@"Syria", nil];
    
   
    for (NSString *str in array) {
        NSUInteger count = 0;
        NSUInteger length = [txtFileContents length];
        
        NSRange range = NSMakeRange(0, length);
        
        while(range.location != NSNotFound)
        {
            range = [txtFileContents rangeOfString: str options:0 range:range];
            if(range.location != NSNotFound)
            {
                range = NSMakeRange(range.location + range.length, length - (range.location + range.length));
                count++;
            }
        }
        
        NSLog(@"%@ - %d",str,count);
        
        KeyCounting *keyC = [KeyCounting new];
        keyC.count = count;
        keyC.key = str;
        [self.nsmArray addObject:keyC];
        
    }
    NSLog(@"Array Key:%@",self.nsmArray);

    for(int i=0;i<[self.nsmArray count] -1;i++) {
        for(int j=i+1;j<[self.nsmArray count];j++) {
            KeyCounting *keyCi = self.nsmArray[i];
            KeyCounting *keyCj = self.nsmArray[j];
            if(keyCi.count < keyCj.count) {
                //doi cho 2 thang cho nhau
                [self.nsmArray exchangeObjectAtIndex:i withObjectAtIndex:j];
            }
        }
    }
    
    for(int i=0;i<[self.nsmArray count];i++) {
        KeyCounting *keyCi = self.nsmArray[i];
        NSLog(@"Key:%@--> %d",keyCi.key,keyCi.count);
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
