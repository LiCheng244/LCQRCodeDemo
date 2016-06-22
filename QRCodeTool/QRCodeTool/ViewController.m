//
//  ViewController.m
//  QRCodeTool
//
//  Created by LiCheng on 16/6/20.
//  Copyright © 2016年 Li_Cheng. All rights reserved.
//

#import "ViewController.h"
#import "QRCodeTool.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()<AVCaptureMetadataOutputObjectsDelegate>

@property (nonatomic, strong) AVCaptureSession *session;
@property (nonatomic) AVCaptureSession *captureSession;
@property (nonatomic) AVCaptureVideoPreviewLayer *videoPreviewLayer;
@property (nonatomic) BOOL lastResult;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 生成二维码
- (IBAction)createQRCode:(id)sender {
    
    UIImageView *iamge = [[UIImageView alloc] initWithFrame:(CGRectMake(50, self.view.frame.size.height - 250, 200, 200))];
    
    iamge.image = [QRCodeTool createQRCodeWithMessage:@"~二维码扫描出来的文字~" size:200];
    
    [self.view addSubview:iamge];
    
}

#pragma mark - 扫描二维码
- (IBAction)scanQRCode:(id)sender {
    
    /**
     *  
     
     ```ruby
     source 'https://github.com/CocoaPods/Specs.git'
     platform :ios, '6.0'
     pod 'LBXScan','~> 1.1.1'
     # 获取最新版本,采用下面的方式
     #pod 'LBXScan',git:'https://github.com/MxABC/LBXScan.git'
     ```
     */
}
@end
