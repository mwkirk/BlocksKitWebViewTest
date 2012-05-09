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
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
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
    
    UINavigationController *nc = [[UINavigationController alloc] initWithRootViewController:vc];
    [vc release];
    
    [self presentModalViewController:nc animated:YES];
    [nc release];
}

@end
