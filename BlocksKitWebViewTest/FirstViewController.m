//
//  FirstViewController.m
//  BlocksKitWebViewTest
//
//  Created by Mark Kirk on 5/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@implementation FirstViewController

@synthesize button;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    [self setButton:nil];
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc {
    [button release];
    [super dealloc];
}

- (IBAction)tapMe:(id)sender
{
    SecondViewController *vc = [[SecondViewController alloc] init];    
    [self presentModalViewController:vc animated:YES];
    [vc release];
}

@end
