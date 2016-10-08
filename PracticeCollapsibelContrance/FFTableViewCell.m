//
//  FFTableViewCell.m
//  PracticeCollapsibelContrance
//
//  Created by 9188iMac on 16/10/8.
//  Copyright © 2016年 9188iMac. All rights reserved.
//

#import "FFTableViewCell.h"
#import "UIView+FDCollapsibleConstraints.h"
@implementation FFTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

-(void)setIndexPath:(NSIndexPath *)indexPath{
    _indexPath = indexPath;
    if (indexPath.row % 3 == 1) {
        self.labelB.fd_collapsed = YES;
    }else if (indexPath.row % 3 == 2) {
        self.labelB.fd_collapsed = self.labelC.fd_collapsed = YES;
    }
}

@end
