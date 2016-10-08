//
//  ViewController.m
//  PracticeCollapsibelContrance
//
//  Created by 9188iMac on 16/10/8.
//  Copyright © 2016年 9188iMac. All rights reserved.
//

#import "ViewController.h"
#import "UIView+FDCollapsibleConstraints.h"
#import <LocalAuthentication/LocalAuthentication.h>
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *aImageView;
@property (weak, nonatomic) IBOutlet UIButton *aBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)clickMethod:(UIButton *)sender {
    self.aBtn.selected = !self.aBtn.selected;
    NSLog(@"%d", sender.selected);
    self.aImageView.fd_collapsed = self.aBtn.selected;
    [self.view layoutSubviews];
}
- (IBAction)touchIDMethod:(id)sender {
    LAContext *authentication = [[LAContext alloc] init];
    authentication.localizedFallbackTitle = @"密码验证";
    authentication.localizedCancelTitle = @"不验证";
    NSError *error = nil;
    //是否支持指纹验证
    if ([authentication canEvaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics error:&error]) {
        [authentication evaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics localizedReason:@"entry" reply:^(BOOL success, NSError * _Nullable error) {
            if (success) {
                NSLog(@"指纹解锁成功");
            }else{
                switch (error.code) {
                    case LAErrorAuthenticationFailed:{
                        NSLog(@" 用户未提供有效证书,(3次机会失败 --身份验证失败)");
                        break;
                    }
                    case LAErrorUserCancel:{
                        NSLog(@"用户点击了取消验证按钮");
                        break;
                    }
                    case LAErrorUserFallback:
                    {
                        NSLog(@"用户点击了FallBack按钮");
                        [[NSOperationQueue mainQueue] addOperationWithBlock:^{
                            // 用户选择输入密码，切换主线程处理  不能自动调用密码输入。
                            NSLog(@"≈≈≈≈≈≈≈≈≈≈≈≈");
                        }];
                        break;
                    }
                    case LAErrorSystemCancel:{
                        NSLog(@"有新应用进入前台，验证失败");
                        break;
                    }
                    case LAErrorPasscodeNotSet:{
                        NSLog(@"身份验证无法启动，密码在设备上没有设置");
                        break;
                    }
                    case LAErrorTouchIDNotAvailable:{
                        NSLog(@"验证没有开始，touch id 不可用");
                        break;
                    }
                    case LAErrorTouchIDNotEnrolled:{
                        NSLog(@"验证失败，没有设置指纹密码");
                        break;
                    }
                    case LAErrorTouchIDLockout: {
                        NSLog(@"failed 次数太多，touch id 被锁");
                        break;
                    }
                    case LAErrorAppCancel:{
                        NSLog(@"验证失败，正在验证中");
                        break;
                    }
                    case LAErrorInvalidContext: {
                        NSLog(@"LAContext 无效");
                        break;
                    }
                    default:
                        break;
                }
            }
        }];
    }else{
        NSLog(@"不知指纹解锁， 要用密码输入。。。");
    }
}


@end
