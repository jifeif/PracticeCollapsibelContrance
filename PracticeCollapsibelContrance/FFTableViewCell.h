//
//  FFTableViewCell.h
//  PracticeCollapsibelContrance
//
//  Created by 9188iMac on 16/10/8.
//  Copyright © 2016年 9188iMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FFTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *labelA;
@property (weak, nonatomic) IBOutlet UILabel *labelB;
@property (weak, nonatomic) IBOutlet UILabel *labelC;
@property (nonatomic, strong) NSIndexPath *indexPath;

@end
