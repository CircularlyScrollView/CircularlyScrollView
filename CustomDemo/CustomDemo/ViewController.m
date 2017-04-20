//
//  ViewController.m
//  CustomDemo
//
//  Created by zhngyy on 16/6/27.
//  Copyright © 2016年 zhangyy. All rights reserved.
//

#import "ViewController.h"

#import "ZYYWheelView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ZYYWheelView *view = [[ZYYWheelView alloc]initWithFrame:self.view.bounds
imageArray:@[@"http://img3.dwstatic.com/lol/1410/278071752870/278072823052.jpg",
             @"http://up.qqjia.com/z/u/a08/tu24149_5.jpg",
             @"http://imgsrc.baidu.com/forum/w%3D580/sign=6ec23eefac51f3dec3b2b96ca4eff0ec/0a5ea26eddc451da721ffaceb5fd5266d11632b1.jpg",
             @"http://pic2.52pk.com/files/140722/1374776_115130_1_lit.jpg"]
                                              placeholdName:@"1"
                                                   duration:3];
    [view clickImageViewWithIndex:^(NSInteger index) {
        NSLog(@"点击了：%ld",index);
    }];
    view.pageControlTinColor = [UIColor redColor];
    view.currentPageControlTinColor = [UIColor yellowColor];
    [self.view addSubview:view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
