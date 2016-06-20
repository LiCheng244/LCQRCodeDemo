//
//  ViewController.m
//  QRCodeTool
//
//  Created by LiCheng on 16/6/20.
//  Copyright © 2016年 Li_Cheng. All rights reserved.
//

#import "ViewController.h"
#import "QRCodeTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 生成二维码
- (IBAction)createQRCode:(id)sender {
    
    UIImageView *iamge = [[UIImageView alloc] initWithFrame:(CGRectMake(100, self.view.frame.size.height - 250, 200, 200))];
    
    iamge.image = [QRCodeTool createQRCodeWithMessage:@"1234" size:200];
    
    [self.view addSubview:iamge];
    
}

#pragma mark - 扫描二维码
- (IBAction)scanQRCode:(id)sender {
    
}
@end
