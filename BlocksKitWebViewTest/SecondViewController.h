//
//  SecondViewController.h
//  BlocksKitWebViewTest
//
//  Created by Mark Kirk on 5/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController <UIWebViewDelegate>

@property (retain, nonatomic) IBOutlet UIWebView *webView;
@property (retain, nonatomic) IBOutlet UIButton *dismissButton;

- (IBAction)dismiss:(id)sender;

@end
