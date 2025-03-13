//
//  MKTestViewController.m
//  MKIotCloudManager_Example
//
//  Created by aa on 2025/3/13.
//  Copyright © 2025 lovexiaoxia. All rights reserved.
//

#import "MKTestViewController.h"

#import "MKIoTLoginService.h"

@interface MKTestViewController ()

@end

@implementation MKTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake((self.view.frame.size.width - 100) / 2, (self.view.frame.size.height - 45.f) / 2, 100, 45.f);
    [btn setTitle:@"Login" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(loginBtnPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)loginBtnPressed {
    [[MKIoTLoginService share] loginWithUsername:@"Lora" password:@"123456" isHome:NO sucBlock:^(id returnData) {
        NSLog(@"%@",returnData);
    } failBlock:^(NSError *error) {
        NSLog(@"%@",error);
    }];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
