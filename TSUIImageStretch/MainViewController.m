//
//  MainViewController.m
//  TSUIImageStretch
//
//  Created by wangtao on 14-6-21.
//  Copyright (c) 2014年 wangtao. All rights reserved.
//

#import "MainViewController.h"

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    NSBundle *bundle = [NSBundle mainBundle];

    NSLog(@"bundle=%@ identifier=%@", bundle, [bundle bundleIdentifier]);

    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(10.0f, 40.0f, 300.0f, 33.5f)];
    [button setTitle:@"Click ME" forState:UIControlStateNormal];
    UIImage *image = [UIImage imageNamed:@"btn_normal"];
    image = [image resizableImageWithCapInsets:UIEdgeInsetsMake(5, 5, 5, 5)]; // tile
    [button setBackgroundImage:image forState:UIControlStateNormal];
    [self.view addSubview:button];


    UIButton *button1 = [[UIButton alloc] initWithFrame:CGRectMake(10.0f, 90.0f, 300.0f, 33.5f)];
    [button1 setTitle:@"Click ME" forState:UIControlStateNormal];
    UIImage *image1 = [UIImage imageNamed:@"btn_normal"];
    image1 = [image1 resizableImageWithCapInsets:UIEdgeInsetsMake(5, 5, 5, 5) resizingMode:UIImageResizingModeStretch];
    [button1 setBackgroundImage:image1 forState:UIControlStateNormal];
    [self.view addSubview:button1];
}

@end
