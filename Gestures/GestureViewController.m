//
//  GestureViewController.m
//  Gestures
//
//  Created by Mubashir Meddekar on 6/09/2014.
//  Copyright (c) 2014 Mubashir Meddekar. All rights reserved.
//

#import "GestureViewController.h"

@interface GestureViewController ()
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *myTapGesture;

@end

@implementation GestureViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UITapGestureRecognizer *myTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(onTapPressed)];
    myTap.numberOfTapsRequired = 1;
//    [self.view addGestureRecognizer:myTap];
    
    UIPinchGestureRecognizer *myPinch = [[UIPinchGestureRecognizer alloc]initWithTarget:self action:@selector(onPinched)];
    [self.view addGestureRecognizer:myPinch];
    
    UISwipeGestureRecognizer *mySwipe = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeDetected)];
    mySwipe.direction = UISwipeGestureRecognizerDirectionUp;
    [self.view addGestureRecognizer:mySwipe];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)onTapPressed{
    NSLog(@"Tap is pressed");
//    [textField resignFirstResponder];
}
- (IBAction)testTap:(id)sender {
    NSLog(@"My New Tap is Pressed");
}

-(void)onPinched{
    NSLog(@"Pinch is detected");
}

-(void)swipeDetected
{
    NSLog(@"Swipe is Happened");
}
@end
