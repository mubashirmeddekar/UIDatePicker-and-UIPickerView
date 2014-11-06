//
//  GestureViewController.m
//  Gestures
//
//  Created by Mubashir Meddekar on 6/09/2014.
//  Copyright (c) 2014 Mubashir Meddekar. All rights reserved.
//

#import "GestureViewController.h"

@interface GestureViewController ()

@end

@implementation GestureViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(onTapPressed)];
    tap.numberOfTapsRequired = 1;
    [self.view addGestureRecognizer:tap];
    
    UIPinchGestureRecognizer *myPinch = [[UIPinchGestureRecognizer alloc]initWithTarget:self action:@selector(onPinched)];
    [self.view addGestureRecognizer:myPinch];
    
    UISwipeGestureRecognizer *mySwipe = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeDetected)];
    
    [self.view addGestureRecognizer:mySwipe];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onTapPressed{
    NSLog(@"Tap is pressed");
}

-(IBAction)onPinched{
    NSLog(@"Pinch is detected");
}

-(IBAction)swipeDetected
{
    NSLog(@"Swipe is Happened");
}
@end
