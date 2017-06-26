//
//  ViewController.m
//  V5LoadingHUD
//
//  Created by chyrain on 2017/6/26.
//  Copyright © 2017年 Chyrain. All rights reserved.
//

#import "ViewController.h"
#import "V5LoadingSuccessHUD.h"
#import "V5LoadingHUD.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"开始加载" style:UIBarButtonItemStylePlain target:self action:@selector(showLoadingAnimation)];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"加载完成" style:UIBarButtonItemStylePlain target:self action:@selector(showSuccessAnimation)];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)showLoadingAnimation{
    
    self.title = @"正在加载...";
    
    //隐藏支付完成动画
    [V5LoadingSuccessHUD hideIn:self.view];
    //显示支付中动画
    [V5LoadingHUD showIn:self.view];
}

-(void)showSuccessAnimation{
    
    self.title = @"加载完成";
    
    //隐藏支付中成动画
    [V5LoadingHUD hideIn:self.view];
    //显示支付完成动画
    [V5LoadingSuccessHUD showIn:self.view];
}

@end
