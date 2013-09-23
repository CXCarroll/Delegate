//
//  ViewController.m
//  DelegateTwo
//
//  Created by Cornelius Carroll on 9/23/13.
//  Copyright (c) 2013 Cornelius Carroll. All rights reserved.
//

#import "ViewController.h"
#import "BoringViewController.h"

@interface ViewController ()
{
    BoringViewController * boringViewController;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	boringViewController = [[BoringViewController alloc] initWithNibName:nil bundle:nil];
    [self.view addSubview:boringViewController.view];
    boringViewController.delegate = self;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark ColorDelegate

-(void)changeColor:(UIColor *)color
{
    self.view.backgroundColor = color;
}

@end
