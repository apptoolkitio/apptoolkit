//
//  RootViewController.m
//  AppToolkit
//
//  Created by Rizwan Sattar on 01/12/2015.
//  Copyright (c) 2014 Rizwan Sattar. All rights reserved.
//

#import "RootViewController.h"

#import <AppToolkit/AppToolkit.h>

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];

    [[AppToolkit sharedInstance] presentAppReleaseNotesIfNeededFromViewController:self completion:^(BOOL didPresent) {
        NSLog(@"Did present: %d", didPresent);
    }];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskAll;
}

@end
