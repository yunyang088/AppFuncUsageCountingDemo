//
//  ViewController.m
//  AppFuncUsageCountingDemo
//
//  Created by noc on 16/11/17.
//  Copyright © 2016年 yunyang088. All rights reserved.
//

#import "ViewController.h"

//屏幕物理宽、高
#define APP_SCREEN_WIDTH            [UIScreen mainScreen].bounds.size.width
#define APP_SCREEN_HEIGHT           [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(APP_SCREEN_WIDTH/2-40, APP_SCREEN_HEIGHT/2-20, 80, 40)];
    [btn setTitle:@"FirstFunc" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(m_FirstFunc:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
}

- (void)m_FirstFunc:(UIButton *)btn{
    NSLog(@"m_FirstFunc");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
