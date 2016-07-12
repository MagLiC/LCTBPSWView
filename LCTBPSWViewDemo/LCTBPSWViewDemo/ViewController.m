//
//  ViewController.m
//  LCTBPSWViewDemo
//
//  Created by Lichao on 16/7/12.
//  Copyright © 2016年 Lichao. All rights reserved.
//

#import "ViewController.h"
#import "LCTBPSWView.h"

@interface ViewController ()<LC_PSWViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [super didReceiveMemoryWarning];
    LCTBPSWView *view = [[LCTBPSWView alloc]initWithFrame:CGRectMake(50, 50, 300, 50) labelNum:6];
    view.delegate = self;
    [self.view addSubview:view];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

- (void)lc_sendPassword:(NSString *)password
{
    NSLog(@"%@", password);
}

@end
