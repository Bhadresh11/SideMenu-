//
//  DEMOSecondViewController.m
//  RESideMenuStoryboards
//
//  Created by Roman Efimov on 10/9/13.
//  Copyright (c) 2013 Roman Efimov. All rights reserved.
//

#import "DEMOSecondViewController.h"

@interface DEMOSecondViewController ()

@end

@implementation DEMOSecondViewController

-(void)viewDidLoad
{
    UIBarButtonItem *btnBack = [[UIBarButtonItem alloc]initWithTitle:@"Back" style:UIBarButtonItemStyleDone target:self action:@selector(BackBtn:)];
    self.navigationItem.leftBarButtonItem = btnBack;
}
-(void)BackBtn:(id)sender
{
    NSLog(@"go to Main Vc");
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *initViewController = [storyBoard instantiateInitialViewController];
    [self presentViewController:initViewController animated:YES completion:nil];
}
@end
