//
//  QRCodeTool.h
//  QRCodeTool
//
//  Created by LiCheng on 16/6/20.
//  Copyright © 2016年 Li_Cheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface QRCodeTool : NSObject


/**
 *  生成二维码
 *
 *  @param message 二维码信息
 *  @param width   宽
 *  @param height  高
 *
 *  @return 二维码图片
 */
+(UIImage *)createQRCodeWithMessage:(NSString *)message size:(CGFloat)size;

@end
