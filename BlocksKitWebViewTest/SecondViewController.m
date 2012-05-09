//
//  SecondViewController.m
//  BlocksKitWebViewTest
//
//  Created by Mark Kirk on 5/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SecondViewController.h"

@implementation SecondViewController

@synthesize webView;
@synthesize dismissButton;

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
    
    // If the webView's delegate is NOT set, then the SecondViewController instances will 
    // be deallocated as expected when the modal view controller is dismissed (though, of
    // course, the didFinishLoadBlock won't be called).
    //
    // If the delegate is set, the block will be called, but the SecondViewController
    // instances will not be deallocated when the modal view controller is dismissed.
    // This can be seen easily by profiling with the Allocations Instrument (filter by
    // "viewcontroller").
    
    // Toggle behavior by un/commenting the line below
    self.webView.delegate = self;
    
    self.webView.didFinishLoadBlock = ^(UIWebView *aWebView) {
        NSLog(@"Finished load");
    };
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"foo.html" ofType:nil];
    NSURL *url = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
}

- (void)viewDidUnload
{
    self.webView.delegate = nil;
    [self setWebView:nil];
    [self setDismissButton:nil];
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc
{
    NSLog(@"Deallocating SecondViewController");
    self.webView.delegate = nil;
    [webView release];
    [dismissButton release];
    [super dealloc];
}

- (IBAction)dismiss:(id)sender
{
    [self dismissModalViewControllerAnimated:YES];
}

@end
