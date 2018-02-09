//
//  ViewController.m
//  WPDemo
//
//  Created by 王鹏 on 2017/11/23.
//  Copyright © 2017年 王鹏. All rights reserved.
//

#import "ViewController.h"
#import "OneViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    OneViewController *vc = [[OneViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
