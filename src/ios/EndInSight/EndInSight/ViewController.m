//
//  ViewController.m
//  EndInSight
//
//  Created by EdwardIskenderian on 20/11/18.
//  Copyright © 2018 Iskenderian. All rights reserved.
//

#import <React/RCTRootView.h>

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)reactNativeActivated:(id)sender {
    NSLog(@"React Native is activated");
    NSURL *jsCodeLocation = [NSURL URLWithString:@"http://localhost:8081/index.bundle?platform=ios"];
    
    RCTRootView *rootView =
    [[RCTRootView alloc] initWithBundleURL: jsCodeLocation
                                moduleName: @"RootContainer"
                         initialProperties: @{}
                             launchOptions: nil];
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view = rootView;
    [self presentViewController:vc animated:YES completion:nil];
}

@end
