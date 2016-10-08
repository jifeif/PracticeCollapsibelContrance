//
//  ViewController.m
//  PracticeCollapsibelContrance
//
//  Created by 9188iMac on 16/10/8.
//  Copyright © 2016年 9188iMac. All rights reserved.
//

#import "ViewController.h"
#import "UIView+FDCollapsibleConstraints.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *aImageView;
@property (weak, nonatomic) IBOutlet UIButton *aBtn;

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
- (IBAction)clickMethod:(UIButton *)sender {
    self.aBtn.selected = !self.aBtn.selected;
    NSLog(@"%d", sender.selected);
    self.aImageView.fd_collapsed = self.aBtn.selected;
    [self.view layoutSubviews];
}


@end
