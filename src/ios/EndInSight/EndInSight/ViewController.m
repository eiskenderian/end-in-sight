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

- (IBAction)activateReactNative:(id)sender {
    NSLog(@"React Native is activated");
    NSURL *jsCodeLocation = [NSURL URLWithString:@"http://localhost:8081/index.bundle?platform=ios"];
    
    CGSize screenSize = [[UIScreen mainScreen] bounds].size;
    RCTRootView *rootView =
    [[RCTRootView alloc] initWithBundleURL: jsCodeLocation
                                moduleName: @"EndInSightApp"
                         initialProperties: @{@"height": @(floor(screenSize.height)), @"width": @(floor(screenSize.width))}
                             launchOptions: nil];
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view = rootView;
    [self presentViewController:vc animated:YES completion:nil];
}

@end
