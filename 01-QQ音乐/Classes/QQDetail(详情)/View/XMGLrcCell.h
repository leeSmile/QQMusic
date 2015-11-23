//
//  XMGLrcCell.h
//  01-QQ音乐
//
//  Created by 王顺子 on 15/11/21.
//  Copyright © 2015年 xiaomage. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XMGLrcCell : UITableViewCell

+ (instancetype)cellWithTableView:(UITableView *)tableView;


@property (nonatomic, assign) float progress;

@property (nonatomic, copy) NSString *lrcText;



@end
